## 时钟约束
# 假设100MHz时钟连接到引脚，需要根据实际板卡修改
set_property -dict {PACKAGE_PIN P17 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk -waveform {0.000 5.000} [get_ports clk]

## 复位信号
# 需要根据实际板卡修改引脚
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports rst_n]

## DAC接口信号
# 注意：DAC接收无符号数据（0-255），中间值为128
# 以下引脚分配需要根据实际硬件连接修改

# DAC数据总线
set_property -dict {PACKAGE_PIN T8 IOSTANDARD LVCMOS33} [get_ports {dac_data[0]}]
set_property -dict {PACKAGE_PIN R8 IOSTANDARD LVCMOS33} [get_ports {dac_data[1]}]
set_property -dict {PACKAGE_PIN T6 IOSTANDARD LVCMOS33} [get_ports {dac_data[2]}]
set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVCMOS33} [get_ports {dac_data[3]}]
set_property -dict {PACKAGE_PIN U6 IOSTANDARD LVCMOS33} [get_ports {dac_data[4]}]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {dac_data[5]}]
set_property -dict {PACKAGE_PIN V9 IOSTANDARD LVCMOS33} [get_ports {dac_data[6]}]
set_property -dict {PACKAGE_PIN U9 IOSTANDARD LVCMOS33} [get_ports {dac_data[7]}]

# DAC控制信号
set_property -dict {PACKAGE_PIN N6 IOSTANDARD LVCMOS33} [get_ports dac_cs_n]
set_property -dict {PACKAGE_PIN V6 IOSTANDARD LVCMOS33} [get_ports dac_wr1_n]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS33} [get_ports dac_wr2_n]
set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports dac_xfer_n]
set_property -dict {PACKAGE_PIN R5 IOSTANDARD LVCMOS33} [get_ports dac_ile]

## 时序约束
# DAC输出延迟约束（根据DAC0832数据手册调整）
set_output_delay -clock [get_clocks sys_clk] -max 5.0 [get_ports {dac_data[*]}]
set_output_delay -clock [get_clocks sys_clk] -min 1.0 [get_ports {dac_data[*]}]

set_output_delay -clock [get_clocks sys_clk] -max 5.0 [get_ports dac_cs_n]
set_output_delay -clock [get_clocks sys_clk] -min 1.0 [get_ports dac_cs_n]

set_output_delay -clock [get_clocks sys_clk] -max 5.0 [get_ports dac_wr1_n]
set_output_delay -clock [get_clocks sys_clk] -min 1.0 [get_ports dac_wr1_n]

set_output_delay -clock [get_clocks sys_clk] -max 5.0 [get_ports dac_wr2_n]
set_output_delay -clock [get_clocks sys_clk] -min 1.0 [get_ports dac_wr2_n]

set_output_delay -clock [get_clocks sys_clk] -max 5.0 [get_ports dac_xfer_n]
set_output_delay -clock [get_clocks sys_clk] -min 1.0 [get_ports dac_xfer_n]

set_output_delay -clock [get_clocks sys_clk] -max 5.0 [get_ports dac_ile]
set_output_delay -clock [get_clocks sys_clk] -min 1.0 [get_ports dac_ile]

## 配置电压
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]


# 设置输入延迟（如果有外部输入）
# set_input_delay -clock [get_clocks sys_clk] -max 2.0 [get_ports rst_n]
# set_input_delay -clock [get_clocks sys_clk] -min 0.5 [get_ports rst_n]

## 物理约束（可选）
# 设置驱动强度
# set_property DRIVE 12 [get_ports {dac_data[*]}]
# set_property SLEW SLOW [get_ports {dac_data[*]}]