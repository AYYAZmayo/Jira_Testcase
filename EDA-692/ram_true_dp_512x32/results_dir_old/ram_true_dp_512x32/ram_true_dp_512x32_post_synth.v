/* Generated by Yosys 0.18+10 (git sha1 bc26f627e, gcc 9.4.0 -fPIC -Os) */

(* top =  1  *)
(* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:1" *)
module ram_true_dp_512x32_post_synth(clk, weA, weB, addrB, dinA, dinB, doutA, doutB, addrA);
  wire \$abc$1088$abc$624$auto$rtlil.cc:2399:And$26 ;
  wire \$abc$1088$new_new_n23__ ;
  wire \$abc$1088$new_new_n24__ ;
  wire \$abc$1088$new_new_n25__ ;
  wire \$abc$1088$new_new_n26__ ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/11_15_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:168.14-168.27" *)
  (* unused_bits = "16 17" *)
  wire [17:0] \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_A1_RDATA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/11_15_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:170.14-170.27" *)
  (* unused_bits = "16 17" *)
  wire [17:0] \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_A2_RDATA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/11_15_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:169.14-169.27" *)
  (* unused_bits = "16 17" *)
  wire [17:0] \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_B1_RDATA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/11_15_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:171.14-171.27" *)
  (* unused_bits = "16 17" *)
  wire [17:0] \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_B2_RDATA ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:3" *)
  input [8:0] addrA;
  wire [8:0] addrA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:3" *)
  input [8:0] addrB;
  wire [8:0] addrB;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:2" *)
  input clk;
  wire clk;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:4" *)
  input [31:0] dinA;
  wire [31:0] dinA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:4" *)
  input [31:0] dinB;
  wire [31:0] dinB;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:5" *)
  output [31:0] doutA;
  wire [31:0] doutA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:5" *)
  output [31:0] doutB;
  wire [31:0] doutB;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:2" *)
  input weA;
  wire weA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/EDA-692/ram_true_dp_512x32/results_dir/.././rtl/ram_true_dp_512x32.v:2" *)
  input weB;
  wire weB;
  \$lut  #(
    .LUT(16'h6ff6),
    .WIDTH(32'h00000004)
  ) \$abc$1088$auto$blifparse.cc:515:parse_blif$1089  (
    .A({ addrB[0], addrA[0], addrA[2], addrB[2] }),
    .Y(\$abc$1088$new_new_n23__ )
  );
  \$lut  #(
    .LUT(8'h90),
    .WIDTH(32'h00000003)
  ) \$abc$1088$auto$blifparse.cc:515:parse_blif$1090  (
    .A({ weB, addrB[8], addrA[8] }),
    .Y(\$abc$1088$new_new_n24__ )
  );
  \$lut  #(
    .LUT(64'h6ff6ffffffff6ff6),
    .WIDTH(32'h00000006)
  ) \$abc$1088$auto$blifparse.cc:515:parse_blif$1091  (
    .A({ addrB[5], addrA[5], addrA[3], addrB[3], addrA[6], addrB[6] }),
    .Y(\$abc$1088$new_new_n25__ )
  );
  \$lut  #(
    .LUT(64'h6ff6ffffffff6ff6),
    .WIDTH(32'h00000006)
  ) \$abc$1088$auto$blifparse.cc:515:parse_blif$1092  (
    .A({ addrA[4], addrB[4], addrA[7], addrB[7], addrB[1], addrA[1] }),
    .Y(\$abc$1088$new_new_n26__ )
  );
  \$lut  #(
    .LUT(32'hfeff0000),
    .WIDTH(32'h00000005)
  ) \$abc$1088$auto$blifparse.cc:515:parse_blif$1093  (
    .A({ weA, \$abc$1088$new_new_n24__ , \$abc$1088$new_new_n26__ , \$abc$1088$new_new_n25__ , \$abc$1088$new_new_n23__  }),
    .Y(\$abc$1088$abc$624$auto$rtlil.cc:2399:And$26 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/11_15_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:227.3-262.3" *)
  TDP36K #(
    .INIT_i(36864'hxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx),
    .MODE_BITS(81'h101402812480140140924)
  ) \bram_ram.0.0.0_ram.1.0.0  (
    .ADDR_A1_i({ 2'h0, addrB, 4'h0 }),
    .ADDR_A2_i({ 1'h0, addrB, 4'h0 }),
    .ADDR_B1_i({ 2'h0, addrA, 4'h0 }),
    .ADDR_B2_i({ 1'h0, addrA, 4'h0 }),
    .BE_A1_i({ \$abc$1088$abc$624$auto$rtlil.cc:2399:And$26 , \$abc$1088$abc$624$auto$rtlil.cc:2399:And$26  }),
    .BE_A2_i({ \$abc$1088$abc$624$auto$rtlil.cc:2399:And$26 , \$abc$1088$abc$624$auto$rtlil.cc:2399:And$26  }),
    .BE_B1_i({ weB, weB }),
    .BE_B2_i({ weB, weB }),
    .CLK_A1_i(clk),
    .CLK_A2_i(clk),
    .CLK_B1_i(clk),
    .CLK_B2_i(clk),
    .FLUSH1_i(1'h0),
    .FLUSH2_i(1'h0),
    .RDATA_A1_o({ \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_A1_RDATA [17:16], doutB[15:0] }),
    .RDATA_A2_o({ \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_A2_RDATA [17:16], doutB[31:16] }),
    .RDATA_B1_o({ \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_B1_RDATA [17:16], doutA[15:0] }),
    .RDATA_B2_o({ \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_B2_RDATA [17:16], doutA[31:16] }),
    .REN_A1_i(1'h1),
    .REN_A2_i(1'h1),
    .REN_B1_i(1'h1),
    .REN_B2_i(1'h1),
    .WDATA_A1_i({ 2'hx, dinA[15:0] }),
    .WDATA_A2_i({ 2'hx, dinA[31:16] }),
    .WDATA_B1_i({ 2'hx, dinB[15:0] }),
    .WDATA_B2_i({ 2'hx, dinB[31:16] }),
    .WEN_A1_i(\$abc$1088$abc$624$auto$rtlil.cc:2399:And$26 ),
    .WEN_A2_i(\$abc$1088$abc$624$auto$rtlil.cc:2399:And$26 ),
    .WEN_B1_i(weB),
    .WEN_B2_i(weB)
  );
  assign \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_A1_RDATA [15:0] = doutB[15:0];
  assign \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_A2_RDATA [15:0] = doutB[31:16];
  assign \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_B1_RDATA [15:0] = doutA[15:0];
  assign \$techmap92\bram_ram.0.0.0_ram.1.0.0.PORT_B2_RDATA [15:0] = doutA[31:16];
endmodule
