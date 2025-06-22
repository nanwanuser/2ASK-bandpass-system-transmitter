module cosine_filter(
    input wire clk,                    // Ƶ��ʱ��
    input wire rst_n,                  // ��λ�ź�
    input wire data_in,                // ��������λ
    input wire data_valid,             // ����������Ч
    output reg signed [15:0] filtered_out,  // �˲������
    output reg out_valid               // �����Ч�ź�
);

    // �򻯵�8��FIR�˲���������ϵ��=0.35
    parameter FILTER_ORDER = 8;
    
    // �������˲���ϵ�� (�������16λ�з���ϵ��)
    wire signed [15:0] coeff0 = 16'sh0CCC;   // 0.1
    wire signed [15:0] coeff1 = 16'sh1999;   // 0.2  
    wire signed [15:0] coeff2 = 16'sh3333;   // 0.4
    wire signed [15:0] coeff3 = 16'sh5999;   // 0.7
    wire signed [15:0] coeff4 = 16'sh5999;   // 0.7
    wire signed [15:0] coeff5 = 16'sh3333;   // 0.4
    wire signed [15:0] coeff6 = 16'sh1999;   // 0.2
    wire signed [15:0] coeff7 = 16'sh0CCC;   // 0.1

    // �ӳ��߼Ĵ��� - ʹ��λ�Ĵ����ṹ
    reg signed [15:0] d0, d1, d2, d3, d4, d5, d6, d7;
    
    // �����������ʱ����
    reg signed [31:0] mult0, mult1, mult2, mult3, mult4, mult5, mult6, mult7;
    
    // �����ˮ�߽׶����Ż�DSP48����
    reg signed [31:0] sum_stage1_pipe, sum_stage2_pipe;
    reg signed [31:0] sum_stage1, sum_stage2;
    reg signed [31:0] final_sum;
    
    // ��ˮ�߿���
    reg stage1_valid, stage2_valid, stage3_valid;
    
    // �����ź�ת��Ϊ�з���ϵ�� (0 -> -16384, 1 -> +16383)
    wire signed [15:0] data_in_signed = data_in ? 16'sh3FFF : 16'shC000;
    
    always @(posedge clk) begin
        if (!rst_n) begin
            // ��ʼ���ӳ���
            d0 <= 16'sh0000;
            d1 <= 16'sh0000;
            d2 <= 16'sh0000;
            d3 <= 16'sh0000;
            d4 <= 16'sh0000;
            d5 <= 16'sh0000;
            d6 <= 16'sh0000;
            d7 <= 16'sh0000;
            
            // ��ʼ�������ź�
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
            // Ĭ�������Ч
            out_valid <= 1'b0;
            
            // ��һ�׶Σ���λ�ӳ��ߺͳ˷�
            if (data_valid) begin
                // ��λ�ӳ���
                d7 <= d6;
                d6 <= d5;
                d5 <= d4;
                d4 <= d3;
                d3 <= d2;
                d2 <= d1;
                d1 <= d0;
                d0 <= data_in_signed;
                
                // ���г˷� - DSP48�Ż�
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
            
            // �ڶ��׶Σ���������� - �����ˮ�߼Ĵ���
            if (stage1_valid) begin
                sum_stage1 <= mult0 + mult1 + mult2 + mult3;
                sum_stage2 <= mult4 + mult5 + mult6 + mult7;
                stage2_valid <= 1'b1;
            end else begin
                stage2_valid <= 1'b0;
            end
            
            // �����׶Σ���ˮ�߼Ĵ���
            if (stage2_valid) begin
                sum_stage1_pipe <= sum_stage1;
                sum_stage2_pipe <= sum_stage2;
                stage3_valid <= 1'b1;
            end else begin
                stage3_valid <= 1'b0;
            end
            
            // ���Ľ׶Σ�������ͺ����
            if (stage3_valid) begin
                final_sum <= sum_stage1_pipe + sum_stage2_pipe;
                filtered_out <= final_sum[26:11];  // �ʵ������źͽ�ȡ
                out_valid <= 1'b1;
            end
        end
    end

endmodule