//////////////////////////////////////////////////////////////////////////////////
// Module Name: top_2ask_transmitter
// Description: 2ASK调制器顶层模块（AD9767高速DAC版本 - 20MHz采样率）
// 
// 主要特性：
// 1. 使用AD9767 14位125MSPS高速DAC
// 2. 载波频率1MHz，采样率20MHz（每周期20个采样点）
// 3. 电路板上CLK和WRT连接在一起，简化了时序控制
// 4. MODE和SLEEP由扩展板电路控制
//////////////////////////////////////////////////////////////////////////////////
module top_2ask_transmitter(
    input wire clk,                  // 100MHz系统时钟
    input wire rst_n,                // 复位信号，低有效
    
    // AD9767 DAC接口 - 使用扩展板引脚
    output reg [12:0] p2_db,         // DAC数据总线（14位）
    output reg p2_clk_wrt            // DAC时钟和写信号（连在一起）
);

// 参数定义
parameter CLK_FREQ = 100_000_000;                 // 系统时钟频率 100MHz
parameter SYMBOL_RATE = 1_000;                    // 码元速率 1KHz
//parameter SYMBOL_RATE = 100_000;                    // 仿真码元速率 100KHz
parameter SYMBOL_PERIOD = CLK_FREQ / SYMBOL_RATE; // 每个码元的时钟周期数

// 内部信号
reg [18:0] rom_addr;
wire rom_data;
reg [19:0] symbol_counter;           // 码元计数器
reg symbol_clk_en;                   // 码元时钟使能信号

// FIR相关信号
reg fir_data_valid;
reg [7:0] fir_data_in;
wire fir_out_valid;
wire [31:0] fir_data_out;

// DDS信号
wire [12:0] dds_data;

// 调制相关信号
reg [12:0] modulated_signal;
reg modulation_enable;
wire [12:0] dds_data_unsigned;

// DAC时钟分频相关信号（100MHz -> 20MHz，5分频）
reg [5:0] dac_clk_counter;          // 分频计数器
reg dac_update_en;                  // DAC更新使能

// ROM地址和使能控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        rom_addr <= 19'd0;
        symbol_counter <= 20'd0;
        symbol_clk_en <= 1'b0;
    end else begin
        // 码元时钟生成
        if (symbol_counter >= SYMBOL_PERIOD - 1) begin
            symbol_counter <= 20'd0;
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
        fir_data_valid <= 1'b1;
        // 将1bit扩展为8bit，1->255, 0->0
        fir_data_in <= rom_data ? 8'd255 : 8'd0;
    end
end

// FIR输出处理和调制使能控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        modulation_enable <= 1'b0;
    end else begin
        if (fir_out_valid) begin
            // 使用更合理的阈值判断
            modulation_enable <= (fir_data_out[31:24] > 8'd128);
        end
    end
end

// DDS有符号数据转换为无符号数据（14位）
assign dds_data_unsigned = dds_data + 13'd4096;

// 2ASK键控调制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        modulated_signal <= 13'd4096;  // DAC中间值
    end else begin
        // 根据调制使能信号决定输出
        if (modulation_enable) begin
            modulated_signal <= dds_data_unsigned;     // 输出载波
        end else begin
            modulated_signal <= 13'd4096;              // 输出中间电平（无载波）
        end
    end
end

// DAC时钟分频器（100MHz -> 20MHz）
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_clk_counter <= 6'd0;
        dac_update_en <= 1'b0;
        p2_clk_wrt <= 1'b0;
    end else begin
        if (dac_clk_counter >= 6'd1) begin
            dac_clk_counter <= 6'd0;
            dac_update_en <= 1'b1;
            p2_clk_wrt <= ~p2_clk_wrt;  // 每5个时钟周期翻转一次，产生50MHz时钟
        end else begin
            dac_clk_counter <= dac_clk_counter + 1'b1;
            dac_update_en <= 1'b0;
        end
    end
end

// DAC数据输出 - 在20MHz速率下更新
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        p2_db <= 13'd4096;
    end else begin
        if (dac_update_en) begin
            // 数据在使能信号有效时更新
            p2_db <= modulated_signal;
        end
    end
end

// ROM实例化
ROM u_rom (
    .clka(clk),
    .addra(rom_addr),
    .douta(rom_data)
);

// FIR滤波器实例化
fir u_fir (
    .aclk(clk),
    .s_axis_data_tvalid(fir_data_valid),
    .s_axis_data_tdata(fir_data_in),
    .m_axis_data_tvalid(fir_out_valid),
    .m_axis_data_tdata(fir_data_out)
);

// DDS实例化 - 生成1MHz载波
dds u_dds (
    .aclk(clk),
    .m_axis_data_tdata(dds_data)
);

endmodule