
//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832控制器 - Control Signal Timing模式
// 
// 严格遵守DAC0832时序要求：
// - WR脉冲宽度最小900ns（90个时钟周期@100MHz）
// - 数据保持时间最小50ns（5个时钟周期）
// - 使用单缓冲模式，简化控制
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
localparam IDLE        = 3'd0;
localparam CS_SETUP    = 3'd1;
localparam DATA_SETUP  = 3'd2;
localparam WR_ACTIVE   = 3'd3;
localparam DATA_HOLD   = 3'd4;
localparam CS_HOLD     = 3'd5;

reg [2:0] state;
reg [7:0] timer;         // 扩大计时器以支持长时序
reg [7:0] data_latch;

// 时序参数（基于100MHz时钟）
// 为确保可靠性，使用比最小值更大的时序参数
parameter tCS_SETUP  = 8'd10;   // CS建立时间 100ns
parameter tDATA_SETUP = 8'd10;  // 数据建立时间 100ns  
parameter tWR_PULSE  = 8'd100;  // WR脉冲宽度 1000ns (>900ns)
parameter tDATA_HOLD = 8'd10;   // 数据保持时间 100ns (>50ns)
parameter tCS_HOLD   = 8'd10;   // CS保持时间 100ns

// 单缓冲模式配置
// CS和WR1用于控制输入寄存器
// WR2和XFER固定配置让数据直通到DAC寄存器
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_wr2_n <= 1'b0;   // WR2始终低电平（直通模式）
        dac_xfer_n <= 1'b0;  // XFER始终低电平（直通模式）
        dac_ile <= 1'b1;     // ILE始终高电平
    end else begin
        dac_wr2_n <= 1'b0;
        dac_xfer_n <= 1'b0;
        dac_ile <= 1'b1;
    end
end

// 状态机和DAC控制
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 8'd0;
        dac_data <= 8'd128;
        dac_cs_n <= 1'b1;
        dac_wr1_n <= 1'b1;
        data_latch <= 8'd128;
    end else begin
        case (state)
            IDLE: begin
                timer <= 8'd0;
                dac_cs_n <= 1'b1;
                dac_wr1_n <= 1'b1;
                
                if (data_valid) begin
                    data_latch <= data_in;
                    state <= CS_SETUP;
                end
            end
            
            CS_SETUP: begin
                // 拉低CS，建立时间
                dac_cs_n <= 1'b0;
                
                if (timer >= tCS_SETUP - 1) begin
                    timer <= 8'd0;
                    state <= DATA_SETUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            DATA_SETUP: begin
                // 输出数据，建立时间
                dac_data <= data_latch;
                
                if (timer >= tDATA_SETUP - 1) begin
                    timer <= 8'd0;
                    state <= WR_ACTIVE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR_ACTIVE: begin
                // WR脉冲低电平
                dac_wr1_n <= 1'b0;
                
                if (timer >= tWR_PULSE - 1) begin
                    timer <= 8'd0;
                    state <= DATA_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            DATA_HOLD: begin
                // WR回高，保持数据
                dac_wr1_n <= 1'b1;
                
                if (timer >= tDATA_HOLD - 1) begin
                    timer <= 8'd0;
                    state <= CS_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            CS_HOLD: begin
                // CS回高前的保持时间
                if (timer >= tCS_HOLD - 1) begin
                    timer <= 8'd0;
                    dac_cs_n <= 1'b1;
                    state <= IDLE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            default: state <= IDLE;
        endcase
    end
end

endmodule