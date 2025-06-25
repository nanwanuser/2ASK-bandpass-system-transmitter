`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: top_2ask_transmitter
// Description: 2ASK����������ģ�飨�޸İ棩
// 
// ��Ҫ�޸ģ�
// 1. ��Ԫ���ʸ�Ϊ1KHz
// 2. FIR�����Ϊ32λFull Precisionģʽ
// 3. ֱ��ʹ�ü��ط�ʽ����ʹ�ó˷���
// 4. �Ż���ʱ���߼�
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
parameter CLK_FREQ = 100_000_000;                 // ϵͳʱ��Ƶ�� 100MHz
//parameter SYMBOL_RATE = 1_000;                    // ��Ԫ���� 1KHz
parameter SYMBOL_RATE = 100_000;                    // ��������Ԫ���� 100KHz
parameter SYMBOL_PERIOD = CLK_FREQ / SYMBOL_RATE; // ÿ����Ԫ��ʱ�������� = 100,000

// �ڲ��ź�
reg [18:0] rom_addr;
reg rom_en;
wire rom_data;

reg [16:0] symbol_counter;           // ��Ԫ������
reg symbol_clk_en;                   // ��Ԫʱ��ʹ���ź�
reg symbol_clk_en_d1;                // �ӳ�һ�ĵ���Ԫʱ��ʹ���ź�

// FIR����ź�
reg fir_data_valid;
wire fir_data_ready;
reg [7:0] fir_data_in;
wire fir_out_valid;
wire [31:0] fir_data_out;           // �޸�Ϊ32λ��Full Precision���

// DDS����ź�
wire dds_valid;
wire [7:0] dds_data;
wire dds_phase_valid;
wire [31:0] dds_phase;

// ��������ź�
reg [7:0] modulated_signal;
reg [7:0] fir_data_processed;        // ������FIR����
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
            fir_data_valid <= 1'b1;
        end
    end
end

// FIR�������͵���ʹ�ܿ���
// ��32λFIR����ض�Ϊ8λ��ȡ��8λ
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        fir_data_processed <= 8'd0;
        modulation_enable <= 1'b0;
    end else begin
        if (fir_out_valid) begin
            // Full Precisionģʽ�£�ȡ���8λ
            // ����FIR���ΪQ1.31��ʽ��ȡ[30:23]λ��Ϊ8λ�޷�����
            fir_data_processed <= fir_data_out[30:23];
            // ��FIR���������ֵʱʹ�ܵ���
            modulation_enable <= (fir_data_out[30:23] > 8'd128);
        end
    end
end

// DDS�з�������ת��Ϊ�޷�������
// DDS�����Χ��-128 ~ +127 (�з���)
// DAC��Ҫ��Χ��0 ~ 255 (�޷���)
assign dds_data_unsigned = dds_data + 8'd128;

// 2ASK���ص���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        modulated_signal <= 8'd128;  // DAC�м�ֵ
    end else begin
        // ���ݵ���ʹ���źž������
        if (modulation_enable) begin
            modulated_signal <= dds_data_unsigned;     // ����ز�
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

// FIR�˲���ʵ�������޸ĺ�Ľӿڣ�
fir u_fir (
    .aclk(clk),
    .s_axis_data_tvalid(fir_data_valid),
    .s_axis_data_tready(fir_data_ready),
    .s_axis_data_tdata(fir_data_in),
    .m_axis_data_tvalid(fir_out_valid),
    .m_axis_data_tdata(fir_data_out)         // 32λ���
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