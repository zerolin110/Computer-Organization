#==========================================================
# 时钟约束 (100MHz 系统时钟)
#==========================================================
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN E3} [get_ports clk_100M]
create_clock -name clk_100M -period 10 [get_ports clk_100M]

#==========================================================
# 复位按键 (BT[3])
#==========================================================
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN H16} [get_ports rst]

#==========================================================
# 三个控制按键
#==========================================================
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN D15} [get_ports clk_A]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN C10} [get_ports clk_B]
set_property -dict {IOSTANDARD LVCMOS33 PACKAGE_PIN C11} [get_ports clk_F]

#==========================================================
# 36位 拨码开关 SW[35:0]
#==========================================================
set_property IOSTANDARD LVCMOS33 [get_ports SW]
set_property PACKAGE_PIN T10 [get_ports {SW[35]}]
set_property PACKAGE_PIN R10 [get_ports {SW[34]}]
set_property PACKAGE_PIN T11 [get_ports {SW[33]}]
set_property PACKAGE_PIN R11 [get_ports {SW[32]}]
set_property PACKAGE_PIN T8  [get_ports {SW[31]}]
set_property PACKAGE_PIN U1  [get_ports {SW[30]}]
set_property PACKAGE_PIN U2  [get_ports {SW[29]}]
set_property PACKAGE_PIN U3  [get_ports {SW[28]}]
set_property PACKAGE_PIN V5  [get_ports {SW[27]}]
set_property PACKAGE_PIN V6  [get_ports {SW[26]}]
set_property PACKAGE_PIN V7  [get_ports {SW[25]}]
set_property PACKAGE_PIN V9  [get_ports {SW[24]}]
set_property PACKAGE_PIN V11 [get_ports {SW[23]}]
set_property PACKAGE_PIN V12 [get_ports {SW[22]}]
set_property PACKAGE_PIN U14 [get_ports {SW[21]}]
set_property PACKAGE_PIN V15 [get_ports {SW[20]}]
set_property PACKAGE_PIN V16 [get_ports {SW[19]}]
set_property PACKAGE_PIN V17 [get_ports {SW[18]}]
set_property PACKAGE_PIN R18 [get_ports {SW[17]}]
set_property PACKAGE_PIN P18 [get_ports {SW[16]}]
set_property PACKAGE_PIN R8  [get_ports {SW[15]}]
set_property PACKAGE_PIN T9  [get_ports {SW[14]}]
set_property PACKAGE_PIN V1  [get_ports {SW[13]}]
set_property PACKAGE_PIN V2  [get_ports {SW[12]}]
set_property PACKAGE_PIN V4  [get_ports {SW[11]}]
set_property PACKAGE_PIN U6  [get_ports {SW[10]}]
set_property PACKAGE_PIN U7  [get_ports {SW[9]}]
set_property PACKAGE_PIN U9  [get_ports {SW[8]}]
set_property PACKAGE_PIN U11 [get_ports {SW[7]}]
set_property PACKAGE_PIN U12 [get_ports {SW[6]}]
set_property PACKAGE_PIN U13 [get_ports {SW[5]}]
set_property PACKAGE_PIN V14 [get_ports {SW[4]}]
set_property PACKAGE_PIN U16 [get_ports {SW[3]}]
set_property PACKAGE_PIN U17 [get_ports {SW[2]}]
set_property PACKAGE_PIN T18 [get_ports {SW[1]}]
set_property PACKAGE_PIN P17 [get_ports {SW[0]}]

#==========================================================
# 36位 LED 输出 LED[35:0]
#==========================================================
set_property IOSTANDARD LVCMOS33 [get_ports LED]
set_property PACKAGE_PIN R13 [get_ports {LED[35]}]
set_property PACKAGE_PIN T13 [get_ports {LED[34]}]
set_property PACKAGE_PIN R12 [get_ports {LED[33]}]
set_property PACKAGE_PIN P14 [get_ports {LED[32]}]
set_property PACKAGE_PIN L3  [get_ports {LED[31]}]
set_property PACKAGE_PIN L4  [get_ports {LED[30]}]
set_property PACKAGE_PIN M3  [get_ports {LED[29]}]
set_property PACKAGE_PIN M4  [get_ports {LED[28]}]
set_property PACKAGE_PIN N4  [get_ports {LED[27]}]
set_property PACKAGE_PIN P3  [get_ports {LED[26]}]
set_property PACKAGE_PIN P4  [get_ports {LED[25]}]
set_property PACKAGE_PIN R3  [get_ports {LED[24]}]
set_property PACKAGE_PIN T3  [get_ports {LED[23]}]
set_property PACKAGE_PIN T4  [get_ports {LED[22]}]
set_property PACKAGE_PIN R5  [get_ports {LED[21]}]
set_property PACKAGE_PIN T5  [get_ports {LED[20]}]
set_property PACKAGE_PIN R6  [get_ports {LED[19]}]
set_property PACKAGE_PIN T6  [get_ports {LED[18]}]
set_property PACKAGE_PIN R7  [get_ports {LED[17]}]
set_property PACKAGE_PIN V10 [get_ports {LED[16]}]
set_property PACKAGE_PIN U18 [get_ports {LED[15]}]
set_property PACKAGE_PIN R17 [get_ports {LED[14]}]
set_property PACKAGE_PIN M18 [get_ports {LED[13]}]
set_property PACKAGE_PIN M17 [get_ports {LED[12]}]
set_property PACKAGE_PIN N17 [get_ports {LED[11]}]
set_property PACKAGE_PIN L18 [get_ports {LED[10]}]
set_property PACKAGE_PIN K16 [get_ports {LED[9]}]
set_property PACKAGE_PIN P15 [get_ports {LED[8]}]
set_property PACKAGE_PIN N15 [get_ports {LED[7]}]
set_property PACKAGE_PIN N16 [get_ports {LED[6]}]
set_property PACKAGE_PIN M16 [get_ports {LED[5]}]
set_property PACKAGE_PIN R16 [get_ports {LED[4]}]
set_property PACKAGE_PIN T16 [get_ports {LED[3]}]
set_property PACKAGE_PIN R15 [get_ports {LED[2]}]
set_property PACKAGE_PIN T15 [get_ports {LED[1]}]
set_property PACKAGE_PIN T14 [get_ports {LED[0]}]

#==========================================================
# 时序约束 
#==========================================================
set_false_path -from [get_ports rst]
set_false_path -from [get_ports clk_A]
set_false_path -from [get_ports clk_B]
set_false_path -from [get_ports clk_F]
set_false_path -from [get_ports SW]