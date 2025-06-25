## 时钟约束
# 100MHz时钟连接到P17引脚
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports clk]

## 复位信号
# 根据EGO1手册，复位按钮连接到P15
set_property -dict {PACKAGE_PIN P15 IOSTANDARD LVCMOS33} [get_ports rst_n]

## AD9767 DAC接口信号 - 使用扩展板引脚映射
# P2_DB数据总线（14位）
# 按照原理图顺序映射引脚
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

# DAC时钟/写信号（CLK和WRT连在一起）
set_property -dict {PACKAGE_PIN B17 IOSTANDARD LVCMOS33} [get_ports p2_clk_wrt]

## 配置电压
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

## 时序约束
# 设置false path用于异步复位
set_false_path -from [get_ports rst_n]

# DAC输出约束 - AD9767高速时序（100MHz全速运行）
# 数据建立时间和保持时间（更严格的约束）
set_output_delay -clock [get_clocks sys_clk] -max 10 [get_ports {p2_db[*]}]
set_output_delay -clock [get_clocks sys_clk] -min 0.2 [get_ports {p2_db[*]}]

# DAC时钟信号约束（关键路径）
set_output_delay -clock [get_clocks sys_clk] -max 10 [get_ports p2_clk_wrt]
set_output_delay -clock [get_clocks sys_clk] -min 0.1 [get_ports p2_clk_wrt]

# 设置驱动强度和转换速率
# AD9767支持高速操作，使用FAST转换速率
set_property DRIVE 12 [get_ports {p2_db[*]}]
set_property SLEW FAST [get_ports {p2_db[*]}]
set_property DRIVE 16 [get_ports p2_clk_wrt]
set_property SLEW FAST [get_ports p2_clk_wrt]

## 设置输出端口负载 
#set_load 50 [get_ports {p2_db[*]}]
#set_load 50 [get_ports p2_clk_wrt]
