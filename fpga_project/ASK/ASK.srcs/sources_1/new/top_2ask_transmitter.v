`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: top_2ask_transmitter
// Description: 2ASK调制器顶层模块
// 
// DDS数据处理说明：
// - DDS输出有符号数据，范围：-128 ~ +127
// - DAC需要无符号数据，范围：0 ~ 255
// - 转换方法：无符号 = 有符号 + 128
// - 无载波时输出DAC中间值：128
//////////////////////////////////////////////////////////////////////////////////

module top_2ask_transmitter(
    input wire clk,                  // 100MHz系统时钟
    input wire rst_n,                // 复位信号，低有效
    
    // DAC接口
    output wire [7:0] dac_data,      // DAC数据
    output wire dac_cs_n,            // DAC片选
    output wire dac_wr1_n,           // DAC写信号1
    output wire dac_wr2_n,           // DAC写信号2
    output wire dac_xfer_n,          // DAC传输信号
    output wire dac_ile              // DAC输入锁存使能
);

// 参数定义
parameter CLK_FREQ = 100_000_000;              // 系统时钟频率 100MHz
parameter SYMBOL_RATE = 100000;                  // 码元速率 1KHz
parameter SYMBOL_PERIOD = CLK_FREQ / SYMBOL_RATE; // 每个码元的时钟周期数

// 内部信号
reg [18:0] rom_addr;
reg rom_en;
wire rom_data;

reg [16:0] symbol_counter;           // 码元计数器
reg symbol_clk_en;                   // 码元时钟使能信号

// FIR相关信号
reg fir_data_valid;
wire fir_data_ready;
reg [7:0] fir_data_in;
wire fir_out_valid;
wire [7:0] fir_data_out;

// DDS相关信号
wire dds_valid;
wire [7:0] dds_data;
wire dds_phase_valid;
wire [31:0] dds_phase;

// 调制相关信号
reg [7:0] modulated_signal;
reg [7:0] fir_data_latched;          // 锁存的FIR输出
reg modulation_enable;               // 调制使能信号
wire [7:0] dds_data_unsigned;        // 无符号的DDS数据

// ROM地址和使能控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rom_addr <= 19'd0;
        rom_en <= 1'b1;
        symbol_counter <= 17'd0;
        symbol_clk_en <= 1'b0;
    end else begin
        // 码元时钟生成
        if (symbol_counter >= SYMBOL_PERIOD - 1) begin
            symbol_counter <= 17'd0;
            symbol_clk_en <= 1'b1;
        end else begin
            symbol_counter <= symbol_counter + 1'b1;
            symbol_clk_en <= 1'b0;
        end
        
        // ROM地址控制
        if (symbol_clk_en) begin
            if (rom_addr < 524287) begin
                rom_addr <= rom_addr + 1'b1;
            end else begin
                rom_addr <= 19'd0;  // 循环读取
            end
        end
    end
end

// FIR输入数据控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        fir_data_valid <= 1'b0;
        fir_data_in <= 8'd0;
    end else begin
        if (symbol_clk_en) begin
            fir_data_valid <= 1'b1;
            // 将1bit扩展为8bit，1->255, 0->0
            fir_data_in <= rom_data ? 8'd255 : 8'd0;
        end else begin
            fir_data_valid <= 1'b0;
        end
    end
end

// FIR输出锁存和调制使能控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        fir_data_latched <= 8'd0;
        modulation_enable <= 1'b0;
    end else begin
        if (fir_out_valid) begin
            fir_data_latched <= fir_data_out;
            // 当FIR输出大于阈值时使能调制
            modulation_enable <= (fir_data_out > 8'd128);
        end
    end
end

// DDS有符号数据转换为无符号数据
// DDS输出范围：-128 ~ +127 (有符号)
// DAC需要范围：0 ~ 255 (无符号)
// 转换方法：直接加128或将最高位取反
assign dds_data_unsigned = dds_data + 8'd128;

// 2ASK键控调制 - 修正版本
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        modulated_signal <= 8'd128;  // DAC中间值
    end else begin
        // 根据调制使能信号决定输出
        if (modulation_enable) begin
            modulated_signal <= dds_data_unsigned;     // 输出载波（已转换为无符号）
        end else begin
            modulated_signal <= 8'd128;               // 输出直流偏置（无载波）
        end
    end
end

// ROM实例化
ROM u_rom (
    .clka(clk),
    .ena(rom_en),
    .addra(rom_addr),
    .douta(rom_data)
);

// FIR滤波器实例化
fir u_fir (
    .aclk(clk),
    .s_axis_data_tvalid(fir_data_valid),
    .s_axis_data_tready(fir_data_ready),
    .s_axis_data_tdata(fir_data_in),
    .m_axis_data_tvalid(fir_out_valid),
    .m_axis_data_tdata(fir_data_out)
);

// DDS实例化
dds u_dds (
    .aclk(clk),
    .m_axis_data_tvalid(dds_valid),
    .m_axis_data_tdata(dds_data),
    .m_axis_phase_tvalid(dds_phase_valid),
    .m_axis_phase_tdata(dds_phase)
);

// DAC控制器实例化
dac_controller u_dac_controller (
    .clk(clk),
    .rst_n(rst_n),
    .data_in(modulated_signal),
    .data_valid(1'b1),              // 始终有效
    .dac_data(dac_data),
    .dac_cs_n(dac_cs_n),
    .dac_wr1_n(dac_wr1_n),
    .dac_wr2_n(dac_wr2_n),
    .dac_xfer_n(dac_xfer_n),
    .dac_ile(dac_ile)
);

endmodule