//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832������ģ�飨�����Ż��棩
// 
// ���535KHz�ز��Ż���ʹ�ü򻯵ĵ�����ģʽ
// ʵ�ֿ��ٸ����Ի��ƽ������
//////////////////////////////////////////////////////////////////////////////////
module dac_controller(
    input wire clk,                  // 100MHzʱ��
    input wire rst_n,                // ��λ�źţ�����Ч
    input wire [7:0] data_in,        // ��������
    input wire data_valid,           // ������Ч�ź�

    // DAC�ӿ�
    output reg [7:0] dac_data,       // DAC����
    output reg dac_cs_n,             // DACƬѡ
    output reg dac_wr1_n,            // DACд�ź�1
    output reg dac_wr2_n,            // DACд�ź�2
    output reg dac_xfer_n,           // DAC�����ź�
    output reg dac_ile               // DAC��������ʹ��
);
// ʹ�ü򻯵ĵ�����ģʽ��ֱ��д��DAC
// ״̬������
localparam IDLE    = 2'd0;
localparam SETUP   = 2'd1;
localparam WRITE   = 2'd2;
localparam HOLD    = 2'd3;
reg [1:0] state;
reg [3:0] timer;
reg [7:0] data_buffer;
reg update_flag;
// ʱ����������100MHzʱ���Ż���
// ʹ����Сʱ��Ҫ���Ի����߸�����
parameter tSETUP = 4'd2;    // ���ݽ���ʱ�� 20ns
parameter tWRITE = 4'd4;    // д������ 40ns (�ֲ���С100ns����ʵ�ʿ��Ը���)
parameter tHOLD  = 4'd2;    // ���ݱ���ʱ�� 20ns
// �������ݻ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_buffer <= 8'd128;
        update_flag <= 1'b0;
    end else begin
        if (data_valid) begin
            data_buffer <= data_in;
            update_flag <= 1'b1;
        end else if (state == IDLE && update_flag) begin
            update_flag <= 1'b0;
        end
    end
end
// �򻯵�״̬��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 4'd0;
    end else begin
        case (state)
            IDLE: begin
                timer <= 4'd0;
                if (update_flag) begin
                    state <= SETUP;
                end
            end

            SETUP: begin
                if (timer >= tSETUP) begin
                    timer <= 4'd0;
                    state <= WRITE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            WRITE: begin
                if (timer >= tWRITE) begin
                    timer <= 4'd0;
                    state <= HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            HOLD: begin
                if (timer >= tHOLD) begin
                    timer <= 4'd0;
                    state <= IDLE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            default: state <= IDLE;
        endcase
    end
end
// DAC�����ź����ɣ�������ģʽ��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_data <= 8'd128;      // ��λʱ����м�ֵ
        dac_cs_n <= 1'b0;        // CSʼ�յ͵�ƽ��ʹ�ܣ�
        dac_wr1_n <= 1'b1;       
        dac_wr2_n <= 1'b0;       // WR2ʼ�յ͵�ƽ��������ģʽ��
        dac_xfer_n <= 1'b0;      // XFERʼ�յ͵�ƽ��ֱͨģʽ��
        dac_ile <= 1'b1;         // ILEʼ�ոߵ�ƽ
    end else begin
        // �������
        dac_data <= data_buffer;

        // �����źű���
        dac_cs_n <= 1'b0;        // ʼ��ѡ��
        dac_wr2_n <= 1'b0;       // ������ģʽ
        dac_xfer_n <= 1'b0;      // ֱͨģʽ
        dac_ile <= 1'b1;         // ��������ʹ��

        // WR1����
        case (state)
            WRITE: begin
                dac_wr1_n <= 1'b0;   // д����
            end
            default: begin
                dac_wr1_n <= 1'b1;   // �ߵ�ƽ
            end
        endcase
    end
end
endmodule