module data_decoder(
    input wire clk,              // ϵͳʱ��
    input wire rst_n,            // ��λ�ź�
    input wire [7:0] data_in,    // �����ֽ�����
    input wire data_valid,       // ����������Ч
    output reg bit_out,          // �������
    output reg bit_valid         // ���������Ч
);

    // �������ʱ�ӷ�Ƶ - �����������
    // ������������������Ϊ1Mbps��100MHz/100 = 1MHz
    parameter BIT_DIV = 100;
    
    reg [7:0] shift_reg;         // ��λ�Ĵ���
    reg [2:0] bit_counter;       // ���ؼ�����
    reg [6:0] clk_counter;       // ʱ�ӷ�Ƶ������
    reg output_enable;           // ���ʹ��

    always @(posedge clk) begin
        if (!rst_n) begin
            shift_reg <= 8'b0;
            bit_counter <= 3'b0;
            clk_counter <= 7'b0;
            output_enable <= 1'b0;
            bit_out <= 1'b0;
            bit_valid <= 1'b0;
        end else begin
            bit_valid <= 1'b0;  // Ĭ����Ч
            
            // ����������
            if (data_valid && !output_enable) begin
                shift_reg <= data_in;
                bit_counter <= 3'b0;
                clk_counter <= 7'b0;
                output_enable <= 1'b1;
            end
            
            // ���������
            if (output_enable) begin
                if (clk_counter == BIT_DIV - 1) begin
                    clk_counter <= 7'b0;
                    
                    // �����ǰ���� (LSB first)
                    bit_out <= shift_reg[0];
                    bit_valid <= 1'b1;
                    
                    // ���ƻ�ȡ��һ����
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