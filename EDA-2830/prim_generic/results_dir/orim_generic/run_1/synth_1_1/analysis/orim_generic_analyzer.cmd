read_verilog -sv /nfs_eda_sw/softwares/Raptor/instl_dir/05_04_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/blackbox_models/cell_sim_blackbox.v
plugin -i systemverilog
read_systemverilog -synth  -top prim_generic_flash -I../../../../.././rtl -I../../../../.. -I/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl  -sv /nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_alert_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_mubi_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_ram_1p_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_pad_wrapper_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_secded_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_subreg_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_util_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/top_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/entropy_src_reg_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/entropy_src_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/edn_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/ast_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/jtag_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/flash_ctrl_reg_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/flash_ctrl_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/flash_phy_pkg.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_fifo_sync.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_generic_flash.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_generic_flash_bank.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_generic_ram_1p.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_ram_1p.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_secded_inv_39_32_dec.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_secded_inv_39_32_enc.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_secded_inv_64_57_dec.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/prim_secded_inv_64_57_enc.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_adapter_sram.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_cmd_intg_chk.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_cmd_intg_gen.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_data_integ_dec.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_data_integ_enc.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_err.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_rsp_intg_gen.sv \
/nfs_scratch/scratch/CGA/repo/2024-05-05-22-22-48_T10878R122/Validation/RTL_testcases/RTL_Benchmarks_Gap_Analysis/prim_generic/results_dir/.././rtl/tlul_sram_byte.sv \

analyze -top prim_generic_flash
