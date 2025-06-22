module uart_receiver(
    input wire clk,              // 100MHz系统时钟
    input wire rst_n,            // 复位信号
    input wire uart_rx,          // UART接收线
    output reg [7:0] data_out,   // 接收到的数据
    output reg data_valid,       // 数据有效信号
    output wire ready            // 接收器就绪
);

    // 波特率9600，时钟100MHz，分频因子 = 100MHz/9600 ≈ 10417
    parameter BAUD_DIV = 10417;
    parameter HALF_BAUD_DIV = BAUD_DIV / 2;

    // 状态定义
    parameter IDLE  = 3'b000;
    parameter START = 3'b001;
    parameter DATA  = 3'b010;
    parameter STOP  = 3'b011;

    reg [2:0] state;
    reg [15:0] baud_counter;
    reg [2:0] bit_counter;
    reg [7:0] shift_reg;
    reg uart_rx_d1;  // 只需要一级同步寄存器

    // 输入信号同步
    always @(posedge clk) begin
        if (!rst_n) begin
            uart_rx_d1 <= 1'b1;
        end else begin
            uart_rx_d1 <= uart_rx;
        end
    end

    // 主状态机
    always @(posedge clk) begin
        if (!rst_n) begin
            state <= IDLE;
            baud_counter <= 16'b0;
            bit_counter <= 3'b0;
            shift_reg <= 8'b0;
            data_out <= 8'b0;
            data_valid <= 1'b0;
        end else begin
            data_valid <= 1'b0;  // 默认无效
            
            case (state)
                IDLE: begin
                    if (!uart_rx_d1) begin  // 检测到起始位
                        state <= START;
                        baud_counter <= HALF_BAUD_DIV;  // 半个波特周期后采样
                    end
                end

                START: begin
                    if (baud_counter == 0) begin
                        if (!uart_rx_d1) begin  // 确认起始位
                            state <= DATA;
                            baud_counter <= BAUD_DIV - 1;
                            bit_counter <= 3'b0;
                        end else begin
                            state <= IDLE;  // 虚假起始位
                        end
                    end else begin
                        baud_counter <= baud_counter - 1;
                    end
                end

                DATA: begin
                    if (baud_counter == 0) begin
                        shift_reg[bit_counter] <= uart_rx_d1;  // LSB先传输
                        if (bit_counter == 7) begin
                            state <= STOP;
                            baud_counter <= BAUD_DIV - 1;
                        end else begin
                            bit_counter <= bit_counter + 1;
                            baud_counter <= BAUD_DIV - 1;
                        end
                    end else begin
                        baud_counter <= baud_counter - 1;
                    end
                end

                STOP: begin
                    if (baud_counter == 0) begin
                        if (uart_rx_d1) begin  // 检测停止位
                            data_out <= shift_reg;
                            data_valid <= 1'b1;
                        end
                        state <= IDLE;
                    end else begin
                        baud_counter <= baud_counter - 1;
                    end
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

    assign ready = (state == IDLE);

endmodule