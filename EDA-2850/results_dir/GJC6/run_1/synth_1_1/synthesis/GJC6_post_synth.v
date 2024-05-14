/* Generated by Yosys 0.38 (git sha1 45a28179e, gcc 11.2.1 -fPIC -Os) */

module GJC6_post_synth(din, oe, tristate_out, clk);
  input clk;
  input din;
  input oe;
  output tristate_out;
  wire \$auto$clkbufmap.cc:298:execute$445 ;
  wire \$iopadmap$clk ;
  wire \$iopadmap$din ;
  wire \$iopadmap$oe ;
  wire \$iopadmap$tristate_out ;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:15.10-15.13" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:15.10-15.13" *)
  wire clk;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:14.10-14.13" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:14.10-14.13" *)
  wire din;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:16.10-16.12" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:16.10-16.12" *)
  wire oe;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:19.8-19.10" *)
  wire q1;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:20.8-20.10" *)
  wire q2;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:17.11-17.23" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/13may/Validation/RTL_testcases/GJC-IO-Testcases/GJC6/results_dir/.././rtl/GJC6.v:17.11-17.23" *)
  wire tristate_out;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$196$auto$blifparse.cc:377:parse_blif$197  (
    .C(\$auto$clkbufmap.cc:298:execute$445 ),
    .D(\$iopadmap$din ),
    .E(1'h1),
    .Q(q1),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$196$auto$blifparse.cc:377:parse_blif$198  (
    .C(\$auto$clkbufmap.cc:298:execute$445 ),
    .D(q1),
    .E(1'h1),
    .Q(q2),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h8)
  ) \$abc$441$auto$blifparse.cc:535:parse_blif$442  (
    .A({ q2, \$iopadmap$oe  }),
    .Y(\$iopadmap$tristate_out )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:14.13-14.45" *)
  CLK_BUF \$auto$clkbufmap.cc:265:execute$443  (
    .I(\$iopadmap$clk ),
    .O(\$auto$clkbufmap.cc:298:execute$445 )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$GJC6.clk  (
    .EN(1'h1),
    .I(clk),
    .O(\$iopadmap$clk )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$GJC6.din  (
    .EN(1'h1),
    .I(din),
    .O(\$iopadmap$din )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$GJC6.oe  (
    .EN(1'h1),
    .I(oe),
    .O(\$iopadmap$oe )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$GJC6.tristate_out  (
    .I(\$iopadmap$tristate_out ),
    .O(tristate_out)
  );
endmodule
