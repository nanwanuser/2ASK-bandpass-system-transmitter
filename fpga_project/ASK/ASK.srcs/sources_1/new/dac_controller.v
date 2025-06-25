////////////////////////////////////////////////////////////////////////////////////
//// Module Name: dac_controller
//// Description: DAC0832������ - ������ģʽ���Ż��汾��
//// 
//// ������ģʽ���ã�
//// - CS, WR2, XFERʼ�սӵأ��͵�ƽ��
//// - ILEʼ�սӸߵ�ƽ
//// - ��ͨ��WR1��������д��
//// 
//// ʱ��Ҫ��
//// - WR1��������С900ns��90��ʱ������@100MHz��
//// - ���ݱ���ʱ����С50ns��5��ʱ�����ڣ�
////////////////////////////////////////////////////////////////////////////////////

//module dac_controller(
//    input wire clk,                  // 100MHzʱ��
//    input wire rst_n,                // ��λ�źţ�����Ч
//    input wire [7:0] data_in,        // ��������
//    input wire data_valid,           // ������Ч�ź�

//    // DAC�ӿ�
//    output reg [7:0] dac_data,       // DAC����
//    output wire dac_cs_n,            // DACƬѡ��������ģʽ�¹̶�Ϊ0��
//    output reg dac_wr1_n,            // DACд�ź�1
//    output wire dac_wr2_n,           // DACд�ź�2��������ģʽ�¹̶�Ϊ0��
//    output wire dac_xfer_n,          // DAC�����źţ�������ģʽ�¹̶�Ϊ0��
//    output wire dac_ile              // DAC��������ʹ�ܣ�������ģʽ�¹̶�Ϊ1��
//);

//// ������ģʽ�̶��ź�����
//assign dac_cs_n = 1'b0;    // CSʼ�յ͵�ƽ
//assign dac_wr2_n = 1'b0;   // WR2ʼ�յ͵�ƽ
//assign dac_xfer_n = 1'b0;  // XFERʼ�յ͵�ƽ
//assign dac_ile = 1'b1;     // ILEʼ�ոߵ�ƽ

//// ״̬������
//localparam IDLE        = 2'd0;
//localparam DATA_SETUP  = 2'd1;
//localparam WR_PULSE    = 2'd2;
//localparam DATA_HOLD   = 2'd3;

//reg [1:0] state;
//reg [6:0] timer;         // 7λ��ʱ����֧�����127������
//reg [7:0] data_latch;

//// ʱ�����������100MHzʱ�ӣ�
//// Ϊȷ���ɿ��ԣ�ʹ���Դ�����Сֵ�Ĳ���
//parameter tDATA_SETUP = 7'd10;   // ���ݽ���ʱ�� 100ns
//parameter tWR_PULSE  = 7'd100;    // WR������ 950ns (>900ns)
//parameter tDATA_HOLD = 7'd10;    // ���ݱ���ʱ�� 100ns (>50ns)

//// ״̬����DAC����
//always @(posedge clk or negedge rst_n) begin
//    if (!rst_n) begin
//        state <= IDLE;
//        timer <= 7'd0;
//        dac_data <= 8'd128;      // ��λʱ����м�ֵ
//        dac_wr1_n <= 1'b1;       // WR1Ĭ�ϸߵ�ƽ
//        data_latch <= 8'd128;
//    end else begin
//        case (state)
//            IDLE: begin
//                timer <= 7'd0;
//                dac_wr1_n <= 1'b1;  // ȷ��WR1Ϊ��
                
//                if (data_valid) begin
//                    data_latch <= data_in;
//                    state <= DATA_SETUP;
//                end
//            end
            
//            DATA_SETUP: begin
//                // ������ݣ��ȴ�����ʱ��
//                dac_data <= data_latch;
                
//                if (timer >= tDATA_SETUP - 1) begin
//                    timer <= 7'd0;
//                    state <= WR_PULSE;
//                end else begin
//                    timer <= timer + 1'b1;
//                end
//            end
            
//            WR_PULSE: begin
//                // WR1���ͣ�����д����
//                dac_wr1_n <= 1'b0;
                
//                if (timer >= tWR_PULSE - 1) begin
//                    timer <= 7'd0;
//                    state <= DATA_HOLD;
//                end else begin
//                    timer <= timer + 1'b1;
//                end
//            end
            
//            DATA_HOLD: begin
//                // WR1�ָ��ߵ�ƽ����������
//                dac_wr1_n <= 1'b1;
                
//                if (timer >= tDATA_HOLD - 1) begin
//                    timer <= 7'd0;
//                    state <= IDLE;
//                end else begin
//                    timer <= timer + 1'b1;
//                end
//            end
            
//            default: state <= IDLE;
//        endcase
//    end
//end

//endmodule