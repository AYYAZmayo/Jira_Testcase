create_design o_serdes_x4_o_delay_o_buf
add_design_file o_serdes_x4_o_delay_o_buf.v
set_top_module o_serdes_x4_o_delay_o_buf
# add_constraint_file constraints.sdc
add_constraint_file pin_constraints.pin
target_device 1VG28

analyze
synthesize
packing
place
route
sta
bitstream