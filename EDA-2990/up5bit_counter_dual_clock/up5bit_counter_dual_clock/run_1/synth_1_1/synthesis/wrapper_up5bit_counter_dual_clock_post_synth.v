/* Generated by Yosys 0.38 (git sha1 945241a2f, gcc 11.2.1 -fPIC -Os) */

module up5bit_counter_dual_clock(out0, out1, clk0, clk1, reset);
  input clk0;
  output [4:0] out1;
  input reset;
  input clk1;
  output [4:0] out0;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1089 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1088 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1087 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$reset ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.23-6.28" *)
  wire \$auto$rs_design_edit.cc:1139:execute$1091.reset ;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:5.18-5.22" *)
  wire [4:0] \$auto$rs_design_edit.cc:1139:execute$1091.out0 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[4] ;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:5.23-5.27" *)
  wire [4:0] \$auto$rs_design_edit.cc:1139:execute$1091.out1 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.17-6.21" *)
  wire \$auto$rs_design_edit.cc:1139:execute$1091.clk1 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.11-6.15" *)
  wire \$auto$rs_design_edit.cc:1139:execute$1091.clk0 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[3] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[2] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[1] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:317:execute$1058 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:317:execute$1061 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$clk0 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$clk1 ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[0] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[1] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[2] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[3] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[4] ;
  wire \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[0] ;
  wire \$iopadmap$out1[0] ;
  wire \$iopadmap$out0[4] ;
  wire \$iopadmap$out0[3] ;
  wire \$iopadmap$out0[2] ;
  wire \$iopadmap$out0[1] ;
  wire \$iopadmap$out0[0] ;
  wire \$iopadmap$clk1 ;
  wire \$iopadmap$clk0 ;
  wire \$auto$clkbufmap.cc:317:execute$1061 ;
  wire \$auto$clkbufmap.cc:317:execute$1058 ;
  wire \$iopadmap$out1[1] ;
  wire \$iopadmap$out1[4] ;
  wire \$iopadmap$reset ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.11-6.15" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.11-6.15" *)
  wire clk0;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:5.23-5.27" *)
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:5.23-5.27" *)
  wire [4:0] out1;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.23-6.28" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.23-6.28" *)
  wire reset;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.17-6.21" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:6.17-6.21" *)
  wire clk1;
  wire \$iopadmap$out1[2] ;
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:5.18-5.22" *)
  (* keep = 32'd1 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/21june/up5bit_counter_dual_clock/./rtl/up5bit_counter_dual_clock.v:5.18-5.22" *)
  wire [4:0] out0;
  wire \$iopadmap$out1[3] ;
  wire \$auto$rs_design_edit.cc:870:execute$1087 ;
  wire \$auto$rs_design_edit.cc:870:execute$1088 ;
  wire \$auto$rs_design_edit.cc:870:execute$1089 ;
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out1_2  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[2] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out1 [2])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out1_3  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[3] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out1 [3])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out1_4  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[4] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out1 [4])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.reset  (
    .EN(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1089 ),
    .I(\$auto$rs_design_edit.cc:1139:execute$1091.reset ),
    .O(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$reset )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:14.13-14.45" *)
  CLK_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:284:execute$1056  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$clk0 ),
    .O(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:317:execute$1058 )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:14.13-14.45" *)
  CLK_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:284:execute$1059  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$clk1 ),
    .O(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:317:execute$1061 )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.clk0  (
    .EN(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1087 ),
    .I(\$auto$rs_design_edit.cc:1139:execute$1091.clk0 ),
    .O(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$clk0 )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.clk1  (
    .EN(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1088 ),
    .I(\$auto$rs_design_edit.cc:1139:execute$1091.clk1 ),
    .O(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$clk1 )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out0  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[0] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out0 [0])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out0_1  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[1] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out0 [1])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out0_2  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[2] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out0 [2])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out0_3  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[3] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out0 [3])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out0_4  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[4] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out0 [4])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out1  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[0] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out1 [0])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/06_21_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$up5bit_counter_dual_clock.out1_1  (
    .I(\$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[1] ),
    .O(\$auto$rs_design_edit.cc:1139:execute$1091.out1 [1])
  );
  fabric_up5bit_counter_dual_clock \$auto$rs_design_edit.cc:1137:execute$1090  (
    .\$auto$rs_design_edit.cc:870:execute$1089 (\$auto$rs_design_edit.cc:870:execute$1089 ),
    .\$auto$rs_design_edit.cc:870:execute$1088 (\$auto$rs_design_edit.cc:870:execute$1088 ),
    .\$auto$rs_design_edit.cc:870:execute$1087 (\$auto$rs_design_edit.cc:870:execute$1087 ),
    .\$auto$clkbufmap.cc:317:execute$1058 (\$auto$clkbufmap.cc:317:execute$1058 ),
    .\$auto$clkbufmap.cc:317:execute$1061 (\$auto$clkbufmap.cc:317:execute$1061 ),
    .\$iopadmap$out0[0] (\$iopadmap$out0[0] ),
    .\$iopadmap$out0[1] (\$iopadmap$out0[1] ),
    .\$iopadmap$out0[2] (\$iopadmap$out0[2] ),
    .\$iopadmap$out0[3] (\$iopadmap$out0[3] ),
    .\$iopadmap$out0[4] (\$iopadmap$out0[4] ),
    .\$iopadmap$out1[0] (\$iopadmap$out1[0] ),
    .\$iopadmap$out1[1] (\$iopadmap$out1[1] ),
    .\$iopadmap$out1[2] (\$iopadmap$out1[2] ),
    .\$iopadmap$out1[3] (\$iopadmap$out1[3] ),
    .\$iopadmap$out1[4] (\$iopadmap$out1[4] ),
    .\$iopadmap$reset (\$iopadmap$reset )
  );
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1089  = \$auto$rs_design_edit.cc:870:execute$1089 ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1088  = \$auto$rs_design_edit.cc:870:execute$1088 ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$rs_design_edit.cc:870:execute$1087  = \$auto$rs_design_edit.cc:870:execute$1087 ;
  assign \$auto$clkbufmap.cc:317:execute$1058  = \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:317:execute$1058 ;
  assign \$auto$clkbufmap.cc:317:execute$1061  = \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$auto$clkbufmap.cc:317:execute$1061 ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[0]  = \$iopadmap$out0[0] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[1]  = \$iopadmap$out0[1] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[2]  = \$iopadmap$out0[2] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[3]  = \$iopadmap$out0[3] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out0[4]  = \$iopadmap$out0[4] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[0]  = \$iopadmap$out1[0] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[1]  = \$iopadmap$out1[1] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[2]  = \$iopadmap$out1[2] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[3]  = \$iopadmap$out1[3] ;
  assign \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$out1[4]  = \$iopadmap$out1[4] ;
  assign \$iopadmap$reset  = \$flatten$auto$rs_design_edit.cc:1139:execute$1091.$iopadmap$reset ;
  assign \$auto$rs_design_edit.cc:1139:execute$1091.clk0  = clk0;
  assign \$auto$rs_design_edit.cc:1139:execute$1091.clk1  = clk1;
  assign out0 = \$auto$rs_design_edit.cc:1139:execute$1091.out0 ;
  assign out1 = \$auto$rs_design_edit.cc:1139:execute$1091.out1 ;
  assign \$auto$rs_design_edit.cc:1139:execute$1091.reset  = reset;
endmodule