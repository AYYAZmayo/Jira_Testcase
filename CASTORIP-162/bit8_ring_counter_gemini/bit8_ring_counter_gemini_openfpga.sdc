create_clock -period 10 -name clock0 
set_input_delay 1 -clock clock0 [get_ports {*}] 
set_output_delay 1 -clock clock0 [get_ports {*}] 
