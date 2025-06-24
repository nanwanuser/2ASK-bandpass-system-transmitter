`timescale 1ns / 1ps

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
localparam IDLE   = 3'd0;
localparam SETUP  = 3'd1;
localparam WRITE1 = 3'd2;
localparam HOLD1  = 3'd3;
localparam WRITE2 = 3'd4;
localparam HOLD2  = 3'd5;
localparam DONE   = 3'd6;

reg [2:0] state, next_state;
reg [7:0] data_reg;
reg [3:0] delay_cnt;

// ʱ�����������DAC0832�����ֲᣩ
parameter SETUP_TIME = 4'd2;    // ����ʱ��
parameter WRITE_TIME = 4'd4;    // д������
parameter HOLD_TIME  = 4'd2;    // ����ʱ��

// ״̬��
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end
end

// ��һ״̬�߼�
always @(*) begin
    next_state = state;
    
    case (state)
        IDLE: begin
            if (data_valid)
                next_state = SETUP;
        end
        
        SETUP: begin
            if (delay_cnt >= SETUP_TIME)
                next_state = WRITE1;
        end
        
        WRITE1: begin
            if (delay_cnt >= WRITE_TIME)
                next_state = HOLD1;
        end
        
        HOLD1: begin
            if (delay_cnt >= HOLD_TIME)
                next_state = WRITE2;
        end
        
        WRITE2: begin
            if (delay_cnt >= WRITE_TIME)
                next_state = HOLD2;
        end
        
        HOLD2: begin
            if (delay_cnt >= HOLD_TIME)
                next_state = DONE;
        end
        
        DONE: begin
            next_state = IDLE;
        end
        
        default: next_state = IDLE;
    endcase
end

// ��ʱ������
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        delay_cnt <= 4'd0;
    end else begin
        if (state != next_state)
            delay_cnt <= 4'd0;
        else if (state != IDLE && state != DONE)
            delay_cnt <= delay_cnt + 1'b1;
    end
end

// ���ݼĴ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        data_reg <= 8'd128;  // ��λʱ����м�ֵ
    end else if (data_valid) begin
        data_reg <= data_in;
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
        // ��������DAC���ݣ�ʵ������ת����
        dac_data <= data_reg;
        
        case (state)
            IDLE: begin
                dac_cs_n <= 1'b1;
                dac_wr1_n <= 1'b1;
                dac_wr2_n <= 1'b1;
                dac_xfer_n <= 1'b1;
                dac_ile <= 1'b0;
            end
            
            SETUP: begin
                dac_cs_n <= 1'b0;
                dac_ile <= 1'b1;
            end
            
            WRITE1: begin
                dac_wr1_n <= 1'b0;
            end
            
            HOLD1: begin
                dac_wr1_n <= 1'b1;
            end
            
            WRITE2: begin
                dac_xfer_n <= 1'b0;
                dac_wr2_n <= 1'b0;
            end
            
            HOLD2: begin
                dac_wr2_n <= 1'b1;
                dac_xfer_n <= 1'b1;
            end
            
            DONE: begin
                dac_cs_n <= 1'b1;
                dac_ile <= 1'b0;
            end
        endcase
    end
end

endmodule