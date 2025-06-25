`timescale 1ns / 1ps
module tb_2ask_transmitter;
// 时钟和复位
reg clk;
reg rst_n;
// DAC接口信号
wire [7:0] dac_data;
wire dac_cs_n;
wire dac_wr1_n;
wire dac_wr2_n;
wire dac_xfer_n;
wire dac_ile;
// 参数定义
parameter CLK_PERIOD = 10;  // 100MHz时钟周期为10ns
// 实例化被测模块
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
// 时钟生成
initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end
// 复位和仿真控制
initial begin
    // 初始化
    rst_n = 1'b0;

    // 等待100ns后释放复位
    #100;
    rst_n = 1'b1;

    // 运行10ms观察几个完整的码元
    #10_000_000;

    $display("Simulation completed!");
    $finish;
end
// 监控DAC操作
always @(negedge dac_cs_n) begin
    $display("Time=%0t: DAC transaction started", $time);
end
always @(posedge dac_cs_n) begin
    $display("Time=%0t: DAC transaction completed, Data=%h", $time, dac_data);
end
// 生成波形文件
initial begin
    $dumpfile("tb_2ask_transmitter.vcd");
    $dumpvars(0, tb_2ask_transmitter);
end
endmodule