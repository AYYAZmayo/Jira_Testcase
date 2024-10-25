/* Generated by Yosys 0.38 (git sha1 a0cd5d1bb, gcc 11.2.1 -fPIC -Os) */

module clk_buf_primitive_inst(clock_input, clock_output);
  input clock_input;
  output clock_output;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:2.9-2.20" *)
  wire \$auto$rs_design_edit.cc:1149:execute$416.clock_input ;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:3.10-3.22" *)
  wire \$auto$rs_design_edit.cc:1149:execute$416.clock_output ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:6.6-6.11" *)
  wire \$auto$rs_design_edit.cc:1149:execute$416.wire1 ;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:7.5-7.17" *)
  wire \$auto$rs_design_edit.cc:1149:execute$416.wire_out_clk ;
  wire \$auto$rs_design_edit.cc:880:execute$414 ;
  wire \$flatten$auto$rs_design_edit.cc:1149:execute$416.$auto$rs_design_edit.cc:880:execute$414 ;
  wire \$flatten$auto$rs_design_edit.cc:1149:execute$416.$iopadmap$clock_input ;
  wire \$iopadmap$clock_input ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:2.9-2.20" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:2.9-2.20" *)
  wire clock_input;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:3.10-3.22" *)
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:3.10-3.22" *)
  wire clock_output;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:6.6-6.11" *)
  wire wire1;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:7.5-7.17" *)
  wire wire_out_clk;
  fabric_clk_buf_primitive_inst \$auto$rs_design_edit.cc:1147:execute$415  (
    .\$auto$rs_design_edit.cc:880:execute$414 (\$auto$rs_design_edit.cc:880:execute$414 ),
    .wire1(wire1),
    .wire_out_clk(wire_out_clk)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/clk_buf_primitive_inst/rtl/clk_buf_primitive_inst.v:15.3-18.5" *)
  CLK_BUF \$auto$rs_design_edit.cc:1149:execute$416.clk_buf_inst  (
    .I(\$flatten$auto$rs_design_edit.cc:1149:execute$416.$iopadmap$clock_input ),
    .O(\$auto$rs_design_edit.cc:1149:execute$416.wire1 )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_06_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1149:execute$416.$iopadmap$clk_buf_primitive_inst.clock_input  (
    .EN(\$flatten$auto$rs_design_edit.cc:1149:execute$416.$auto$rs_design_edit.cc:880:execute$414 ),
    .I(\$auto$rs_design_edit.cc:1149:execute$416.clock_input ),
    .O(\$flatten$auto$rs_design_edit.cc:1149:execute$416.$iopadmap$clock_input )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_06_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1149:execute$416.$iopadmap$clk_buf_primitive_inst.clock_output  (
    .I(\$auto$rs_design_edit.cc:1149:execute$416.wire_out_clk ),
    .O(\$auto$rs_design_edit.cc:1149:execute$416.clock_output )
  );
  assign \$flatten$auto$rs_design_edit.cc:1149:execute$416.$auto$rs_design_edit.cc:880:execute$414  = \$auto$rs_design_edit.cc:880:execute$414 ;
  assign \$auto$rs_design_edit.cc:1149:execute$416.clock_input  = clock_input;
  assign clock_output = \$auto$rs_design_edit.cc:1149:execute$416.clock_output ;
  assign wire1 = \$auto$rs_design_edit.cc:1149:execute$416.wire1 ;
  assign \$auto$rs_design_edit.cc:1149:execute$416.wire_out_clk  = wire_out_clk;
endmodule
