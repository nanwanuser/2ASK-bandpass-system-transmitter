//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832������ģ�飨�����棩
// 
// DAC0832˫����ģʽʱ�����
// �ϸ��������ֲ�ʵ��
//////////////////////////////////////////////////////////////////////////////////

module dac_controller(
    input wire clk,                  // ʱ��
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
localparam IDLE        = 4'd0;
localparam START       = 4'd1;
localparam CS_LOW      = 4'd2;
localparam ILE_HIGH    = 4'd3;
localparam WR1_SETUP   = 4'd4;
localparam WR1_LOW     = 4'd5;
localparam WR1_HOLD    = 4'd6;
localparam XFER_SETUP  = 4'd7;
localparam XFER_LOW    = 4'd8;
localparam WR2_LOW     = 4'd9;
localparam WR2_HOLD    = 4'd10;
localparam CLEANUP     = 4'd11;
localparam DONE        = 4'd12;

reg [3:0] state;
reg [7:0] data_reg;
reg [7:0] timer;

// ʱ�������100MHzʱ�ӣ���λ��ʱ�����ڣ�
// ����DAC0832�����ֲᣬʹ�ñ��ص�ʱ��ֵ
parameter tCS   = 8'd5;     // CS����ʱ�� 50ns
parameter tILE  = 8'd5;     // ILE����ʱ�� 50ns
parameter tWR   = 8'd60;    // д������ 600ns (�ֲ�Ҫ����С100ns)
parameter tDS   = 8'd25;    // ���ݽ���ʱ�� 250ns
parameter tDH   = 8'd5;     // ���ݱ���ʱ�� 50ns
parameter tWAIT = 8'd10;    // ״̬��ȴ�ʱ��

// ���ݼĴ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_reg <= 8'd128;  // ��λʱ����м�ֵ
    end else if (data_valid && state == IDLE) begin
        data_reg <= data_in;
    end
end

// ״̬���Ͷ�ʱ��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
        timer <= 8'd0;
    end else begin
        case (state)
            IDLE: begin
                timer <= 8'd0;
                if (data_valid) begin
                    state <= START;
                end
            end
            
            START: begin
                timer <= 8'd0;
                state <= CS_LOW;
            end
            
            CS_LOW: begin
                if (timer >= tCS) begin
                    timer <= 8'd0;
                    state <= ILE_HIGH;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            ILE_HIGH: begin
                if (timer >= tILE) begin
                    timer <= 8'd0;
                    state <= WR1_SETUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR1_SETUP: begin
                if (timer >= tDS) begin
                    timer <= 8'd0;
                    state <= WR1_LOW;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR1_LOW: begin
                if (timer >= tWR) begin
                    timer <= 8'd0;
                    state <= WR1_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR1_HOLD: begin
                if (timer >= tDH) begin
                    timer <= 8'd0;
                    state <= XFER_SETUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            XFER_SETUP: begin
                if (timer >= tWAIT) begin
                    timer <= 8'd0;
                    state <= XFER_LOW;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            XFER_LOW: begin
                if (timer >= tWAIT) begin
                    timer <= 8'd0;
                    state <= WR2_LOW;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR2_LOW: begin
                if (timer >= tWR) begin
                    timer <= 8'd0;
                    state <= WR2_HOLD;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            WR2_HOLD: begin
                if (timer >= tDH) begin
                    timer <= 8'd0;
                    state <= CLEANUP;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            CLEANUP: begin
                if (timer >= tWAIT) begin
                    timer <= 8'd0;
                    state <= DONE;
                end else begin
                    timer <= timer + 1'b1;
                end
            end
            
            DONE: begin
                state <= IDLE;
            end
            
            default: state <= IDLE;
        endcase
    end
end

// DAC�����ź�����
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        dac_data <= 8'd128;      // ��λʱ����м�ֵ
        dac_cs_n <= 1'b1;
        dac_wr1_n <= 1'b1;
        dac_wr2_n <= 1'b1;
        dac_xfer_n <= 1'b1;
        dac_ile <= 1'b0;
    end else begin
        // ����ʼ�����
        dac_data <= data_reg;
        
        // Ĭ��ֵ
        dac_cs_n <= 1'b1;
        dac_wr1_n <= 1'b1;
        dac_wr2_n <= 1'b1;
        dac_xfer_n <= 1'b1;
        dac_ile <= 1'b0;
        
        // ����״̬���ɿ����ź�
        case (state)
            CS_LOW, ILE_HIGH, WR1_SETUP, WR1_LOW, WR1_HOLD, 
            XFER_SETUP, XFER_LOW, WR2_LOW, WR2_HOLD, CLEANUP: begin
                dac_cs_n <= 1'b0;  // CS���ֵ͵�ƽ
            end
        endcase
        
        case (state)
            ILE_HIGH, WR1_SETUP, WR1_LOW, WR1_HOLD, 
            XFER_SETUP, XFER_LOW, WR2_LOW, WR2_HOLD, CLEANUP: begin
                dac_ile <= 1'b1;   // ILE���ָߵ�ƽ
            end
        endcase
        
        case (state)
            WR1_LOW: begin
                dac_wr1_n <= 1'b0; // WR1�͵�ƽ����
            end
        endcase
        
        case (state)
            XFER_LOW, WR2_LOW, WR2_HOLD: begin
                dac_xfer_n <= 1'b0; // XFER���ֵ͵�ƽ
            end
        endcase
        
        case (state)
            WR2_LOW: begin
                dac_wr2_n <= 1'b0;  // WR2�͵�ƽ����
            end
        endcase
    end
end

endmodule