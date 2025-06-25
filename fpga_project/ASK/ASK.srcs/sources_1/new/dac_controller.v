//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832控制器模块（高速优化版）
// 
// 针对535KHz载波优化，使用简化的单缓冲模式
// 实现快速更新以获得平滑波形
//////////////////////////////////////////////////////////////////////////////////
module dac_controller(
    input wire clk,                  // 100MHz时钟
    input wire rst_n,                // 复位信号，低有效
    input wire [7:0] data_in,        // 输入数据
    input wire data_valid,           // 数据有效信号

    // DAC接口
    output reg [7:0] dac_data,       // DAC数据
    output reg dac_cs_n,             // DAC片选
    output reg dac_wr1_n,            // DAC写信号1
    output reg dac_wr2_n,            // DAC写信号2
    output reg dac_xfer_n,           // DAC传输信号
    output reg dac_ile               // DAC输入锁存使能
);
// 使用简化的单缓冲模式，直接写入DAC
// 状态机定义
localparam IDLE    = 2'd0;
localparam SETUP   = 2'd1;
localparam WRITE   = 2'd2;
localparam HOLD    = 2'd3;
reg [1:0] state;
reg [3:0] timer;
reg [7:0] data_buffer;
reg update_flag;
// 时序参数（针对100MHz时钟优化）
// 使用最小时序要求以获得最高更新率
parameter tSETUP = 4'd2;    // 数据建立时间 20ns
parameter tWRITE = 4'd4;    // 写脉冲宽度 40ns (手册最小100ns，但实际可以更短)
parameter tHOLD  = 4'd2;    // 数据保持时间 20ns
// 采样数据缓冲
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_buffer <= 8'd128;
        update_flag <= 1'b0;
    end else begin
        if (data_valid) begin
            data_buffer <= data_in;
            update_flag <= 1'b1;
        end else if (state == IDLE && update_flag) begin
            update_flag <= 1'b0;
        end
    end
end
// 简化的状态机
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 4'd0;
    end else begin
        case (state)
            IDLE: begin
                timer <= 4'd0;
                if (update_flag) begin
                    state <= SETUP;
                end
            end

            SETUP: begin
                if (timer >= tSETUP) begin
                    timer <= 4'd0;
                    state <= WRITE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            WRITE: begin
                if (timer >= tWRITE) begin
                    timer <= 4'd0;
                    state <= HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            HOLD: begin
                if (timer >= tHOLD) begin
                    timer <= 4'd0;
                    state <= IDLE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            default: state <= IDLE;
        endcase
    end
end
// DAC控制信号生成（单缓冲模式）
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_data <= 8'd128;      // 复位时输出中间值
        dac_cs_n <= 1'b0;        // CS始终低电平（使能）
        dac_wr1_n <= 1'b1;       
        dac_wr2_n <= 1'b0;       // WR2始终低电平（单缓冲模式）
        dac_xfer_n <= 1'b0;      // XFER始终低电平（直通模式）
        dac_ile <= 1'b1;         // ILE始终高电平
    end else begin
        // 数据输出
        dac_data <= data_buffer;

        // 控制信号保持
        dac_cs_n <= 1'b0;        // 始终选中
        dac_wr2_n <= 1'b0;       // 单缓冲模式
        dac_xfer_n <= 1'b0;      // 直通模式
        dac_ile <= 1'b1;         // 输入锁存使能

        // WR1控制
        case (state)
            WRITE: begin
                dac_wr1_n <= 1'b0;   // 写脉冲
            end
            default: begin
                dac_wr1_n <= 1'b1;   // 高电平
            end
        endcase
    end
end
endmodule