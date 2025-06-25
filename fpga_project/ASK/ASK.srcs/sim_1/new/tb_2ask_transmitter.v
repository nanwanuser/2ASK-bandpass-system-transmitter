//////////////////////////////////////////////////////////////////////////////////
// Module Name: tb_2ask_transmitter
// Description: ����ƽ̨
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps
module tb_2ask_transmitter;
// ʱ�Ӻ͸�λ
reg clk;
reg rst_n;

// DAC�ӿ��ź�
wire [13:0] p2_db;
wire p2_clk_wrt;

// ��������
parameter CLK_PERIOD = 10;  // 100MHzʱ������Ϊ10ns

// ʵ��������ģ��
top_2ask_transmitter uut (
    .clk(clk),
    .rst_n(rst_n),
    .p2_db(p2_db),
    .p2_clk_wrt(p2_clk_wrt)
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

// ���DACʱ��Ƶ��
integer clk_edge_count;
integer start_time;
always @(posedge p2_clk_wrt) begin
    if (clk_edge_count == 0) begin
        start_time = $time;
    end
    clk_edge_count = clk_edge_count + 1;
    if (clk_edge_count == 10000) begin  // ���Ӽ�������߾���
        $display("DAC clock frequency: %f MHz", 
                 10000.0 * 1000.0 / ($time - start_time));
        clk_edge_count = 0;
    end
end

initial begin
    clk_edge_count = 0;
end

// ���DAC���ݱ仯
reg [13:0] last_dac_data;
integer data_change_count;
initial begin
    last_dac_data = 14'd0;
    data_change_count = 0;
end

always @(p2_db) begin
    if (p2_db !== last_dac_data) begin
        data_change_count = data_change_count + 1;
        if (data_change_count % 10000 == 0) begin  // ÿ10000�α仯��ӡһ�Σ�100MHz�¼��ٴ�ӡƵ�ʣ�
            $display("Time=%0t: DAC data=%h (change #%0d)", 
                     $time, p2_db, data_change_count);
        end
        last_dac_data = p2_db;
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
    $dumpvars(1, uut.dds_data_unsigned);
end
endmodule