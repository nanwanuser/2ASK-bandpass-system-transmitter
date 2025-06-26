//////////////////////////////////////////////////////////////////////////////////
// Module Name: top_2ask_transmitter
// Description: 2ASK����������ģ�飨AD9767����DAC�汾 - 20MHz�����ʣ�
// 
// ��Ҫ���ԣ�
// 1. ʹ��AD9767 14λ125MSPS����DAC
// 2. �ز�Ƶ��1MHz��������20MHz��ÿ����20�������㣩
// 3. ��·����CLK��WRT������һ�𣬼���ʱ�����
// 4. MODE��SLEEP����չ���·����
//////////////////////////////////////////////////////////////////////////////////
module top_2ask_transmitter(
    input wire clk,                  // 100MHzϵͳʱ��
    input wire rst_n,                // ��λ�źţ�����Ч
    
    // AD9767 DAC�ӿ� - ʹ����չ������
    output reg [12:0] p2_db,         // DAC�������ߣ�14λ��
    output reg p2_clk_wrt            // DACʱ�Ӻ�д�źţ�����һ��
);

// ��������
parameter CLK_FREQ = 100_000_000;                 // ϵͳʱ��Ƶ�� 100MHz
parameter SYMBOL_RATE = 1_000;                    // ��Ԫ���� 1KHz
//parameter SYMBOL_RATE = 100_000;                    // ������Ԫ���� 100KHz
parameter SYMBOL_PERIOD = CLK_FREQ / SYMBOL_RATE; // ÿ����Ԫ��ʱ��������

// �ڲ��ź�
reg [18:0] rom_addr;
wire rom_data;
reg [19:0] symbol_counter;           // ��Ԫ������
reg symbol_clk_en;                   // ��Ԫʱ��ʹ���ź�

// FIR����ź�
reg fir_data_valid;
reg [7:0] fir_data_in;
wire fir_out_valid;
wire [31:0] fir_data_out;

// DDS�ź�
wire [12:0] dds_data;

// ��������ź�
reg [12:0] modulated_signal;
reg modulation_enable;
wire [12:0] dds_data_unsigned;

// DACʱ�ӷ�Ƶ����źţ�100MHz -> 20MHz��5��Ƶ��
reg [5:0] dac_clk_counter;          // ��Ƶ������
reg dac_update_en;                  // DAC����ʹ��

// ROM��ַ��ʹ�ܿ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rom_addr <= 19'd0;
        symbol_counter <= 20'd0;
        symbol_clk_en <= 1'b0;
    end else begin
        // ��Ԫʱ������
        if (symbol_counter >= SYMBOL_PERIOD - 1) begin
            symbol_counter <= 20'd0;
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
        fir_data_valid <= 1'b1;
        // ��1bit��չΪ8bit��1->255, 0->0
        fir_data_in <= rom_data ? 8'd255 : 8'd0;
    end
end

// FIR�������͵���ʹ�ܿ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        modulation_enable <= 1'b0;
    end else begin
        if (fir_out_valid) begin
            // ʹ�ø��������ֵ�ж�
            modulation_enable <= (fir_data_out[31:24] > 8'd128);
        end
    end
end

// DDS�з�������ת��Ϊ�޷������ݣ�14λ��
assign dds_data_unsigned = dds_data + 13'd4096;

// 2ASK���ص���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        modulated_signal <= 13'd4096;  // DAC�м�ֵ
    end else begin
        // ���ݵ���ʹ���źž������
        if (modulation_enable) begin
            modulated_signal <= dds_data_unsigned;     // ����ز�
        end else begin
            modulated_signal <= 13'd4096;              // ����м��ƽ�����ز���
        end
    end
end

// DACʱ�ӷ�Ƶ����100MHz -> 20MHz��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_clk_counter <= 6'd0;
        dac_update_en <= 1'b0;
        p2_clk_wrt <= 1'b0;
    end else begin
        if (dac_clk_counter >= 6'd1) begin
            dac_clk_counter <= 6'd0;
            dac_update_en <= 1'b1;
            p2_clk_wrt <= ~p2_clk_wrt;  // ÿ5��ʱ�����ڷ�תһ�Σ�����50MHzʱ��
        end else begin
            dac_clk_counter <= dac_clk_counter + 1'b1;
            dac_update_en <= 1'b0;
        end
    end
end

// DAC������� - ��20MHz�����¸���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        p2_db <= 13'd4096;
    end else begin
        if (dac_update_en) begin
            // ������ʹ���ź���Чʱ����
            p2_db <= modulated_signal;
        end
    end
end

// ROMʵ����
ROM u_rom (
    .clka(clk),
    .addra(rom_addr),
    .douta(rom_data)
);

// FIR�˲���ʵ����
fir u_fir (
    .aclk(clk),
    .s_axis_data_tvalid(fir_data_valid),
    .s_axis_data_tdata(fir_data_in),
    .m_axis_data_tvalid(fir_out_valid),
    .m_axis_data_tdata(fir_data_out)
);

// DDSʵ���� - ����1MHz�ز�
dds u_dds (
    .aclk(clk),
    .m_axis_data_tdata(dds_data)
);

endmodule