read_verilog -sv /nfs_eda_sw/softwares/Raptor/instl_dir/02_11_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/blackbox_models/cell_sim_blackbox.v
verilog_defines 
read_verilog  -I../../../.././rtl -I../../../../ -I/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-2492/ram_true_reg_addr_dp_1024x32_verilator/./rtl  /nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-2492/ram_true_reg_addr_dp_1024x32_verilator/./rtl/ram_true_reg_addr_dp_1024x32_verilator.v 

analyze -top ram_true_reg_addr_dp_1024x32_verilator
