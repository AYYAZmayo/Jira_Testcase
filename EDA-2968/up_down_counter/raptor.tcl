create_design up_down_counter
target_device GEMINI_COMPACT_10x8
add_design_file up_down_counter.v
set_top_module up_down_counter
analyze 
synthesize
packing
place
route
bitstream write_xml
