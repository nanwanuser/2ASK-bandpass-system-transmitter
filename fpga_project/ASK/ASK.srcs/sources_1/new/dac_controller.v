//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832������ģ�飨�Ż��棩
// 
// ���535KHz�ز��Ż���ȷ������DAC0832ʱ��Ҫ��
// ʹ����ˮ�����ʵ��ƽ���������
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

// ״̬������
localparam IDLE    = 3'd0;
localparam SETUP   = 3'd1;
localparam WRITE   = 3'd2;
localparam HOLD    = 3'd3;
localparam WAIT    = 3'd4;  // �����ȴ�״̬��ȷ��ʱ������

reg [2:0] state;
reg [3:0] timer;
reg [7:0] data_buffer;
reg [7:0] data_latch;       // �����������������������ˮ�߲���
reg update_pending;

// ʱ����������100MHzʱ�ӣ�����DAC0832���
// DAC0832����ʱ��Ҫ��
// - ���ݽ���ʱ��(tDS): 100ns min
// - д������(tWR): 100ns min  
// - ���ݱ���ʱ��(tDH): 10ns min
parameter tSETUP = 4'd10;    // ���ݽ���ʱ�� 100ns (10��ʱ������)
parameter tWRITE = 4'd10;    // д������ 100ns (10��ʱ������)
parameter tHOLD  = 4'd2;     // ���ݱ���ʱ�� 20ns (2��ʱ������)
parameter tWAIT  = 4'd5;     // �ȴ�ʱ�� 50ns (5��ʱ������)

// ˫������ƣ�ȷ�����ݸ��µ�������
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_buffer <= 8'd128;  // �м�ֵ
        data_latch <= 8'd128;
        update_pending <= 1'b0;
    end else begin
        // �����ݵ���ʱ�����뻺����
        if (data_valid && !update_pending) begin
            data_buffer <= data_in;
            update_pending <= 1'b1;
        end else if (state == SETUP && update_pending) begin
            // ��SETUP״̬������ת�Ƶ�������
            data_latch <= data_buffer;
            update_pending <= 1'b0;
        end else if (data_valid && update_pending && state != IDLE) begin
            // ������ڴ��������������ݣ����»�����
            data_buffer <= data_in;
        end
    end
end

// �Ż���״̬��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 4'd0;
    end else begin
        case (state)
            IDLE: begin
                timer <= 4'd0;
                if (update_pending || data_valid) begin
                    state <= SETUP;
                end
            end

            SETUP: begin
                if (timer >= tSETUP - 1) begin
                    timer <= 4'd0;
                    state <= WRITE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            WRITE: begin
                if (timer >= tWRITE - 1) begin
                    timer <= 4'd0;
                    state <= HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            HOLD: begin
                if (timer >= tHOLD - 1) begin
                    timer <= 4'd0;
                    state <= WAIT;
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            WAIT: begin
                if (timer >= tWAIT - 1) begin
                    timer <= 4'd0;
                    // ����������ݵȴ���������ʼ��һ������
                    if (update_pending || data_valid) begin
                        state <= SETUP;
                    end else begin
                        state <= IDLE;
                    end
                end else begin
                    timer <= timer + 1'b1;
                end
            end

            default: state <= IDLE;
        endcase
    end
end

// DAC�����ź����ɣ��Ż�ʱ��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_data <= 8'd128;      // ��λʱ����м�ֵ
        dac_cs_n <= 1'b0;        // CSʼ�յ͵�ƽ��ʹ�ܣ�
        dac_wr1_n <= 1'b1;       
        dac_wr2_n <= 1'b0;       // WR2ʼ�յ͵�ƽ��������ģʽ��
        dac_xfer_n <= 1'b0;      // XFERʼ�յ͵�ƽ��ֱͨģʽ��
        dac_ile <= 1'b1;         // ILEʼ�ոߵ�ƽ
    end else begin
        // �̶��Ŀ����ź�
        dac_cs_n <= 1'b0;        // ʼ��ѡ��
        dac_wr2_n <= 1'b0;       // ������ģʽ
        dac_xfer_n <= 1'b0;      // ֱͨģʽ
        dac_ile <= 1'b1;         // ��������ʹ��

        // ������� - ��SETUP״̬��ʼʱ����
        if (state == SETUP && timer == 4'd0) begin
            dac_data <= data_latch;
        end

        // WR1���� - �ϸ���ʱ��Ҫ��
        case (state)
            WRITE: begin
                dac_wr1_n <= 1'b0;   // д����͵�ƽ
            end
            default: begin
                dac_wr1_n <= 1'b1;   // ����״̬���ָߵ�ƽ
            end
        endcase
    end
end

endmodule