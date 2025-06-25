## ʱ��Լ��
# 100MHzʱ�����ӵ�P17����
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports clk]

## ��λ�ź�
# ����EGO1�ֲᣬ��λ��ť���ӵ�P15
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports rst_n]

## DAC�ӿ��ź�
# DAC��������
set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVCMOS33} [get_ports {dac_data[0]}]
set_property -dict {PACKAGE_PIN R8 IOSTANDARD LVCMOS33} [get_ports {dac_data[1]}]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS33} [get_ports {dac_data[2]}]
set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVCMOS33} [get_ports {dac_data[3]}]
set_property -dict {PACKAGE_PIN U6 IOSTANDARD LVCMOS33} [get_ports {dac_data[4]}]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {dac_data[5]}]
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS33} [get_ports {dac_data[6]}]
set_property -dict {PACKAGE_PIN U9 IOSTANDARD LVCMOS33} [get_ports {dac_data[7]}]

# DAC�����ź�
set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVCMOS33} [get_ports dac_cs_n]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports dac_wr1_n]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS33} [get_ports dac_wr2_n]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports dac_xfer_n]
set_property -dict {PACKAGE_PIN R5 IOSTANDARD LVCMOS33} [get_ports dac_ile]

## ���õ�ѹ
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## ʱ��Լ��
# ����false path�����첽��λ
set_false_path -from [get_ports rst_n]

# DAC���Լ�� - ���Control Signal Timingģʽ�Ż�
# ����DAC�������ʴ�����ͣ����Էſ�ʱ��Ҫ��
set_output_delay -clock [get_clocks sys_clk] -max 8.0 [get_ports {dac_data[*]}]
set_output_delay -clock [get_clocks sys_clk] -min 2.0 [get_ports {dac_data[*]}]

# DAC�����ź�Լ�� - ��Щ�ź������Ƕ�̬��
set_output_delay -clock [get_clocks sys_clk] -max 3.0 [get_ports {dac_cs_n dac_wr1_n dac_wr2_n dac_xfer_n dac_ile}]
set_output_delay -clock [get_clocks sys_clk] -min 1.0 [get_ports {dac_cs_n dac_wr1_n dac_wr2_n dac_xfer_n dac_ile}]

# ��������ǿ�Ⱥ�ת�����ʣ������ź������ԣ������迹��ƥ��
# ��������ǿ�ȣ�ʹ��SLOWת������
set_property DRIVE 8 [get_ports {dac_data[*]}]
set_property SLEW SLOW [get_ports {dac_data[*]}]
set_property DRIVE 8 [get_ports {dac_cs_n dac_wr1_n dac_wr2_n dac_xfer_n dac_ile}]
set_property SLEW SLOW [get_ports {dac_cs_n dac_wr1_n dac_wr2_n dac_xfer_n dac_ile}]
