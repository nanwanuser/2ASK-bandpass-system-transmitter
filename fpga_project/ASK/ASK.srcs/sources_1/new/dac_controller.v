////////////////////////////////////////////////////////////////////////////////////
//// Module Name: dac_controller
//// Description: DAC0832控制器 - 单缓冲模式（优化版本）
//// 
//// 单缓冲模式配置：
//// - CS, WR2, XFER始终接地（低电平）
//// - ILE始终接高电平
//// - 仅通过WR1控制数据写入
//// 
//// 时序要求：
//// - WR1脉冲宽度最小900ns（90个时钟周期@100MHz）
//// - 数据保持时间最小50ns（5个时钟周期）
////////////////////////////////////////////////////////////////////////////////////

//module dac_controller(
//    input wire clk,                  // 100MHz时钟
//    input wire rst_n,                // 复位信号，低有效
//    input wire [7:0] data_in,        // 输入数据
//    input wire data_valid,           // 数据有效信号

//    // DAC接口
//    output reg [7:0] dac_data,       // DAC数据
//    output wire dac_cs_n,            // DAC片选（单缓冲模式下固定为0）
//    output reg dac_wr1_n,            // DAC写信号1
//    output wire dac_wr2_n,           // DAC写信号2（单缓冲模式下固定为0）
//    output wire dac_xfer_n,          // DAC传输信号（单缓冲模式下固定为0）
//    output wire dac_ile              // DAC输入锁存使能（单缓冲模式下固定为1）
//);

//// 单缓冲模式固定信号配置
//assign dac_cs_n = 1'b0;    // CS始终低电平
//assign dac_wr2_n = 1'b0;   // WR2始终低电平
//assign dac_xfer_n = 1'b0;  // XFER始终低电平
//assign dac_ile = 1'b1;     // ILE始终高电平

//// 状态机定义
//localparam IDLE        = 2'd0;
//localparam DATA_SETUP  = 2'd1;
//localparam WR_PULSE    = 2'd2;
//localparam DATA_HOLD   = 2'd3;

//reg [1:0] state;
//reg [6:0] timer;         // 7位计时器，支持最大127个周期
//reg [7:0] data_latch;

//// 时序参数（基于100MHz时钟）
//// 为确保可靠性，使用略大于最小值的参数
//parameter tDATA_SETUP = 7'd10;   // 数据建立时间 100ns
//parameter tWR_PULSE  = 7'd100;    // WR脉冲宽度 950ns (>900ns)
//parameter tDATA_HOLD = 7'd10;    // 数据保持时间 100ns (>50ns)

//// 状态机和DAC控制
//always @(posedge clk or negedge rst_n) begin
//    if (!rst_n) begin
//        state <= IDLE;
//        timer <= 7'd0;
//        dac_data <= 8'd128;      // 复位时输出中间值
//        dac_wr1_n <= 1'b1;       // WR1默认高电平
//        data_latch <= 8'd128;
//    end else begin
//        case (state)
//            IDLE: begin
//                timer <= 7'd0;
//                dac_wr1_n <= 1'b1;  // 确保WR1为高
                
//                if (data_valid) begin
//                    data_latch <= data_in;
//                    state <= DATA_SETUP;
//                end
//            end
            
//            DATA_SETUP: begin
//                // 输出数据，等待建立时间
//                dac_data <= data_latch;
                
//                if (timer >= tDATA_SETUP - 1) begin
//                    timer <= 7'd0;
//                    state <= WR_PULSE;
//                end else begin
//                    timer <= timer + 1'b1;
//                end
//            end
            
//            WR_PULSE: begin
//                // WR1拉低，产生写脉冲
//                dac_wr1_n <= 1'b0;
                
//                if (timer >= tWR_PULSE - 1) begin
//                    timer <= 7'd0;
//                    state <= DATA_HOLD;
//                end else begin
//                    timer <= timer + 1'b1;
//                end
//            end
            
//            DATA_HOLD: begin
//                // WR1恢复高电平，保持数据
//                dac_wr1_n <= 1'b1;
                
//                if (timer >= tDATA_HOLD - 1) begin
//                    timer <= 7'd0;
//                    state <= IDLE;
//                end else begin
//                    timer <= timer + 1'b1;
//                end
//            end
            
//            default: state <= IDLE;
//        endcase
//    end
//end

//endmodule