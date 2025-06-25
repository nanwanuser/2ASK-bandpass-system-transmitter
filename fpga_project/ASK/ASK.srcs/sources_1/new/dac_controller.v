`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Module Name: dac_controller
// Description: DAC0832������ģ��
// 
// DAC0832ʱ��Ҫ��
// 1. ˫����ģʽ����
// 2. ��д������Ĵ������ٴ��䵽DAC�Ĵ���
// 3. ֧�ֲ���������Ԫ���ʵ���
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

// ��������
parameter CLK_FREQ = 100_000_000;     // ϵͳʱ��Ƶ��
parameter UPDATE_RATE = 100_000;      // DAC�����ʣ�100KHz������Ԫ���ʸߣ�
parameter UPDATE_PERIOD = CLK_FREQ / UPDATE_RATE;

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
reg [9:0] update_counter;
reg update_enable;

// ʱ�����������DAC0832�����ֲᣩ
parameter SETUP_TIME = 4'd2;    // ����ʱ��
parameter WRITE_TIME = 4'd4;    // д������
parameter HOLD_TIME  = 4'd2;    // ����ʱ��

// DAC�������ʿ���
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        update_counter <= 10'd0;
        update_enable <= 1'b0;
    end else begin
        if (update_counter >= UPDATE_PERIOD - 1) begin
            update_counter <= 10'd0;
            update_enable <= 1'b1;
        end else begin
            update_counter <= update_counter + 1'b1;
            update_enable <= 1'b0;
        end
    end
end

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
            if (update_enable && data_valid)
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
    end else if (data_valid && update_enable) begin
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
        // ��������DAC����
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
                dac_cs_n <= 1'b0;    // ѡ��DAC
                dac_ile <= 1'b1;     // ʹ����������
            end
            
            WRITE1: begin
                dac_wr1_n <= 1'b0;   // д������Ĵ���
            end
            
            HOLD1: begin
                dac_wr1_n <= 1'b1;   // �ͷ�WR1
            end
            
            WRITE2: begin
                dac_xfer_n <= 1'b0;  // ���䵽DAC�Ĵ���
                dac_wr2_n <= 1'b0;   // дDAC�Ĵ���
            end
            
            HOLD2: begin
                dac_wr2_n <= 1'b1;   // �ͷ�WR2
                dac_xfer_n <= 1'b1;  // �ͷ�XFER
            end
            
            DONE: begin
                dac_cs_n <= 1'b1;    // ȡ��Ƭѡ
                dac_ile <= 1'b0;     // ������������
            end
        endcase
    end
end

endmodule