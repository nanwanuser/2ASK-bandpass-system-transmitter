`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: tb_2ask_transmitter
// Description: 2ASK调制器测试文件
// 
// 测试内容：
// 1. 验证码元速率为1KHz
// 2. 验证DAC输出波形
// 3. 监控关键信号
//////////////////////////////////////////////////////////////////////////////////

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
    
    // 运行仿真
    // 码元速率为1KHz，每个码元1ms
    // 运行20个码元的时间，即20ms
    #20_000_000;
    
    // 结束仿真
    $display("Simulation completed successfully!");
    $finish;
end

// 监控关键信号
initial begin
    $monitor("Time=%0t: DAC_DATA=%h, CS_N=%b, WR1_N=%b, WR2_N=%b, XFER_N=%b, ILE=%b", 
             $time, dac_data, dac_cs_n, dac_wr1_n, dac_wr2_n, dac_xfer_n, dac_ile);
end

// 生成波形文件
initial begin
    $dumpfile("tb_2ask_transmitter.vcd");
    $dumpvars(0, tb_2ask_transmitter);
end

// 监控DDS输出
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

// 计算并显示码元速率
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