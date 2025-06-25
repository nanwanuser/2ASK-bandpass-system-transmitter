//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832控制器模块（优化版）
// 
// 针对535KHz载波优化，确保满足DAC0832时序要求
// 使用流水线设计实现平滑波形输出
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

// 状态机定义
localparam IDLE    = 3'd0;
localparam SETUP   = 3'd1;
localparam WRITE   = 3'd2;
localparam HOLD    = 3'd3;
localparam WAIT    = 3'd4;  // 新增等待状态，确保时序满足

reg [2:0] state;
reg [3:0] timer;
reg [7:0] data_buffer;
reg [7:0] data_latch;       // 额外的数据锁存器，用于流水线操作
reg update_pending;

// 时序参数（针对100MHz时钟，满足DAC0832规格）
// DAC0832典型时序要求：
// - 数据建立时间(tDS): 100ns min
// - 写脉冲宽度(tWR): 100ns min  
// - 数据保持时间(tDH): 10ns min
parameter tSETUP = 4'd10;    // 数据建立时间 100ns (10个时钟周期)
parameter tWRITE = 4'd10;    // 写脉冲宽度 100ns (10个时钟周期)
parameter tHOLD  = 4'd2;     // 数据保持时间 20ns (2个时钟周期)
parameter tWAIT  = 4'd5;     // 等待时间 50ns (5个时钟周期)

// 双缓冲设计，确保数据更新的连续性
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_buffer <= 8'd128;  // 中间值
        data_latch <= 8'd128;
        update_pending <= 1'b0;
    end else begin
        // 新数据到来时，存入缓冲区
        if (data_valid && !update_pending) begin
            data_buffer <= data_in;
            update_pending <= 1'b1;
        end else if (state == SETUP && update_pending) begin
            // 在SETUP状态将数据转移到锁存器
            data_latch <= data_buffer;
            update_pending <= 1'b0;
        end else if (data_valid && update_pending && state != IDLE) begin
            // 如果正在处理中又有新数据，更新缓冲区
            data_buffer <= data_in;
        end
    end
end

// 优化的状态机
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 4'd0;
    end else begin
        case (state)
            IDLE: begin
                timer <= 4'd0;
                if (update_pending || data_valid) begin
                    state <= SETUP;
                end
            end

            SETUP: begin
                if (timer >= tSETUP - 1) begin
                    timer <= 4'd0;
                    state <= WRITE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            WRITE: begin
                if (timer >= tWRITE - 1) begin
                    timer <= 4'd0;
                    state <= HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            HOLD: begin
                if (timer >= tHOLD - 1) begin
                    timer <= 4'd0;
                    state <= WAIT;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            WAIT: begin
                if (timer >= tWAIT - 1) begin
                    timer <= 4'd0;
                    // 如果有新数据等待，立即开始下一个周期
                    if (update_pending || data_valid) begin
                        state <= SETUP;
                    end else begin
                        state <= IDLE;
                    end
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            default: state <= IDLE;
        endcase
    end
end

// DAC控制信号生成（优化时序）
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_data <= 8'd128;      // 复位时输出中间值
        dac_cs_n <= 1'b0;        // CS始终低电平（使能）
        dac_wr1_n <= 1'b1;       
        dac_wr2_n <= 1'b0;       // WR2始终低电平（单缓冲模式）
        dac_xfer_n <= 1'b0;      // XFER始终低电平（直通模式）
        dac_ile <= 1'b1;         // ILE始终高电平
    end else begin
        // 固定的控制信号
        dac_cs_n <= 1'b0;        // 始终选中
        dac_wr2_n <= 1'b0;       // 单缓冲模式
        dac_xfer_n <= 1'b0;      // 直通模式
        dac_ile <= 1'b1;         // 输入锁存使能

        // 数据输出 - 在SETUP状态开始时更新
        if (state == SETUP && timer == 4'd0) begin
            dac_data <= data_latch;
        end

        // WR1控制 - 严格按照时序要求
        case (state)
            WRITE: begin
                dac_wr1_n <= 1'b0;   // 写脉冲低电平
            end
            default: begin
                dac_wr1_n <= 1'b1;   // 其他状态保持高电平
            end
        endcase
    end
end

endmodule