create_design axi_fifo_wrapper
target_device 1VG28
configure_ip axi_fifo_v1_0 -mod_name axi_fifo_wrapper -Pdata_width=32 -Paddr_width=32 -Pid_width=1 -Paw_user_en=0 -Paw_user_width=1 -Pw_user_en=0 -Pw_user_width=1 -Pb_user_en=0 -Pb_user_width=1 -Par_user_en=0 -Par_user_width=1 -Pr_user_en=0 -Pr_user_width=1 -Pwrite_fifo_depth=128 -Pread_fifo_depth=128 -Pwrite_fifo_delay=0 -Pread_fifo_delay=0 -out_file ./axi_fifo_wrapper/run_1/IPs/axi_fifo_wrapper
ipgenerate
add_library_path ./axi_fifo_wrapper/run_1/IPs/rapidsilicon/ip/axi_fifo/v1_0/axi_fifo_wrapper/src/
add_design_file ./axi_fifo_wrapper/run_1/IPs/rapidsilicon/ip/axi_fifo/v1_0/axi_fifo_wrapper/src/axi_fifo_wrapper\_v1_0.v
set_top_module axi_fifo_wrapper
analyze
synth_options -new_tdp36k 
synthesize delay
setup_lec_sim
simulation_options compilation icarus gate
simulate gate icarus
pin_loc_assign_method free
packing
place
route
simulation_options compilation icarus pnr
simulate pnr icarus
sta
power
bitstream 
