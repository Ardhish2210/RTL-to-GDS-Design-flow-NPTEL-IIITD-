read_liberty toy.lib
read_verilog test.v
link_design top
read_sdc test.sdc
set_power_activity -global -activity 0.1

report_power
