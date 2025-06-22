module data_decoder(
    input wire clk,              // 系统时钟
    input wire rst_n,            // 复位信号
    input wire [7:0] data_in,    // 输入字节数据
    input wire data_valid,       // 输入数据有效
    output reg bit_out,          // 输出比特
    output reg bit_valid         // 输出比特有效
);

    // 比特输出时钟分频 - 控制输出速率
    // 假设我们期望比特率为1Mbps，100MHz/100 = 1MHz
    parameter BIT_DIV = 100;
    
    reg [7:0] shift_reg;         // 移位寄存器
    reg [2:0] bit_counter;       // 比特计数器
    reg [6:0] clk_counter;       // 时钟分频计数器
    reg output_enable;           // 输出使能

    always @(posedge clk) begin
        if (!rst_n) begin
            shift_reg <= 8'b0;
            bit_counter <= 3'b0;
            clk_counter <= 7'b0;
            output_enable <= 1'b0;
            bit_out <= 1'b0;
            bit_valid <= 1'b0;
        end else begin
            bit_valid <= 1'b0;  // 默认无效
            
            // 加载新数据
            if (data_valid && !output_enable) begin
                shift_reg <= data_in;
                bit_counter <= 3'b0;
                clk_counter <= 7'b0;
                output_enable <= 1'b1;
            end
            
            // 输出比特流
            if (output_enable) begin
                if (clk_counter == BIT_DIV - 1) begin
                    clk_counter <= 7'b0;
                    
                    // 输出当前比特 (LSB first)
                    bit_out <= shift_reg[0];
                    bit_valid <= 1'b1;
                    
                    // 右移获取下一比特
                    shift_reg <= {1'b0, shift_reg[7:1]};
                    
                    if (bit_counter == 7) begin
                        output_enable <= 1'b0;
                        bit_counter <= 3'b0;
                    end else begin
                        bit_counter <= bit_counter + 1;
                    end
                end else begin
                    clk_counter <= clk_counter + 1;
                end
            end
        end
    end

endmodule