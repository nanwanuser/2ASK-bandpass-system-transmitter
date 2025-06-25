`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: tb_2ask_transmitter
// Description: 2ASK�����������ļ�
// 
// �������ݣ�
// 1. ��֤��Ԫ����Ϊ1KHz
// 2. ��֤DAC�������
// 3. ��عؼ��ź�
//////////////////////////////////////////////////////////////////////////////////

module tb_2ask_transmitter;

// ʱ�Ӻ͸�λ
reg clk;
reg rst_n;

// DAC�ӿ��ź�
wire [7:0] dac_data;
wire dac_cs_n;
wire dac_wr1_n;
wire dac_wr2_n;
wire dac_xfer_n;
wire dac_ile;

// ��������
parameter CLK_PERIOD = 10;  // 100MHzʱ������Ϊ10ns

// ʵ��������ģ��
top_2ask_transmitter uut (
    .clk(clk),
    .rst_n(rst_n),
    .dac_data(dac_data),
    .dac_cs_n(dac_cs_n),
    .dac_wr1_n(dac_wr1_n),
    .dac_wr2_n(dac_wr2_n),
    .dac_xfer_n(dac_xfer_n),
    .dac_ile(dac_ile)
);

// ʱ������
initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

// ��λ�ͷ������
initial begin
    // ��ʼ��
    rst_n = 1'b0;
    
    // �ȴ�100ns���ͷŸ�λ
    #100;
    rst_n = 1'b1;
    
    // ���з���
    // ��Ԫ����Ϊ1KHz��ÿ����Ԫ1ms
    // ����20����Ԫ��ʱ�䣬��20ms
    #20_000_000;
    
    // ��������
    $display("Simulation completed successfully!");
    $finish;
end

// ��عؼ��ź�
initial begin
    $monitor("Time=%0t: DAC_DATA=%h, CS_N=%b, WR1_N=%b, WR2_N=%b, XFER_N=%b, ILE=%b", 
             $time, dac_data, dac_cs_n, dac_wr1_n, dac_wr2_n, dac_xfer_n, dac_ile);
end

// ���ɲ����ļ�
initial begin
    $dumpfile("tb_2ask_transmitter.vcd");
    $dumpvars(0, tb_2ask_transmitter);
end

// ���DDS���
initial begin
    @(posedge rst_n);
    #1000;
    
    $display("\n=== Monitoring DDS Output ===");
    repeat(100) begin
        @(posedge clk);
        if (uut.dds_valid) begin
            $display("Time=%0t: DDS_signed=%d, DDS_unsigned=%d, Modulated=%d", 
                     $time, 
                     $signed(uut.dds_data), 
                     uut.dds_data_unsigned, 
                     uut.modulated_signal);
        end
    end
end

// ���㲢��ʾ��Ԫ����
reg symbol_clk_en_prev;
real symbol_period_time;
real prev_symbol_time;

initial begin
    symbol_clk_en_prev = 0;
    prev_symbol_time = 0;
    
    @(posedge rst_n);
    
    forever begin
        @(posedge clk);
        if (uut.symbol_clk_en && !symbol_clk_en_prev) begin
            if (prev_symbol_time != 0) begin
                symbol_period_time = $time - prev_symbol_time;
                $display("Time=%0t: Symbol period = %0.3f us, Rate = %0.3f KHz", 
                         $time, 
                         symbol_period_time/1000.0, 
                         1000000.0/symbol_period_time);
            end
            prev_symbol_time = $time;
        end
        symbol_clk_en_prev = uut.symbol_clk_en;
    end
end

endmodule