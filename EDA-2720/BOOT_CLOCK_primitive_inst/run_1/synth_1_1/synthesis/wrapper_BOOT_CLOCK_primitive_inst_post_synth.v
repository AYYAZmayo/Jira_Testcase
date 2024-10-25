/* Generated by Yosys 0.18+10 (git sha1 2be6af90e, gcc 11.2.1 -fPIC -Os) */

module BOOT_CLOCK_primitive_inst(clk1, async_signal, sync_signal, O_BOOT_CLOCK);
  output sync_signal;
  input clk1;
  input async_signal;
  output O_BOOT_CLOCK;
  wire \$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$rs_design_edit.cc:568:execute$456 ;
  wire \$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$rs_design_edit.cc:568:execute$455 ;
  wire \$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$clkbufmap.cc:298:execute$449 ;
  wire \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$O_BOOT_CLOCK ;
  wire \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$async_signal ;
  wire \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$clk1 ;
  wire \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$sync_signal ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:5.14-5.26" *)
  wire \$auto$rs_design_edit.cc:820:execute$458.O_BOOT_CLOCK ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:3.14-3.26" *)
  wire \$auto$rs_design_edit.cc:820:execute$458.async_signal ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:2.14-2.18" *)
  wire \$auto$rs_design_edit.cc:820:execute$458.clk1 ;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:4.14-4.25" *)
  wire \$auto$rs_design_edit.cc:820:execute$458.sync_signal ;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:4.14-4.25" *)
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:4.14-4.25" *)
  wire sync_signal;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:2.14-2.18" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:2.14-2.18" *)
  wire clk1;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:3.14-3.26" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:3.14-3.26" *)
  wire async_signal;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:5.14-5.26" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:5.14-5.26" *)
  wire O_BOOT_CLOCK;
  wire \$iopadmap$sync_signal ;
  wire \$iopadmap$clk1 ;
  wire \$iopadmap$async_signal ;
  wire \$iopadmap$O_BOOT_CLOCK ;
  wire \$auto$clkbufmap.cc:298:execute$449 ;
  wire \$auto$rs_design_edit.cc:568:execute$455 ;
  wire \$auto$rs_design_edit.cc:568:execute$456 ;
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_17_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$BOOT_CLOCK_primitive_inst.sync_signal  (
    .I(\$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$sync_signal ),
    .O(\$auto$rs_design_edit.cc:820:execute$458.sync_signal )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/16apr/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/BOOT_CLOCK_primitive_inst/EDA-2720/./rtl/BOOT_CLOCK_primitive_inst.v:12.5-14.4" *)
  BOOT_CLOCK #(
    .PERIOD(30.000000)
  ) \$auto$rs_design_edit.cc:820:execute$458.BOOT_CLOCK_primitive  (
    .O(\$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$O_BOOT_CLOCK )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_17_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:14.13-14.45" *)
  CLK_BUF \$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$clkbufmap.cc:265:execute$447  (
    .I(\$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$clk1 ),
    .O(\$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$clkbufmap.cc:298:execute$449 )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_17_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$BOOT_CLOCK_primitive_inst.O_BOOT_CLOCK  (
    .I(\$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$O_BOOT_CLOCK ),
    .O(\$auto$rs_design_edit.cc:820:execute$458.O_BOOT_CLOCK )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_17_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$BOOT_CLOCK_primitive_inst.async_signal  (
    .EN(\$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$rs_design_edit.cc:568:execute$455 ),
    .I(\$auto$rs_design_edit.cc:820:execute$458.async_signal ),
    .O(\$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$async_signal )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_17_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$BOOT_CLOCK_primitive_inst.clk1  (
    .EN(\$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$rs_design_edit.cc:568:execute$456 ),
    .I(\$auto$rs_design_edit.cc:820:execute$458.clk1 ),
    .O(\$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$clk1 )
  );
  fabric_BOOT_CLOCK_primitive_inst \$auto$rs_design_edit.cc:818:execute$457  (
    .\$auto$rs_design_edit.cc:568:execute$456 (\$auto$rs_design_edit.cc:568:execute$456 ),
    .\$auto$rs_design_edit.cc:568:execute$455 (\$auto$rs_design_edit.cc:568:execute$455 ),
    .\$auto$clkbufmap.cc:298:execute$449 (\$auto$clkbufmap.cc:298:execute$449 ),
    .\$iopadmap$O_BOOT_CLOCK (\$iopadmap$O_BOOT_CLOCK ),
    .\$iopadmap$async_signal (\$iopadmap$async_signal ),
    .\$iopadmap$sync_signal (\$iopadmap$sync_signal )
  );
  assign \$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$rs_design_edit.cc:568:execute$456  = \$auto$rs_design_edit.cc:568:execute$456 ;
  assign \$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$rs_design_edit.cc:568:execute$455  = \$auto$rs_design_edit.cc:568:execute$455 ;
  assign \$auto$clkbufmap.cc:298:execute$449  = \$flatten$auto$rs_design_edit.cc:820:execute$458.$auto$clkbufmap.cc:298:execute$449 ;
  assign \$iopadmap$O_BOOT_CLOCK  = \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$O_BOOT_CLOCK ;
  assign \$iopadmap$async_signal  = \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$async_signal ;
  assign \$flatten$auto$rs_design_edit.cc:820:execute$458.$iopadmap$sync_signal  = \$iopadmap$sync_signal ;
  assign O_BOOT_CLOCK = \$auto$rs_design_edit.cc:820:execute$458.O_BOOT_CLOCK ;
  assign \$auto$rs_design_edit.cc:820:execute$458.async_signal  = async_signal;
  assign \$auto$rs_design_edit.cc:820:execute$458.clk1  = clk1;
  assign sync_signal = \$auto$rs_design_edit.cc:820:execute$458.sync_signal ;
endmodule
