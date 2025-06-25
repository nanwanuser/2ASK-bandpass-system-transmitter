//////////////////////////////////////////////////////////////////////////////////
// Module Name: tb_2ask_transmitter
// Description: 测试平台
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_2ask_transmitter;
// 时钟和复位
reg clk;
reg rst_n;

// DAC接口信号
wire [13:0] p2_db;
wire p2_clk_wrt;

// 参数定义
parameter CLK_PERIOD = 10;  // 100MHz时钟周期为10ns

// 实例化被测模块
top_2ask_transmitter uut (
    .clk(clk),
    .rst_n(rst_n),
    .p2_db(p2_db),
    .p2_clk_wrt(p2_clk_wrt)
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

// 监控DAC时钟频率
integer clk_edge_count;
integer start_time;
always @(posedge p2_clk_wrt) begin
    if (clk_edge_count == 0) begin
        start_time = $time;
    end
    clk_edge_count = clk_edge_count + 1;
    if (clk_edge_count == 10000) begin  // 增加计数以提高精度
        $display("DAC clock frequency: %f MHz", 
                 10000.0 * 1000.0 / ($time - start_time));
        clk_edge_count = 0;
    end
end

initial begin
    clk_edge_count = 0;
end

// 监控DAC数据变化
reg [13:0] last_dac_data;
integer data_change_count;
initial begin
    last_dac_data = 14'd0;
    data_change_count = 0;
end

always @(p2_db) begin
    if (p2_db !== last_dac_data) begin
        data_change_count = data_change_count + 1;
        if (data_change_count % 10000 == 0) begin  // 每10000次变化打印一次（100MHz下减少打印频率）
            $display("Time=%0t: DAC data=%h (change #%0d)", 
                     $time, p2_db, data_change_count);
        end
        last_dac_data = p2_db;
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
    $dumpvars(1, uut.dds_data_unsigned);
end
endmodule