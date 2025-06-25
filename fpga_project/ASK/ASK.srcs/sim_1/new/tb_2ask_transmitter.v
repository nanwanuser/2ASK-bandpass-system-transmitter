`timescale 1ns / 1ps

module tb_2ask_transmitter;

// ʱ�Ӻ͸�λ
reg clk;
reg rst_n;

// DAC�ӿ��ź�
wire [7:0] dac_data;
wire dac_cs_n;
wire dac_wr1_n;
wire dac_wr2_n;
wire dac_xfer_n;
wire dac_ile;

// ��������
parameter CLK_PERIOD = 10;  // 100MHzʱ������Ϊ10ns

// ʵ��������ģ��
top_2ask_transmitter uut (
    .clk(clk),
    .rst_n(rst_n),
    .dac_data(dac_data),
    .dac_cs_n(dac_cs_n),
    .dac_wr1_n(dac_wr1_n),
    .dac_wr2_n(dac_wr2_n),
    .dac_xfer_n(dac_xfer_n),
    .dac_ile(dac_ile)
);

// ʱ������
initial begin
    clk = 1'b0;
    forever #(CLK_PERIOD/2) clk = ~clk;
end

// ��λ�ͷ������
initial begin
    // ��ʼ��
    rst_n = 1'b0;
    
    // �ȴ�100ns���ͷŸ�λ
    #100;
    rst_n = 1'b1;
    
    // ����10ms�۲켸����������Ԫ
    #10_000_000;
    
    $display("Simulation completed!");
    $finish;
end

// ���DAC�����ź�ʱ��
integer wr1_falling_edge_time;
integer wr1_rising_edge_time;

always @(negedge dac_wr1_n) begin
    wr1_falling_edge_time = $time;
    $display("Time=%0t: WR1 falling edge (write started)", $time);
end

always @(posedge dac_wr1_n) begin
    wr1_rising_edge_time = $time;
    $display("Time=%0t: WR1 rising edge (write completed), pulse width=%0dns", 
             $time, wr1_rising_edge_time - wr1_falling_edge_time);
end

// ���CS�ź�
always @(negedge dac_cs_n) begin
    $display("Time=%0t: CS asserted (chip selected)", $time);
end

always @(posedge dac_cs_n) begin
    $display("Time=%0t: CS deasserted (chip deselected)", $time);
end

// ���̶������ź�
initial begin
    #200; // �ȴ���λ���
    
    if (dac_wr2_n !== 1'b0) $display("ERROR: dac_wr2_n should be 0 for single-buffer mode");
    if (dac_xfer_n !== 1'b0) $display("ERROR: dac_xfer_n should be 0 for single-buffer mode");
    if (dac_ile !== 1'b1) $display("ERROR: dac_ile should be 1");
    
    $display("DAC configured in Control Signal Timing mode");
end

// ���DAC���ݱ仯
reg [7:0] last_dac_data;
integer data_change_count;

initial begin
    last_dac_data = 8'd0;
    data_change_count = 0;
end

always @(dac_data) begin
    if (dac_data !== last_dac_data) begin
        data_change_count = data_change_count + 1;
        $display("Time=%0t: DAC data changed from %h to %h (change #%0d)", 
                 $time, last_dac_data, dac_data, data_change_count);
        last_dac_data = dac_data;
    end
end

// ���ɲ����ļ�
initial begin
    $dumpfile("tb_2ask_transmitter.vcd");
    $dumpvars(0, tb_2ask_transmitter);
    
    // �������ڲ��ź�
    $dumpvars(1, uut.modulated_signal);
    $dumpvars(1, uut.modulation_enable);
    $dumpvars(1, uut.dds_data);
end

endmodule