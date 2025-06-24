`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: top_2ask_transmitter
// Description: 2ASK����������ģ��
// 
// DDS���ݴ���˵����
// - DDS����з������ݣ���Χ��-128 ~ +127
// - DAC��Ҫ�޷������ݣ���Χ��0 ~ 255
// - ת���������޷��� = �з��� + 128
// - ���ز�ʱ���DAC�м�ֵ��128
//////////////////////////////////////////////////////////////////////////////////

module top_2ask_transmitter(
    input wire clk,                  // 100MHzϵͳʱ��
    input wire rst_n,                // ��λ�źţ�����Ч
    
    // DAC�ӿ�
    output wire [7:0] dac_data,      // DAC����
    output wire dac_cs_n,            // DACƬѡ
    output wire dac_wr1_n,           // DACд�ź�1
    output wire dac_wr2_n,           // DACд�ź�2
    output wire dac_xfer_n,          // DAC�����ź�
    output wire dac_ile              // DAC��������ʹ��
);

// ��������
parameter CLK_FREQ = 100_000_000;              // ϵͳʱ��Ƶ�� 100MHz
parameter SYMBOL_RATE = 100000;                  // ��Ԫ���� 1KHz
parameter SYMBOL_PERIOD = CLK_FREQ / SYMBOL_RATE; // ÿ����Ԫ��ʱ��������

// �ڲ��ź�
reg [18:0] rom_addr;
reg rom_en;
wire rom_data;

reg [16:0] symbol_counter;           // ��Ԫ������
reg symbol_clk_en;                   // ��Ԫʱ��ʹ���ź�

// FIR����ź�
reg fir_data_valid;
wire fir_data_ready;
reg [7:0] fir_data_in;
wire fir_out_valid;
wire [7:0] fir_data_out;

// DDS����ź�
wire dds_valid;
wire [7:0] dds_data;
wire dds_phase_valid;
wire [31:0] dds_phase;

// ��������ź�
reg [7:0] modulated_signal;
reg [7:0] fir_data_latched;          // �����FIR���
reg modulation_enable;               // ����ʹ���ź�
wire [7:0] dds_data_unsigned;        // �޷��ŵ�DDS����

// ROM��ַ��ʹ�ܿ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rom_addr <= 19'd0;
        rom_en <= 1'b1;
        symbol_counter <= 17'd0;
        symbol_clk_en <= 1'b0;
    end else begin
        // ��Ԫʱ������
        if (symbol_counter >= SYMBOL_PERIOD - 1) begin
            symbol_counter <= 17'd0;
            symbol_clk_en <= 1'b1;
        end else begin
            symbol_counter <= symbol_counter + 1'b1;
            symbol_clk_en <= 1'b0;
        end
        
        // ROM��ַ����
        if (symbol_clk_en) begin
            if (rom_addr < 524287) begin
                rom_addr <= rom_addr + 1'b1;
            end else begin
                rom_addr <= 19'd0;  // ѭ����ȡ
            end
        end
    end
end

// FIR�������ݿ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        fir_data_valid <= 1'b0;
        fir_data_in <= 8'd0;
    end else begin
        if (symbol_clk_en) begin
            fir_data_valid <= 1'b1;
            // ��1bit��չΪ8bit��1->255, 0->0
            fir_data_in <= rom_data ? 8'd255 : 8'd0;
        end else begin
            fir_data_valid <= 1'b0;
        end
    end
end

// FIR�������͵���ʹ�ܿ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        fir_data_latched <= 8'd0;
        modulation_enable <= 1'b0;
    end else begin
        if (fir_out_valid) begin
            fir_data_latched <= fir_data_out;
            // ��FIR���������ֵʱʹ�ܵ���
            modulation_enable <= (fir_data_out > 8'd128);
        end
    end
end

// DDS�з�������ת��Ϊ�޷�������
// DDS�����Χ��-128 ~ +127 (�з���)
// DAC��Ҫ��Χ��0 ~ 255 (�޷���)
// ת��������ֱ�Ӽ�128�����λȡ��
assign dds_data_unsigned = dds_data + 8'd128;

// 2ASK���ص��� - �����汾
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        modulated_signal <= 8'd128;  // DAC�м�ֵ
    end else begin
        // ���ݵ���ʹ���źž������
        if (modulation_enable) begin
            modulated_signal <= dds_data_unsigned;     // ����ز�����ת��Ϊ�޷��ţ�
        end else begin
            modulated_signal <= 8'd128;               // ���ֱ��ƫ�ã����ز���
        end
    end
end

// ROMʵ����
ROM u_rom (
    .clka(clk),
    .ena(rom_en),
    .addra(rom_addr),
    .douta(rom_data)
);

// FIR�˲���ʵ����
fir u_fir (
    .aclk(clk),
    .s_axis_data_tvalid(fir_data_valid),
    .s_axis_data_tready(fir_data_ready),
    .s_axis_data_tdata(fir_data_in),
    .m_axis_data_tvalid(fir_out_valid),
    .m_axis_data_tdata(fir_data_out)
);

// DDSʵ����
dds u_dds (
    .aclk(clk),
    .m_axis_data_tvalid(dds_valid),
    .m_axis_data_tdata(dds_data),
    .m_axis_phase_tvalid(dds_phase_valid),
    .m_axis_phase_tdata(dds_phase)
);

// DAC������ʵ����
dac_controller u_dac_controller (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(modulated_signal),
    .data_valid(1'b1),              // ʼ����Ч
    .dac_data(dac_data),
    .dac_cs_n(dac_cs_n),
    .dac_wr1_n(dac_wr1_n),
    .dac_wr2_n(dac_wr2_n),
    .dac_xfer_n(dac_xfer_n),
    .dac_ile(dac_ile)
);

endmodule