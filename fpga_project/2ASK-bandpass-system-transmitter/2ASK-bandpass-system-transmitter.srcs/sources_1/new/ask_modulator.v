module ask_modulator(
    input wire clk,                           // 频率时钟
    input wire rst_n,                         // 复位信号
    input wire signed [15:0] baseband_data,   // 基带数据（滤波后）
    input wire baseband_valid,                // 基带数据有效
    input wire signed [15:0] carrier_i,       // 载波I分量
    input wire carrier_valid,                 // 载波有效
    output reg signed [15:0] modulated_out,   // 调制输出
    output reg out_valid                      // 输出有效
);

    // 内部寄存器 - 增加流水线
    reg signed [15:0] baseband_reg1, baseband_reg2, baseband_reg3;
    reg signed [15:0] carrier_reg1, carrier_reg2, carrier_reg3;
    reg signed [31:0] mult_result, mult_result_pipe;
    reg data_ready1, data_ready2, data_ready3;
    reg carrier_valid1, carrier_valid2, carrier_valid3;
    reg mult_valid, mult_valid_pipe;
    
    always @(posedge clk) begin
        if (!rst_n) begin
            baseband_reg1 <= 16'sh0000;
            baseband_reg2 <= 16'sh0000;
            baseband_reg3 <= 16'sh0000;
            carrier_reg1 <= 16'sh0000;
            carrier_reg2 <= 16'sh0000;
            carrier_reg3 <= 16'sh0000;
            mult_result <= 32'sh00000000;
            mult_result_pipe <= 32'sh00000000;
            modulated_out <= 16'sh0000;
            out_valid <= 1'b0;
            data_ready1 <= 1'b0;
            data_ready2 <= 1'b0;
            data_ready3 <= 1'b0;
            carrier_valid1 <= 1'b0;
            carrier_valid2 <= 1'b0;
            carrier_valid3 <= 1'b0;
            mult_valid <= 1'b0;
            mult_valid_pipe <= 1'b0;
        end else begin
            // 第一级流水线：数据缓存
            if (baseband_valid) begin
                baseband_reg1 <= baseband_data;
                data_ready1 <= 1'b1;
            end else begin
                data_ready1 <= 1'b0;
            end
            
            if (carrier_valid) begin
                carrier_reg1 <= carrier_i;
                carrier_valid1 <= 1'b1;
            end else begin
                carrier_valid1 <= 1'b0;
            end
            
            // 第二级流水线：对齐数据
            baseband_reg2 <= baseband_reg1;
            carrier_reg2 <= carrier_reg1;
            data_ready2 <= data_ready1;
            carrier_valid2 <= carrier_valid1;
            
            // 第三级流水线：输入寄存器（用于DSP48优化）
            baseband_reg3 <= baseband_reg2;
            carrier_reg3 <= carrier_reg2;
            data_ready3 <= data_ready2;
            carrier_valid3 <= carrier_valid2;
            
            // 第四级流水线：乘法运算 - 启用MREG
            if (carrier_valid3 && data_ready3) begin
                mult_result <= baseband_reg3 * carrier_reg3;
                mult_valid <= 1'b1;
            end else begin
                mult_valid <= 1'b0;
            end
            
            // 第五级流水线：乘法结果寄存器（PREG）
            mult_result_pipe <= mult_result;
            mult_valid_pipe <= mult_valid;
            
            // 第六级流水线：输出缩放和偏移
            if (mult_valid_pipe) begin
                // 添加直流偏移和适当缩放
                modulated_out <= mult_result_pipe[30:15] + 16'sh4000;
                out_valid <= 1'b1;
            end else begin
                out_valid <= 1'b0;
            end
        end
    end

endmodule