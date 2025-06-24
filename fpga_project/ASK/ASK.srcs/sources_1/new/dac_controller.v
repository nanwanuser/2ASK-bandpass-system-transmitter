`timescale 1ns / 1ps

module dac_controller(
    input wire clk,                  // 时钟
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
localparam IDLE   = 3'd0;
localparam SETUP  = 3'd1;
localparam WRITE1 = 3'd2;
localparam HOLD1  = 3'd3;
localparam WRITE2 = 3'd4;
localparam HOLD2  = 3'd5;
localparam DONE   = 3'd6;

reg [2:0] state, next_state;
reg [7:0] data_reg;
reg [3:0] delay_cnt;

// 时序参数（根据DAC0832数据手册）
parameter SETUP_TIME = 4'd2;    // 建立时间
parameter WRITE_TIME = 4'd4;    // 写脉冲宽度
parameter HOLD_TIME  = 4'd2;    // 保持时间

// 状态机
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

// 下一状态逻辑
always @(*) begin
    next_state = state;
    
    case (state)
        IDLE: begin
            if (data_valid)
                next_state = SETUP;
        end
        
        SETUP: begin
            if (delay_cnt >= SETUP_TIME)
                next_state = WRITE1;
        end
        
        WRITE1: begin
            if (delay_cnt >= WRITE_TIME)
                next_state = HOLD1;
        end
        
        HOLD1: begin
            if (delay_cnt >= HOLD_TIME)
                next_state = WRITE2;
        end
        
        WRITE2: begin
            if (delay_cnt >= WRITE_TIME)
                next_state = HOLD2;
        end
        
        HOLD2: begin
            if (delay_cnt >= HOLD_TIME)
                next_state = DONE;
        end
        
        DONE: begin
            next_state = IDLE;
        end
        
        default: next_state = IDLE;
    endcase
end

// 延时计数器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        delay_cnt <= 4'd0;
    end else begin
        if (state != next_state)
            delay_cnt <= 4'd0;
        else if (state != IDLE && state != DONE)
            delay_cnt <= delay_cnt + 1'b1;
    end
end

// 数据寄存器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_reg <= 8'd128;  // 复位时输出中间值
    end else if (data_valid) begin
        data_reg <= data_in;
    end
end

// DAC控制信号生成
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_data <= 8'd128;      // 复位时输出中间值
        dac_cs_n <= 1'b1;
        dac_wr1_n <= 1'b1;
        dac_wr2_n <= 1'b1;
        dac_xfer_n <= 1'b1;
        dac_ile <= 1'b0;
    end else begin
        // 持续更新DAC数据（实现连续转换）
        dac_data <= data_reg;
        
        case (state)
            IDLE: begin
                dac_cs_n <= 1'b1;
                dac_wr1_n <= 1'b1;
                dac_wr2_n <= 1'b1;
                dac_xfer_n <= 1'b1;
                dac_ile <= 1'b0;
            end
            
            SETUP: begin
                dac_cs_n <= 1'b0;
                dac_ile <= 1'b1;
            end
            
            WRITE1: begin
                dac_wr1_n <= 1'b0;
            end
            
            HOLD1: begin
                dac_wr1_n <= 1'b1;
            end
            
            WRITE2: begin
                dac_xfer_n <= 1'b0;
                dac_wr2_n <= 1'b0;
            end
            
            HOLD2: begin
                dac_wr2_n <= 1'b1;
                dac_xfer_n <= 1'b1;
            end
            
            DONE: begin
                dac_cs_n <= 1'b1;
                dac_ile <= 1'b0;
            end
        endcase
    end
end

endmodule