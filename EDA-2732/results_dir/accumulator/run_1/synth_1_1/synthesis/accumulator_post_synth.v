/* Generated by Yosys 0.18+10 (git sha1 2be6af90e, gcc 11.2.1 -fPIC -Os) */

module accumulator_post_synth(clk, reset, subtract_i, A, P);
  input [1:0] A;
  output [1:0] P;
  input clk;
  input reset;
  input subtract_i;
  wire \$abc$306$li0_li0 ;
  wire \$abc$306$li1_li1 ;
  wire \$abc$306$li2_li2 ;
  wire \$abc$306$li3_li3 ;
  wire \$auto$clkbufmap.cc:298:execute$680 ;
  wire [1:0] \$iopadmap$A ;
  wire [1:0] \$iopadmap$P ;
  wire \$iopadmap$clk ;
  wire \$iopadmap$reset ;
  wire \$iopadmap$subtract_i ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:3.21-3.22" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:3.21-3.22" *)
  wire [1:0] A;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:4.26-4.27" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:4.26-4.27" *)
  wire [1:0] P;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:2.8-2.11" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:2.8-2.11" *)
  wire clk;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:6.19-6.21" *)
  wire [1:0] i1;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:2.13-2.18" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:2.13-2.18" *)
  wire reset;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:2.20-2.30" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os-fpga/Validation/RTL_testcases/RS_Primitive_example_designs/carry_inference/results_dir/.././rtl/accumulator.v:2.20-2.30" *)
  wire subtract_i;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$306$auto$blifparse.cc:362:parse_blif$307  (
    .C(\$auto$clkbufmap.cc:298:execute$680 ),
    .D(\$abc$306$li0_li0 ),
    .E(1'h1),
    .Q(\$iopadmap$P [0]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$306$auto$blifparse.cc:362:parse_blif$308  (
    .C(\$auto$clkbufmap.cc:298:execute$680 ),
    .D(\$abc$306$li1_li1 ),
    .E(1'h1),
    .Q(\$iopadmap$P [1]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$306$auto$blifparse.cc:362:parse_blif$309  (
    .C(\$auto$clkbufmap.cc:298:execute$680 ),
    .D(\$abc$306$li2_li2 ),
    .E(1'h1),
    .Q(i1[0]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$306$auto$blifparse.cc:362:parse_blif$310  (
    .C(\$auto$clkbufmap.cc:298:execute$680 ),
    .D(\$abc$306$li3_li3 ),
    .E(1'h1),
    .Q(i1[1]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:37.38-37.69" *)
  LUT6 #(
    .INIT_VALUE(64'h002800d700d70028)
  ) \$abc$673$auto$blifparse.cc:515:parse_blif$674  (
    .A({ \$iopadmap$P [1], i1[1], \$iopadmap$reset , \$iopadmap$subtract_i , \$iopadmap$P [0], i1[0] }),
    .Y(\$abc$306$li1_li1 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'h14)
  ) \$abc$673$auto$blifparse.cc:515:parse_blif$675  (
    .A({ \$iopadmap$P [0], i1[0], \$iopadmap$reset  }),
    .Y(\$abc$306$li0_li0 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h4)
  ) \$abc$673$auto$blifparse.cc:515:parse_blif$676  (
    .A({ \$iopadmap$A [1], \$iopadmap$reset  }),
    .Y(\$abc$306$li3_li3 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h4)
  ) \$abc$673$auto$blifparse.cc:515:parse_blif$677  (
    .A({ \$iopadmap$A [0], \$iopadmap$reset  }),
    .Y(\$abc$306$li2_li2 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:14.13-14.45" *)
  CLK_BUF \$auto$clkbufmap.cc:265:execute$678  (
    .I(\$iopadmap$clk ),
    .O(\$auto$clkbufmap.cc:298:execute$680 )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$accumulator.A  (
    .EN(1'h1),
    .I(A[0]),
    .O(\$iopadmap$A [0])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$accumulator.A_1  (
    .EN(1'h1),
    .I(A[1]),
    .O(\$iopadmap$A [1])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$accumulator.P  (
    .I(\$iopadmap$P [0]),
    .O(P[0])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$accumulator.P_1  (
    .I(\$iopadmap$P [1]),
    .O(P[1])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$accumulator.clk  (
    .EN(1'h1),
    .I(clk),
    .O(\$iopadmap$clk )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$accumulator.reset  (
    .EN(1'h1),
    .I(reset),
    .O(\$iopadmap$reset )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$accumulator.subtract_i  (
    .EN(1'h1),
    .I(subtract_i),
    .O(\$iopadmap$subtract_i )
  );
endmodule

