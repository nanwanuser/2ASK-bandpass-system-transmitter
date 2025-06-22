module clk_divider(
    input wire clk_in,    // 100MHz输入时钟
    input wire rst_n,     // 复位信号
    output reg clk_out    // 50MHz输出时钟
);

    reg counter;

    always @(posedge clk_in) begin
        if (!rst_n) begin
            counter <= 1'b0;
            clk_out <= 1'b0;
        end else begin
            counter <= ~counter;
            if (counter) 
                clk_out <= ~clk_out;
        end
    end

endmodule