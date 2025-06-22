module ask_modulator(
    input wire clk,                           // Ƶ��ʱ��
    input wire rst_n,                         // ��λ�ź�
    input wire signed [15:0] baseband_data,   // �������ݣ��˲���
    input wire baseband_valid,                // ����������Ч
    input wire signed [15:0] carrier_i,       // �ز�I����
    input wire carrier_valid,                 // �ز���Ч
    output reg signed [15:0] modulated_out,   // �������
    output reg out_valid                      // �����Ч
);

    // �ڲ��Ĵ��� - ������ˮ��
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
            // ��һ����ˮ�ߣ����ݻ���
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
            
            // �ڶ�����ˮ�ߣ���������
            baseband_reg2 <= baseband_reg1;
            carrier_reg2 <= carrier_reg1;
            data_ready2 <= data_ready1;
            carrier_valid2 <= carrier_valid1;
            
            // ��������ˮ�ߣ�����Ĵ���������DSP48�Ż���
            baseband_reg3 <= baseband_reg2;
            carrier_reg3 <= carrier_reg2;
            data_ready3 <= data_ready2;
            carrier_valid3 <= carrier_valid2;
            
            // ���ļ���ˮ�ߣ��˷����� - ����MREG
            if (carrier_valid3 && data_ready3) begin
                mult_result <= baseband_reg3 * carrier_reg3;
                mult_valid <= 1'b1;
            end else begin
                mult_valid <= 1'b0;
            end
            
            // ���弶��ˮ�ߣ��˷�����Ĵ�����PREG��
            mult_result_pipe <= mult_result;
            mult_valid_pipe <= mult_valid;
            
            // ��������ˮ�ߣ�������ź�ƫ��
            if (mult_valid_pipe) begin
                // ���ֱ��ƫ�ƺ��ʵ�����
                modulated_out <= mult_result_pipe[30:15] + 16'sh4000;
                out_valid <= 1'b1;
            end else begin
                out_valid <= 1'b0;
            end
        end
    end

endmodule