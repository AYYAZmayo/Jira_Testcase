/nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/bin/HDL_simulator/verilator/share/verilator/bin/verilator -cc --assert -Wall -Wno-DECLFILENAME -Wno-UNUSEDSIGNAL -Wno-TIMESCALEMOD -Wno-WIDTH -Wno-fatal -Wno-BLKANDNBLK -Wno-BLKLOOPINIT -Wno-MULTIDRIVEN -DSIM_VERILATOR --timing --trace-fst  -DGATE_SIM=1 --top-module co_sim_syn2 -I../../../../.././rtl -I/nfs_scratch/scratch/CompilerValidation/abdul_hameed/12SEPT/Validation/RTL_testcases/Benchmarking_QoR_testcases/syn2/results_dir/.././rtl -I/nfs_scratch/scratch/CompilerValidation/abdul_hameed/12SEPT/Validation/RTL_testcases/Benchmarking_QoR_testcases/syn2/results_dir/./sim/co_sim_tb -y ../../../../.././rtl +libext+.v +libext+.sv +1800-2012ext+.v +1800-2012ext+.sv /nfs_scratch/scratch/CompilerValidation/abdul_hameed/12SEPT/Validation/RTL_testcases/Benchmarking_QoR_testcases/syn2/results_dir/./sim/co_sim_tb/co_sim_syn2.v /nfs_scratch/scratch/CompilerValidation/abdul_hameed/12SEPT/Validation/RTL_testcases/Benchmarking_QoR_testcases/syn2/results_dir/.././rtl/syn2.v --binary /nfs_scratch/scratch/CompilerValidation/abdul_hameed/12SEPT/Validation/RTL_testcases/Benchmarking_QoR_testcases/syn2/results_dir/syn2/run_1/synth_1_1/synthesis/syn2_post_synth.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/simlib.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/brams_sim.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/llatches_sim.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/CARRY.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_SERDES_CLK.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_BUF_DS.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/LUT1.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/I_DELAY.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_INTF_JTAG.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_INTF_AXI_M0.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_INTF_AXI_M1.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_BUFT.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/LUT2.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/FCLK_BUF.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_INTF_AHB_S.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/DFFRE.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_BUF.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_INTF_DMA.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/FIFO18KX2.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_INTF_AHB_M.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/CLK_BUF.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/FIFO36K.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/LUT3.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_DDR.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_FAB.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/I_BUF_DS.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/DSP38.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/I_BUF.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/DSP19X2.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/TDP_RAM36K.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/DFFNRE.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_INTF_IRQ.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_SERDES.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/MIPI_TX.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/I_FAB.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/I_DDR.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/LUT6.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_BUFT_DS.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/O_DELAY.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/LUT4.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/PLL.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/I_SERDES.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/SOC_FPGA_TEMPERATURE.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/TDP_RAM18KX2.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/BOOT_CLOCK.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/LUT5.v -v /nfs_eda_sw/softwares/Raptor/instl_dir/09_21_2024_09_15_01/share/raptor/sim_models/rapidsilicon/genesis3/FPGA_PRIMITIVES_MODELS/sim_models/verilog/MIPI_RX.v