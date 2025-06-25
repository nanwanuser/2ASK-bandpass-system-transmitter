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

// 监控DAC控制信号时序
integer wr1_falling_edge_time;
integer wr1_rising_edge_time;

always @(negedge dac_wr1_n) begin
    wr1_falling_edge_time = $time;
    $display("Time=%0t: WR1 falling edge (write started)", $time);
end

always @(posedge dac_wr1_n) begin
    wr1_rising_edge_time = $time;
    $display("Time=%0t: WR1 rising edge (write completed), pulse width=%0dns", 
             $time, wr1_rising_edge_time - wr1_falling_edge_time);
end

// 监控CS信号
always @(negedge dac_cs_n) begin
    $display("Time=%0t: CS asserted (chip selected)", $time);
end

always @(posedge dac_cs_n) begin
    $display("Time=%0t: CS deasserted (chip deselected)", $time);
end

// 检查固定控制信号
initial begin
    #200; // 等待复位完成
    
    if (dac_wr2_n !== 1'b0) $display("ERROR: dac_wr2_n should be 0 for single-buffer mode");
    if (dac_xfer_n !== 1'b0) $display("ERROR: dac_xfer_n should be 0 for single-buffer mode");
    if (dac_ile !== 1'b1) $display("ERROR: dac_ile should be 1");
    
    $display("DAC configured in Control Signal Timing mode");
end

// 监控DAC数据变化
reg [7:0] last_dac_data;
integer data_change_count;

initial begin
    last_dac_data = 8'd0;
    data_change_count = 0;
end

always @(dac_data) begin
    if (dac_data !== last_dac_data) begin
        data_change_count = data_change_count + 1;
        $display("Time=%0t: DAC data changed from %h to %h (change #%0d)", 
                 $time, last_dac_data, dac_data, data_change_count);
        last_dac_data = dac_data;
    end
end

// 生成波形文件
initial begin
    $dumpfile("tb_2ask_transmitter.vcd");
    $dumpvars(0, tb_2ask_transmitter);
    
    // 额外监控内部信号
    $dumpvars(1, uut.modulated_signal);
    $dumpvars(1, uut.modulation_enable);
    $dumpvars(1, uut.dds_data);
end

endmodule