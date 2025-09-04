create_clock -name CLK -period 1000 [get_ports clk]
set_input_delay 5 -clock CLK [get_ports a] 
set_input_delay 5 -clock CLK [get_ports b] 
set_output_delay 5 -clock CLK [get_ports out] 
