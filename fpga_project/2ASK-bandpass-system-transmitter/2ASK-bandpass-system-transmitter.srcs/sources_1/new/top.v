module top(
    input wire clk,              // 100MHz系统时钟
    input wire rst_n,            // 复位信号，低电平有效
    
    // UART接口
    input wire uart_rx,          // UART接收端 (T4)
    output wire uart_tx,         // UART发送端 (N5) - 可用于调试
    
    // DAC接口
    output wire [7:0] dac_data,  // DAC数据总线
    output wire dac_cs_n,        // DAC片选信号，低电平有效
    output wire dac_wr1_n,       // DAC写信号1，低电平有效
    output wire dac_wr2_n,       // DAC写信号2，低电平有效
    output wire dac_xfer_n,      // DAC传输信号，低电平有效
    output wire dac_byte2,       // DAC字节2信号
    
    // LED指示灯
    output wire [7:0] led        // 状态指示LED
);

    // 内部信号
    wire clk_50m;                // 50MHz时钟
    wire uart_rx_valid;          // UART接收数据有效
    wire [7:0] uart_rx_data;     // UART接收数据
    wire uart_rx_ready;          // UART接收就绪
    
    wire data_bit;               // 解码后的数据位
    wire data_valid;             // 数据位有效信号
    
    wire [15:0] filtered_data;   // 余弦成形滤波后的数据
    wire filter_valid;           // 滤波器输出有效
    
    wire [15:0] carrier_i;       // 载波I分量
    wire carrier_valid;          // 载波有效信号
    
    wire [15:0] modulated_data;  // 调制后的数据
    wire mod_valid;              // 调制输出有效
    
    wire [7:0] dac_out;          // DAC输出数据
    wire dac_valid;              // DAC数据有效

    // 生成50MHz时钟用于采样
    clk_divider clk_div_inst(
        .clk_in(clk),
        .rst_n(rst_n),
        .clk_out(clk_50m)
    );

    // UART接收模块
    uart_receiver uart_rx_inst(
        .clk(clk),
        .rst_n(rst_n),
        .uart_rx(uart_rx),
        .data_out(uart_rx_data),
        .data_valid(uart_rx_valid),
        .ready(uart_rx_ready)
    );

    // 数据解码模块 - 将接收到的字节转换为比特流
    data_decoder decoder_inst(
        .clk(clk),
        .rst_n(rst_n),
        .data_in(uart_rx_data),
        .data_valid(uart_rx_valid),
        .bit_out(data_bit),
        .bit_valid(data_valid)
    );

    // 余弦成形滤波器
    cosine_filter filter_inst(
        .clk(clk),
        .rst_n(rst_n),
        .data_in(data_bit),
        .data_valid(data_valid),
        .filtered_out(filtered_data),
        .out_valid(filter_valid)
    );

    // 载波生成器 (1MHz)
    carrier_generator carrier_inst(
        .clk(clk),
        .rst_n(rst_n),
        .carrier_i(carrier_i),
        .carrier_valid(carrier_valid)
    );

    // 2ASK调制器
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

    // DAC控制器
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

    // 状态指示LED
    assign led[0] = uart_rx_valid;    // UART接收指示
    assign led[1] = data_valid;       // 数据位指示
    assign led[2] = filter_valid;     // 滤波器输出指示
    assign led[3] = mod_valid;        // 调制输出指示
    assign led[4] = carrier_valid;    // 载波指示
    assign led[7:5] = 3'b000;         // 保留

    // UART发送端暂时不使用
    assign uart_tx = 1'b1;

endmodule