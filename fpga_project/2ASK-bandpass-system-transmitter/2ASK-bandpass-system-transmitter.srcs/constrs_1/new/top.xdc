# EGO1������Լ���ļ�
# ������2ASK��������

# ���õ�ѹ����
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# ϵͳʱ�� - ����50MHz����ʱ�ӷ�����ʱ��Լ��
set_property PACKAGE_PIN P17 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 20.00 -waveform {0 10} [get_ports clk]

# ��λ�ź�
set_property PACKAGE_PIN P15 [get_ports rst_n]
set_property IOSTANDARD LVCMOS33 [get_ports rst_n]

# UART�ӿ�
set_property PACKAGE_PIN T4 [get_ports uart_rx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_rx]

set_property PACKAGE_PIN N5 [get_ports uart_tx]
set_property IOSTANDARD LVCMOS33 [get_ports uart_tx]

# DAC�ӿ��ź�
# DAC��������
set_property PACKAGE_PIN T8 [get_ports {dac_data[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[0]}]

set_property PACKAGE_PIN R8 [get_ports {dac_data[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[1]}]

set_property PACKAGE_PIN T6 [get_ports {dac_data[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[2]}]

set_property PACKAGE_PIN R7 [get_ports {dac_data[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[3]}]

set_property PACKAGE_PIN U6 [get_ports {dac_data[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[4]}]

set_property PACKAGE_PIN U7 [get_ports {dac_data[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[5]}]

set_property PACKAGE_PIN V9 [get_ports {dac_data[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[6]}]

set_property PACKAGE_PIN U9 [get_ports {dac_data[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dac_data[7]}]

# DAC�����ź�
set_property PACKAGE_PIN N6 [get_ports dac_cs_n]
set_property IOSTANDARD LVCMOS33 [get_ports dac_cs_n]

set_property PACKAGE_PIN V6 [get_ports dac_wr1_n]
set_property IOSTANDARD LVCMOS33 [get_ports dac_wr1_n]

set_property PACKAGE_PIN R6 [get_ports dac_wr2_n]
set_property IOSTANDARD LVCMOS33 [get_ports dac_wr2_n]

set_property PACKAGE_PIN V7 [get_ports dac_xfer_n]
set_property IOSTANDARD LVCMOS33 [get_ports dac_xfer_n]

set_property PACKAGE_PIN R5 [get_ports dac_byte2]
set_property IOSTANDARD LVCMOS33 [get_ports dac_byte2]

# LEDָʾ��
set_property PACKAGE_PIN K3 [get_ports {led[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]

set_property PACKAGE_PIN M1 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]

set_property PACKAGE_PIN L1 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]

set_property PACKAGE_PIN K6 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]

set_property PACKAGE_PIN J5 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]

set_property PACKAGE_PIN H5 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]

set_property PACKAGE_PIN H6 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]

set_property PACKAGE_PIN K1 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]

# ʱ��Լ��
# ���������ӳ�
set_input_delay -clock [get_clocks sys_clk_pin] -min 0.0 [get_ports uart_rx]
set_input_delay -clock [get_clocks sys_clk_pin] -max 2.0 [get_ports uart_rx]

# ��������ӳ�
set_output_delay -clock [get_clocks sys_clk_pin] -min 0.0 [get_ports {dac_data[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -max 2.0 [get_ports {dac_data[*]}]
set_output_delay -clock [get_clocks sys_clk_pin] -min 0.0 [get_ports dac_cs_n]
set_output_delay -clock [get_clocks sys_clk_pin] -max 2.0 [get_ports dac_cs_n]
set_output_delay -clock [get_clocks sys_clk_pin] -min 0.0 [get_ports dac_wr1_n]
set_output_delay -clock [get_clocks sys_clk_pin] -max 2.0 [get_ports dac_wr1_n]
set_output_delay -clock [get_clocks sys_clk_pin] -min 0.0 [get_ports dac_wr2_n]
set_output_delay -clock [get_clocks sys_clk_pin] -max 2.0 [get_ports dac_wr2_n]
set_output_delay -clock [get_clocks sys_clk_pin] -min 0.0 [get_ports dac_xfer_n]
set_output_delay -clock [get_clocks sys_clk_pin] -max 2.0 [get_ports dac_xfer_n]

# �������·��������LED�Ȳ��ؼ����ź�
set_false_path -to [get_ports {led[*]}]
set_false_path -to [get_ports uart_tx]