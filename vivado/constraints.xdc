# 500 MHz Clock Constraint for Kintex UltraScale+
create_clock -period 2.000 -name clk [get_ports clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk]
