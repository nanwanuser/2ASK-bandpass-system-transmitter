module cosine_filter(
    input wire clk,                    // 频率时钟
    input wire rst_n,                  // 复位信号
    input wire data_in,                // 输入数据位
    input wire data_valid,             // 输入数据有效
    output reg signed [15:0] filtered_out,  // 滤波器输出
    output reg out_valid               // 输出有效信号
);

    // 简化的8阶FIR滤波器，滚降系数=0.35
    parameter FILTER_ORDER = 8;
    
    // 升余弦滤波器系数 (量化后的16位有符号系数)
    wire signed [15:0] coeff0 = 16'sh0CCC;   // 0.1
    wire signed [15:0] coeff1 = 16'sh1999;   // 0.2  
    wire signed [15:0] coeff2 = 16'sh3333;   // 0.4
    wire signed [15:0] coeff3 = 16'sh5999;   // 0.7
    wire signed [15:0] coeff4 = 16'sh5999;   // 0.7
    wire signed [15:0] coeff5 = 16'sh3333;   // 0.4
    wire signed [15:0] coeff6 = 16'sh1999;   // 0.2
    wire signed [15:0] coeff7 = 16'sh0CCC;   // 0.1

    // 延迟线寄存器 - 使用位寄存器结构
    reg signed [15:0] d0, d1, d2, d3, d4, d5, d6, d7;
    
    // 计算输出的临时变量
    reg signed [31:0] mult0, mult1, mult2, mult3, mult4, mult5, mult6, mult7;
    
    // 添加流水线阶段来优化DSP48性能
    reg signed [31:0] sum_stage1_pipe, sum_stage2_pipe;
    reg signed [31:0] sum_stage1, sum_stage2;
    reg signed [31:0] final_sum;
    
    // 流水线控制
    reg stage1_valid, stage2_valid, stage3_valid;
    
    // 输入信号转换为有符号系数 (0 -> -16384, 1 -> +16383)
    wire signed [15:0] data_in_signed = data_in ? 16'sh3FFF : 16'shC000;
    
    always @(posedge clk) begin
        if (!rst_n) begin
            // 初始化延迟线
            d0 <= 16'sh0000;
            d1 <= 16'sh0000;
            d2 <= 16'sh0000;
            d3 <= 16'sh0000;
            d4 <= 16'sh0000;
            d5 <= 16'sh0000;
            d6 <= 16'sh0000;
            d7 <= 16'sh0000;
            
            // 初始化其他信号
            filtered_out <= 16'sh0000;
            out_valid <= 1'b0;
            stage1_valid <= 1'b0;
            stage2_valid <= 1'b0;
            stage3_valid <= 1'b0;
            
            mult0 <= 32'sh00000000;
            mult1 <= 32'sh00000000;
            mult2 <= 32'sh00000000;
            mult3 <= 32'sh00000000;
            mult4 <= 32'sh00000000;
            mult5 <= 32'sh00000000;
            mult6 <= 32'sh00000000;
            mult7 <= 32'sh00000000;
            
            sum_stage1 <= 32'sh00000000;
            sum_stage2 <= 32'sh00000000;
            sum_stage1_pipe <= 32'sh00000000;
            sum_stage2_pipe <= 32'sh00000000;
            final_sum <= 32'sh00000000;
        end else begin
            // 默认输出无效
            out_valid <= 1'b0;
            
            // 第一阶段：移位延迟线和乘法
            if (data_valid) begin
                // 移位延迟线
                d7 <= d6;
                d6 <= d5;
                d5 <= d4;
                d4 <= d3;
                d3 <= d2;
                d2 <= d1;
                d1 <= d0;
                d0 <= data_in_signed;
                
                // 并行乘法 - DSP48优化
                mult0 <= d0 * coeff0;
                mult1 <= d1 * coeff1;
                mult2 <= d2 * coeff2;
                mult3 <= d3 * coeff3;
                mult4 <= d4 * coeff4;
                mult5 <= d5 * coeff5;
                mult6 <= d6 * coeff6;
                mult7 <= d7 * coeff7;
                
                stage1_valid <= 1'b1;
            end else begin
                stage1_valid <= 1'b0;
            end
            
            // 第二阶段：两分组求和 - 添加流水线寄存器
            if (stage1_valid) begin
                sum_stage1 <= mult0 + mult1 + mult2 + mult3;
                sum_stage2 <= mult4 + mult5 + mult6 + mult7;
                stage2_valid <= 1'b1;
            end else begin
                stage2_valid <= 1'b0;
            end
            
            // 第三阶段：流水线寄存器
            if (stage2_valid) begin
                sum_stage1_pipe <= sum_stage1;
                sum_stage2_pipe <= sum_stage2;
                stage3_valid <= 1'b1;
            end else begin
                stage3_valid <= 1'b0;
            end
            
            // 第四阶段：最终求和和输出
            if (stage3_valid) begin
                final_sum <= sum_stage1_pipe + sum_stage2_pipe;
                filtered_out <= final_sum[26:11];  // 适当的缩放和截取
                out_valid <= 1'b1;
            end
        end
    end

endmodule