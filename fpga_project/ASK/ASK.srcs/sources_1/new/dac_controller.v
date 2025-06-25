
//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832������ - Control Signal Timingģʽ
// 
// �ϸ�����DAC0832ʱ��Ҫ��
// - WR��������С900ns��90��ʱ������@100MHz��
// - ���ݱ���ʱ����С50ns��5��ʱ�����ڣ�
// - ʹ�õ�����ģʽ���򻯿���
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
localparam IDLE        = 3'd0;
localparam CS_SETUP    = 3'd1;
localparam DATA_SETUP  = 3'd2;
localparam WR_ACTIVE   = 3'd3;
localparam DATA_HOLD   = 3'd4;
localparam CS_HOLD     = 3'd5;

reg [2:0] state;
reg [7:0] timer;         // �����ʱ����֧�ֳ�ʱ��
reg [7:0] data_latch;

// ʱ�����������100MHzʱ�ӣ�
// Ϊȷ���ɿ��ԣ�ʹ�ñ���Сֵ�����ʱ�����
parameter tCS_SETUP  = 8'd10;   // CS����ʱ�� 100ns
parameter tDATA_SETUP = 8'd10;  // ���ݽ���ʱ�� 100ns  
parameter tWR_PULSE  = 8'd100;  // WR������ 1000ns (>900ns)
parameter tDATA_HOLD = 8'd10;   // ���ݱ���ʱ�� 100ns (>50ns)
parameter tCS_HOLD   = 8'd10;   // CS����ʱ�� 100ns

// ������ģʽ����
// CS��WR1���ڿ�������Ĵ���
// WR2��XFER�̶�����������ֱͨ��DAC�Ĵ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_wr2_n <= 1'b0;   // WR2ʼ�յ͵�ƽ��ֱͨģʽ��
        dac_xfer_n <= 1'b0;  // XFERʼ�յ͵�ƽ��ֱͨģʽ��
        dac_ile <= 1'b1;     // ILEʼ�ոߵ�ƽ
    end else begin
        dac_wr2_n <= 1'b0;
        dac_xfer_n <= 1'b0;
        dac_ile <= 1'b1;
    end
end

// ״̬����DAC����
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 8'd0;
        dac_data <= 8'd128;
        dac_cs_n <= 1'b1;
        dac_wr1_n <= 1'b1;
        data_latch <= 8'd128;
    end else begin
        case (state)
            IDLE: begin
                timer <= 8'd0;
                dac_cs_n <= 1'b1;
                dac_wr1_n <= 1'b1;
                
                if (data_valid) begin
                    data_latch <= data_in;
                    state <= CS_SETUP;
                end
            end
            
            CS_SETUP: begin
                // ����CS������ʱ��
                dac_cs_n <= 1'b0;
                
                if (timer >= tCS_SETUP - 1) begin
                    timer <= 8'd0;
                    state <= DATA_SETUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            DATA_SETUP: begin
                // ������ݣ�����ʱ��
                dac_data <= data_latch;
                
                if (timer >= tDATA_SETUP - 1) begin
                    timer <= 8'd0;
                    state <= WR_ACTIVE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR_ACTIVE: begin
                // WR����͵�ƽ
                dac_wr1_n <= 1'b0;
                
                if (timer >= tWR_PULSE - 1) begin
                    timer <= 8'd0;
                    state <= DATA_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            DATA_HOLD: begin
                // WR�ظߣ���������
                dac_wr1_n <= 1'b1;
                
                if (timer >= tDATA_HOLD - 1) begin
                    timer <= 8'd0;
                    state <= CS_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            CS_HOLD: begin
                // CS�ظ�ǰ�ı���ʱ��
                if (timer >= tCS_HOLD - 1) begin
                    timer <= 8'd0;
                    dac_cs_n <= 1'b1;
                    state <= IDLE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            default: state <= IDLE;
        endcase
    end
end

endmodule