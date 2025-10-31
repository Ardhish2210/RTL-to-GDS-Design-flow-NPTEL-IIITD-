read_liberty toy.lib
read_verilog top.v
link_design top
read_sdc top.sdc
report_checks -path_delay max -format full
report_checks -path_delay min -format full
