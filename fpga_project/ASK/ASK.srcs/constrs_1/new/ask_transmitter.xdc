## ʱ��Լ��
# 100MHzʱ�����ӵ�P17����
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports clk]

## ��λ�ź�
# ����EGO1�ֲᣬ��λ��ť���ӵ�P15
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports rst_n]

## AD9767 DAC�ӿ��ź� - ʹ����չ������ӳ��
# P2_DB�������ߣ�14λ��
# ����ԭ��ͼ˳��ӳ������
set_property -dict {PACKAGE_PIN A11 IOSTANDARD LVCMOS33} [get_ports {p2_db[0]}]  
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports {p2_db[1]}]  
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports {p2_db[2]}]  
set_property -dict {PACKAGE_PIN B13 IOSTANDARD LVCMOS33} [get_ports {p2_db[3]}]  
set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVCMOS33} [get_ports {p2_db[4]}]  
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports {p2_db[5]}]  
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports {p2_db[6]}]  
set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33} [get_ports {p2_db[7]}]  
set_property -dict {PACKAGE_PIN A18 IOSTANDARD LVCMOS33} [get_ports {p2_db[8]}]  
set_property -dict {PACKAGE_PIN A13 IOSTANDARD LVCMOS33} [get_ports {p2_db[9]}]  
set_property -dict {PACKAGE_PIN A14 IOSTANDARD LVCMOS33} [get_ports {p2_db[10]}] 
set_property -dict {PACKAGE_PIN A15 IOSTANDARD LVCMOS33} [get_ports {p2_db[11]}] 
set_property -dict {PACKAGE_PIN A16 IOSTANDARD LVCMOS33} [get_ports {p2_db[12]}] 
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS33} [get_ports {p2_db[13]}] 

# DACʱ��/д�źţ�CLK��WRT����һ��
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports p2_clk_wrt]

## ���õ�ѹ
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## ʱ��Լ��
# ����false path�����첽��λ
set_false_path -from [get_ports rst_n]

# DAC���Լ�� - AD9767����ʱ��100MHzȫ�����У�
# ���ݽ���ʱ��ͱ���ʱ�䣨���ϸ��Լ����
set_output_delay -clock [get_clocks sys_clk] -max 10 [get_ports {p2_db[*]}]
set_output_delay -clock [get_clocks sys_clk] -min 0.2 [get_ports {p2_db[*]}]

# DACʱ���ź�Լ�����ؼ�·����
set_output_delay -clock [get_clocks sys_clk] -max 10 [get_ports p2_clk_wrt]
set_output_delay -clock [get_clocks sys_clk] -min 0.1 [get_ports p2_clk_wrt]

# ��������ǿ�Ⱥ�ת������
# AD9767֧�ָ��ٲ�����ʹ��FASTת������
set_property DRIVE 12 [get_ports {p2_db[*]}]
set_property SLEW FAST [get_ports {p2_db[*]}]
set_property DRIVE 16 [get_ports p2_clk_wrt]
set_property SLEW FAST [get_ports p2_clk_wrt]

## ��������˿ڸ��� 
#set_load 50 [get_ports {p2_db[*]}]
#set_load 50 [get_ports p2_clk_wrt]
