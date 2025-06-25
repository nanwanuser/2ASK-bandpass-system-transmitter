//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832控制器模块（修正版）
// 
// DAC0832双缓冲模式时序控制
// 严格按照数据手册实现
//////////////////////////////////////////////////////////////////////////////////

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
localparam IDLE        = 4'd0;
localparam START       = 4'd1;
localparam CS_LOW      = 4'd2;
localparam ILE_HIGH    = 4'd3;
localparam WR1_SETUP   = 4'd4;
localparam WR1_LOW     = 4'd5;
localparam WR1_HOLD    = 4'd6;
localparam XFER_SETUP  = 4'd7;
localparam XFER_LOW    = 4'd8;
localparam WR2_LOW     = 4'd9;
localparam WR2_HOLD    = 4'd10;
localparam CLEANUP     = 4'd11;
localparam DONE        = 4'd12;

reg [3:0] state;
reg [7:0] data_reg;
reg [7:0] timer;

// 时序参数（100MHz时钟，单位：时钟周期）
// 根据DAC0832数据手册，使用保守的时序值
parameter tCS   = 8'd5;     // CS建立时间 50ns
parameter tILE  = 8'd5;     // ILE建立时间 50ns
parameter tWR   = 8'd60;    // 写脉冲宽度 600ns (手册要求最小100ns)
parameter tDS   = 8'd25;    // 数据建立时间 250ns
parameter tDH   = 8'd5;     // 数据保持时间 50ns
parameter tWAIT = 8'd10;    // 状态间等待时间

// 数据寄存器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_reg <= 8'd128;  // 复位时输出中间值
    end else if (data_valid && state == IDLE) begin
        data_reg <= data_in;
    end
end

// 状态机和定时器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 8'd0;
    end else begin
        case (state)
            IDLE: begin
                timer <= 8'd0;
                if (data_valid) begin
                    state <= START;
                end
            end
            
            START: begin
                timer <= 8'd0;
                state <= CS_LOW;
            end
            
            CS_LOW: begin
                if (timer >= tCS) begin
                    timer <= 8'd0;
                    state <= ILE_HIGH;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            ILE_HIGH: begin
                if (timer >= tILE) begin
                    timer <= 8'd0;
                    state <= WR1_SETUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR1_SETUP: begin
                if (timer >= tDS) begin
                    timer <= 8'd0;
                    state <= WR1_LOW;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR1_LOW: begin
                if (timer >= tWR) begin
                    timer <= 8'd0;
                    state <= WR1_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR1_HOLD: begin
                if (timer >= tDH) begin
                    timer <= 8'd0;
                    state <= XFER_SETUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            XFER_SETUP: begin
                if (timer >= tWAIT) begin
                    timer <= 8'd0;
                    state <= XFER_LOW;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            XFER_LOW: begin
                if (timer >= tWAIT) begin
                    timer <= 8'd0;
                    state <= WR2_LOW;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR2_LOW: begin
                if (timer >= tWR) begin
                    timer <= 8'd0;
                    state <= WR2_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR2_HOLD: begin
                if (timer >= tDH) begin
                    timer <= 8'd0;
                    state <= CLEANUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            CLEANUP: begin
                if (timer >= tWAIT) begin
                    timer <= 8'd0;
                    state <= DONE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            DONE: begin
                state <= IDLE;
            end
            
            default: state <= IDLE;
        endcase
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
        // 数据始终输出
        dac_data <= data_reg;
        
        // 默认值
        dac_cs_n <= 1'b1;
        dac_wr1_n <= 1'b1;
        dac_wr2_n <= 1'b1;
        dac_xfer_n <= 1'b1;
        dac_ile <= 1'b0;
        
        // 根据状态生成控制信号
        case (state)
            CS_LOW, ILE_HIGH, WR1_SETUP, WR1_LOW, WR1_HOLD, 
            XFER_SETUP, XFER_LOW, WR2_LOW, WR2_HOLD, CLEANUP: begin
                dac_cs_n <= 1'b0;  // CS保持低电平
            end
        endcase
        
        case (state)
            ILE_HIGH, WR1_SETUP, WR1_LOW, WR1_HOLD, 
            XFER_SETUP, XFER_LOW, WR2_LOW, WR2_HOLD, CLEANUP: begin
                dac_ile <= 1'b1;   // ILE保持高电平
            end
        endcase
        
        case (state)
            WR1_LOW: begin
                dac_wr1_n <= 1'b0; // WR1低电平脉冲
            end
        endcase
        
        case (state)
            XFER_LOW, WR2_LOW, WR2_HOLD: begin
                dac_xfer_n <= 1'b0; // XFER保持低电平
            end
        endcase
        
        case (state)
            WR2_LOW: begin
                dac_wr2_n <= 1'b0;  // WR2低电平脉冲
            end
        endcase
    end
end

endmodule