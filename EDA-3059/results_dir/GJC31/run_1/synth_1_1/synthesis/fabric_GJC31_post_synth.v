/* Generated by Yosys 0.38 (git sha1 d2189b06a, gcc 11.2.1 -fPIC -Os) */

module fabric_GJC31(\$auto$rs_design_edit.cc:885:execute$614 , \$auto$rs_design_edit.cc:885:execute$615 , \$auto$rs_design_edit.cc:885:execute$616 , \$auto$rs_design_edit.cc:885:execute$617 , \$auto$rs_design_edit.cc:885:execute$618 , \$auto$rs_design_edit.cc:885:execute$619 , \$ofab_enable , clk_i, \data_o[0] , \data_o[1] , \data_reg[0] , \data_reg[1] , dly_adj, dly_inc_pulse_inv, dly_ld, enable, reset_n);
  output \$auto$rs_design_edit.cc:885:execute$614 ;
  output \$auto$rs_design_edit.cc:885:execute$615 ;
  output \$auto$rs_design_edit.cc:885:execute$616 ;
  output \$auto$rs_design_edit.cc:885:execute$617 ;
  output \$auto$rs_design_edit.cc:885:execute$618 ;
  output \$auto$rs_design_edit.cc:885:execute$619 ;
  output \$ofab_enable ;
  input clk_i;
  output \data_o[0] ;
  output \data_o[1] ;
  input \data_reg[0] ;
  input \data_reg[1] ;
  output dly_adj;
  input dly_inc_pulse_inv;
  output dly_ld;
  input enable;
  input reset_n;
  wire \$abc$238$auto$opt_dff.cc:195:make_patterns_logic$53 ;
  wire \$abc$250$li0_li0 ;
  wire \$abc$250$li1_li1 ;
  wire \$abc$250$li2_li2 ;
  wire \$auto$rs_design_edit.cc:885:execute$614 ;
  wire \$auto$rs_design_edit.cc:885:execute$615 ;
  wire \$auto$rs_design_edit.cc:885:execute$616 ;
  wire \$auto$rs_design_edit.cc:885:execute$617 ;
  wire \$auto$rs_design_edit.cc:885:execute$618 ;
  wire \$auto$rs_design_edit.cc:885:execute$619 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:25.10-25.16" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:25.10-25.16" *)
  wire \$ofab_enable ;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:26.10-26.15" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:26.10-26.15" *)
  wire clk_i;
  (* init = 1'h0 *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:28.16-28.22" *)
  (* init = 1'h0 *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:28.16-28.22" *)
  wire \data_o[0] ;
  (* init = 1'h0 *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:28.16-28.22" *)
  (* init = 1'h0 *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:28.16-28.22" *)
  wire \data_o[1] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:20.16-20.24" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:20.16-20.24" *)
  wire \data_reg[0] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:20.16-20.24" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:20.16-20.24" *)
  wire \data_reg[1] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:23.10-23.17" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:23.10-23.17" *)
  wire dly_adj;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:27.10-27.27" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:27.10-27.27" *)
  wire dly_inc_pulse_inv;
  (* init = 1'h0 *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:22.9-22.15" *)
  (* init = 1'h0 *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:22.9-22.15" *)
  wire dly_ld;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:25.10-25.16" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:25.10-25.16" *)
  wire enable;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:24.10-24.17" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/14thjuly/Validation/RTL_testcases/GJC-IO-Testcases/GJC31/results_dir/.././rtl/GJC31.v:24.10-24.17" *)
  wire reset_n;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$250$auto$blifparse.cc:377:parse_blif$251  (
    .C(clk_i),
    .D(\$abc$250$li0_li0 ),
    .E(\$abc$238$auto$opt_dff.cc:195:make_patterns_logic$53 ),
    .Q(\data_o[0] ),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$250$auto$blifparse.cc:377:parse_blif$252  (
    .C(clk_i),
    .D(\$abc$250$li1_li1 ),
    .E(\$abc$238$auto$opt_dff.cc:195:make_patterns_logic$53 ),
    .Q(\data_o[1] ),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$250$auto$blifparse.cc:377:parse_blif$253  (
    .C(clk_i),
    .D(\$abc$250$li2_li2 ),
    .E(\$abc$238$auto$opt_dff.cc:195:make_patterns_logic$53 ),
    .Q(dly_ld),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h8)
  ) \$abc$596$auto$blifparse.cc:535:parse_blif$597  (
    .A({ \data_reg[1] , reset_n }),
    .Y(\$abc$250$li1_li1 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h8)
  ) \$abc$596$auto$blifparse.cc:535:parse_blif$598  (
    .A({ \data_reg[0] , reset_n }),
    .Y(\$abc$250$li0_li0 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'hb)
  ) \$abc$596$auto$blifparse.cc:535:parse_blif$599  (
    .A({ reset_n, enable }),
    .Y(\$abc$238$auto$opt_dff.cc:195:make_patterns_logic$53 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:17.38-17.69" *)
  LUT1 #(
    .INIT_VALUE(2'h1)
  ) \$abc$596$auto$blifparse.cc:535:parse_blif$600  (
    .A(dly_inc_pulse_inv),
    .Y(dly_adj)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/07_14_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:17.38-17.69" *)
  LUT1 #(
    .INIT_VALUE(2'h1)
  ) \$abc$596$auto$blifparse.cc:535:parse_blif$601  (
    .A(reset_n),
    .Y(\$abc$250$li2_li2 )
  );
  (* keep = 32'h00000001 *)
  O_FAB \$ofab$GJC31.enable  (
    .I(enable),
    .O(\$ofab_enable )
  );
  assign \$auto$rs_design_edit.cc:885:execute$616  = 1'h1;
  assign \$auto$rs_design_edit.cc:885:execute$617  = 1'h1;
  assign \$auto$rs_design_edit.cc:885:execute$618  = 1'h1;
  assign \$auto$rs_design_edit.cc:885:execute$619  = 1'h1;
  assign \$auto$rs_design_edit.cc:885:execute$614  = 1'h1;
  assign \$auto$rs_design_edit.cc:885:execute$615  = 1'h1;
endmodule
