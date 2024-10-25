#!/usr/bin/tclsh
create_design sdp_nsplit_ram_1024x36_R4W4
target_device GEMINI
add_include_path ./rtl
add_library_path ./rtl
add_design_file ./rtl/sdp_nsplit_ram_1024x36_R4W4.v
set_top_module sdp_nsplit_ram_1024x36_R4W4
ipgenerate
synthesize delay
pnr_options --gen_post_synthesis_netlist on
pnr_netlist_lang verilog
packing
global_placement
place
route
sta
power
bitstream
