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

    // ����10ms�۲켸����������Ԫ
    #10_000_000;

    $display("Simulation completed!");
    $finish;
end
// ���DAC����
always @(negedge dac_cs_n) begin
    $display("Time=%0t: DAC transaction started", $time);
end
always @(posedge dac_cs_n) begin
    $display("Time=%0t: DAC transaction completed, Data=%h", $time, dac_data);
end
// ���ɲ����ļ�
initial begin
    $dumpfile("tb_2ask_transmitter.vcd");
    $dumpvars(0, tb_2ask_transmitter);
end
endmodule