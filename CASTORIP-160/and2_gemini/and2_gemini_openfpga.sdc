create_clock -period 10 -name clk 
set_input_delay 1 -clock clk [get_ports {*}] 
set_output_delay 1 -clock clk [get_ports {*}] 
