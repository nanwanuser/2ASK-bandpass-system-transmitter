module dac_controller(
    input wire clk,                      // Ƶ��ʱ��
    input wire rst_n,                    // ��λ�ź�
    input wire signed [15:0] data_in,    // �������ݣ�16λ�з��ţ�
    input wire data_valid,               // ����������Ч
    output reg [7:0] dac_data,           // DAC�������
    output reg dac_cs_n,                 // DACƬѡ�źţ��͵�ƽ��Ч��
    output reg dac_wr1_n,                // DACд�ź�1���͵�ƽ��Ч��
    output reg dac_wr2_n,                // DACд�ź�2���͵�ƽ��Ч��
    output reg dac_xfer_n,               // DAC�����źţ��͵�ƽ��Ч��
    output reg dac_byte2                 // DAC�ֽ�2�ź�
);

    // DACд����״̬��
    parameter IDLE     = 3'b000;
    parameter SETUP    = 3'b001;
    parameter WRITE1   = 3'b010;
    parameter WRITE2   = 3'b011;
    parameter XFER     = 3'b100;
    parameter DONE     = 3'b101;

    reg [2:0] state;
    reg [3:0] delay_counter;
    reg [7:0] dac_value;
    
    // ��16λ�з�������ת��Ϊ8λ�޷������ݣ�����DAC��
    // ���뷶Χ��-32768 �� +32767
    // �����Χ��0 �� 255
    // ʹ�ø�8λ�����ƫ������ø��õĶ�̬��Χ
    wire signed [15:0] data_scaled = data_in >>> 8;  // ����8λ���ַ���
    wire [7:0] converted_data = data_scaled[7:0] + 8'd128;  // ���ƫ��ת��Ϊ�޷���

    always @(posedge clk) begin
        if (!rst_n) begin
            state <= IDLE;
            dac_data <= 8'h00;
            dac_cs_n <= 1'b1;      // Ĭ�ϲ�ѡ��
            dac_wr1_n <= 1'b1;     // Ĭ�ϲ�д
            dac_wr2_n <= 1'b1;     // Ĭ�ϲ�д
            dac_xfer_n <= 1'b1;    // Ĭ�ϲ�����
            dac_byte2 <= 1'b1;     // ����Ϊ�ֽ�ģʽ
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
                        delay_counter <= 4'h2;  // ������ʱ
                    end
                end

                SETUP: begin
                    dac_data <= dac_value;
                    dac_cs_n <= 1'b0;      // ѡ��DAC
                    if (delay_counter == 0) begin
                        state <= WRITE1;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                WRITE1: begin
                    dac_wr1_n <= 1'b0;     // д�ź�1��Ч
                    if (delay_counter == 0) begin
                        state <= WRITE2;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                WRITE2: begin
                    dac_wr1_n <= 1'b1;     // д�ź�1��Ч
                    dac_wr2_n <= 1'b0;     // д�ź�2��Ч
                    if (delay_counter == 0) begin
                        state <= XFER;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                XFER: begin
                    dac_wr2_n <= 1'b1;     // д�ź�2��Ч
                    dac_xfer_n <= 1'b0;    // �����ź���Ч
                    if (delay_counter == 0) begin
                        state <= DONE;
                        delay_counter <= 4'h2;
                    end else begin
                        delay_counter <= delay_counter - 1;
                    end
                end

                DONE: begin
                    dac_xfer_n <= 1'b1;    // �����ź���Ч
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