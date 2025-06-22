module top(
    input wire clk,              // 100MHzϵͳʱ��
    input wire rst_n,            // ��λ�źţ��͵�ƽ��Ч
    
    // UART�ӿ�
    input wire uart_rx,          // UART���ն� (T4)
    output wire uart_tx,         // UART���Ͷ� (N5) - �����ڵ���
    
    // DAC�ӿ�
    output wire [7:0] dac_data,  // DAC��������
    output wire dac_cs_n,        // DACƬѡ�źţ��͵�ƽ��Ч
    output wire dac_wr1_n,       // DACд�ź�1���͵�ƽ��Ч
    output wire dac_wr2_n,       // DACд�ź�2���͵�ƽ��Ч
    output wire dac_xfer_n,      // DAC�����źţ��͵�ƽ��Ч
    output wire dac_byte2,       // DAC�ֽ�2�ź�
    
    // LEDָʾ��
    output wire [7:0] led        // ״ָ̬ʾLED
);

    // �ڲ��ź�
    wire clk_50m;                // 50MHzʱ��
    wire uart_rx_valid;          // UART����������Ч
    wire [7:0] uart_rx_data;     // UART��������
    wire uart_rx_ready;          // UART���վ���
    
    wire data_bit;               // ����������λ
    wire data_valid;             // ����λ��Ч�ź�
    
    wire [15:0] filtered_data;   // ���ҳ����˲��������
    wire filter_valid;           // �˲��������Ч
    
    wire [15:0] carrier_i;       // �ز�I����
    wire carrier_valid;          // �ز���Ч�ź�
    
    wire [15:0] modulated_data;  // ���ƺ������
    wire mod_valid;              // ���������Ч
    
    wire [7:0] dac_out;          // DAC�������
    wire dac_valid;              // DAC������Ч

    // ����50MHzʱ�����ڲ���
    clk_divider clk_div_inst(
        .clk_in(clk),
        .rst_n(rst_n),
        .clk_out(clk_50m)
    );

    // UART����ģ��
    uart_receiver uart_rx_inst(
        .clk(clk),
        .rst_n(rst_n),
        .uart_rx(uart_rx),
        .data_out(uart_rx_data),
        .data_valid(uart_rx_valid),
        .ready(uart_rx_ready)
    );

    // ���ݽ���ģ�� - �����յ����ֽ�ת��Ϊ������
    data_decoder decoder_inst(
        .clk(clk),
        .rst_n(rst_n),
        .data_in(uart_rx_data),
        .data_valid(uart_rx_valid),
        .bit_out(data_bit),
        .bit_valid(data_valid)
    );

    // ���ҳ����˲���
    cosine_filter filter_inst(
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_bit),
        .data_valid(data_valid),
        .filtered_out(filtered_data),
        .out_valid(filter_valid)
    );

    // �ز������� (1MHz)
    carrier_generator carrier_inst(
        .clk(clk),
        .rst_n(rst_n),
        .carrier_i(carrier_i),
        .carrier_valid(carrier_valid)
    );

    // 2ASK������
    ask_modulator modulator_inst(
        .clk(clk),
        .rst_n(rst_n),
        .baseband_data(filtered_data),
        .baseband_valid(filter_valid),
        .carrier_i(carrier_i),
        .carrier_valid(carrier_valid),
        .modulated_out(modulated_data),
        .out_valid(mod_valid)
    );

    // DAC������
    dac_controller dac_inst(
        .clk(clk),
        .rst_n(rst_n),
        .data_in(modulated_data),
        .data_valid(mod_valid),
        .dac_data(dac_data),
        .dac_cs_n(dac_cs_n),
        .dac_wr1_n(dac_wr1_n),
        .dac_wr2_n(dac_wr2_n),
        .dac_xfer_n(dac_xfer_n),
        .dac_byte2(dac_byte2)
    );

    // ״ָ̬ʾLED
    assign led[0] = uart_rx_valid;    // UART����ָʾ
    assign led[1] = data_valid;       // ����λָʾ
    assign led[2] = filter_valid;     // �˲������ָʾ
    assign led[3] = mod_valid;        // �������ָʾ
    assign led[4] = carrier_valid;    // �ز�ָʾ
    assign led[7:5] = 3'b000;         // ����

    // UART���Ͷ���ʱ��ʹ��
    assign uart_tx = 1'b1;

endmodule