`timescale 1ns / 1ps

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
    // ����10����Ԫ��ʱ�䣬��10ms
    #10_000_000;
    
    // ��������
    $finish;
end

// ��عؼ��źţ���ѡ��
initial begin
    $monitor("Time=%0t: DAC_DATA=%h, CS_N=%b, WR1_N=%b, WR2_N=%b", 
             $time, dac_data, dac_cs_n, dac_wr1_n, dac_wr2_n);
end

// ���ɲ����ļ�����ѡ��
initial begin
    $dumpfile("tb_2ask_transmitter.vcd");
    $dumpvars(0, tb_2ask_transmitter);
end

// ���һЩ�ڲ��źŵļ�أ����ڵ���
initial begin
    // ���DDSԭʼ���ݺ�ת���������
    $monitor("Time=%0t: DDS_signed=%d, DDS_unsigned=%d, Modulated=%d", 
             $time, 
             $signed(uut.dds_data), 
             uut.dds_data_unsigned, 
             uut.modulated_signal);
end

endmodule