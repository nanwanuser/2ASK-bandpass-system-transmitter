module dac_controller(
    input wire clk,                      // 频率时钟
    input wire rst_n,                    // 复位信号
    input wire signed [15:0] data_in,    // 输入数据（16位有符号）
    input wire data_valid,               // 输入数据有效
    output reg [7:0] dac_data,           // DAC数据输出
    output reg dac_cs_n,                 // DAC片选信号（低电平有效）
    output reg dac_wr1_n,                // DAC写信号1（低电平有效）
    output reg dac_wr2_n,                // DAC写信号2（低电平有效）
    output reg dac_xfer_n,               // DAC传输信号（低电平有效）
    output reg dac_byte2                 // DAC字节2信号
);

    // DAC写操作状态机
    parameter IDLE     = 3'b000;
    parameter SETUP    = 3'b001;
    parameter WRITE1   = 3'b010;
    parameter WRITE2   = 3'b011;
    parameter XFER     = 3'b100;
    parameter DONE     = 3'b101;

    reg [2:0] state;
    reg [3:0] delay_counter;
    reg [7:0] dac_value;
    
    // 将16位有符号数据转换为8位无符号数据（用于DAC）
    // 输入范围：-32768 到 +32767
    // 输出范围：0 到 255
    // 使用高8位并添加偏移来获得更好的动态范围
    wire signed [15:0] data_scaled = data_in >>> 8;  // 右移8位保持符号
    wire [7:0] converted_data = data_scaled[7:0] + 8'd128;  // 添加偏移转换为无符号

    always @(posedge clk) begin
        if (!rst_n) begin
            state <= IDLE;
            dac_data <= 8'h00;
            dac_cs_n <= 1'b1;      // 默认不选中
            dac_wr1_n <= 1'b1;     // 默认不写
            dac_wr2_n <= 1'b1;     // 默认不写
            dac_xfer_n <= 1'b1;    // 默认不传输
            dac_byte2 <= 1'b1;     // 设置为字节模式
            delay_counter <= 4'h0;
            dac_value <= 8'h00;
        end else begin
            case (state)
                IDLE: begin
                    dac_cs_n <= 1'b1;
                    dac_wr1_n <= 1'b1;
                    dac_wr2_n <= 1'b1;
                    dac_xfer_n <= 1'b1;
                    
                    if (data_valid) begin
                        dac_value <= converted_data;
                        state <= SETUP;
                        delay_counter <= 4'h2;  // 设置延时
                    end
                end

                SETUP: begin
                    dac_data <= dac_value;
                    dac_cs_n <= 1'b0;      // 选中DAC
                    if (delay_counter == 0) begin
                        state <= WRITE1;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                WRITE1: begin
                    dac_wr1_n <= 1'b0;     // 写信号1有效
                    if (delay_counter == 0) begin
                        state <= WRITE2;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                WRITE2: begin
                    dac_wr1_n <= 1'b1;     // 写信号1无效
                    dac_wr2_n <= 1'b0;     // 写信号2有效
                    if (delay_counter == 0) begin
                        state <= XFER;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                XFER: begin
                    dac_wr2_n <= 1'b1;     // 写信号2无效
                    dac_xfer_n <= 1'b0;    // 传输信号有效
                    if (delay_counter == 0) begin
                        state <= DONE;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                DONE: begin
                    dac_xfer_n <= 1'b1;    // 传输信号无效
                    if (delay_counter == 0) begin
                        state <= IDLE;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule