/* Generated by Yosys 0.18+10 (git sha1 2be6af90e, gcc 11.2.1 -fPIC -Os) */

module I_SERDES_primitive_inst_post_synth(data_in, reset, RX_RST, BITSLIP_ADJ, EN, CLK_IN, CLK_OUT, Q, DATA_VALID, DPA_LOCK, DPA_ERROR, PLL_LOCK, PLL_CLK);
  input BITSLIP_ADJ;
  input CLK_IN;
  output CLK_OUT;
  output DATA_VALID;
  output DPA_ERROR;
  output DPA_LOCK;
  input EN;
  input PLL_CLK;
  input PLL_LOCK;
  output [3:0] Q;
  input RX_RST;
  input data_in;
  input reset;
  wire \$abc$192$li0_li0 ;
  wire \$auto$clkbufmap.cc:298:execute$428 ;
  wire \$iopadmap$BITSLIP_ADJ ;
  wire \$iopadmap$CLK_IN ;
  wire \$iopadmap$CLK_OUT ;
  wire \$iopadmap$DATA_VALID ;
  wire \$iopadmap$DPA_ERROR ;
  wire \$iopadmap$DPA_LOCK ;
  wire \$iopadmap$EN ;
  wire \$iopadmap$PLL_CLK ;
  wire \$iopadmap$PLL_LOCK ;
  wire [3:0] \$iopadmap$Q ;
  wire \$iopadmap$RX_RST ;
  wire \$iopadmap$data_in ;
  wire \$iopadmap$reset ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:9.9-9.20" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:9.9-9.20" *)
  wire BITSLIP_ADJ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:11.9-11.15" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:11.9-11.15" *)
  wire CLK_IN;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:12.10-12.17" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:12.10-12.17" *)
  wire CLK_OUT;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:14.10-14.20" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:14.10-14.20" *)
  wire DATA_VALID;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:16.10-16.19" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:16.10-16.19" *)
  wire DPA_ERROR;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:15.10-15.18" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:15.10-15.18" *)
  wire DPA_LOCK;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:10.9-10.11" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:10.9-10.11" *)
  wire EN;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:18.9-18.16" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:18.9-18.16" *)
  wire PLL_CLK;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:17.9-17.17" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:17.9-17.17" *)
  wire PLL_LOCK;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:13.22-13.23" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:13.22-13.23" *)
  wire [3:0] Q;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:8.9-8.15" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:8.9-8.15" *)
  wire RX_RST;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:6.9-6.16" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:6.9-6.16" *)
  wire data_in;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:21.5-21.8" *)
  wire dff;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:7.9-7.14" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:7.9-7.14" *)
  wire reset;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:333.12-333.71" *)
  DFFNRE \$abc$192$auto$blifparse.cc:362:parse_blif$193  (
    .C(\$auto$clkbufmap.cc:298:execute$428 ),
    .D(\$abc$192$li0_li0 ),
    .E(1'h1),
    .Q(dff),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h4)
  ) \$abc$424$auto$blifparse.cc:515:parse_blif$425  (
    .A({ \$iopadmap$data_in , \$iopadmap$reset  }),
    .Y(\$abc$192$li0_li0 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:14.13-14.45" *)
  CLK_BUF \$auto$clkbufmap.cc:265:execute$426  (
    .I(\$iopadmap$CLK_IN ),
    .O(\$auto$clkbufmap.cc:298:execute$428 )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.BITSLIP_ADJ  (
    .EN(1'h1),
    .I(BITSLIP_ADJ),
    .O(\$iopadmap$BITSLIP_ADJ )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.CLK_IN  (
    .EN(1'h1),
    .I(CLK_IN),
    .O(\$iopadmap$CLK_IN )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.CLK_OUT  (
    .I(\$iopadmap$CLK_OUT ),
    .O(CLK_OUT)
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.DATA_VALID  (
    .I(\$iopadmap$DATA_VALID ),
    .O(DATA_VALID)
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.DPA_ERROR  (
    .I(\$iopadmap$DPA_ERROR ),
    .O(DPA_ERROR)
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.DPA_LOCK  (
    .I(\$iopadmap$DPA_LOCK ),
    .O(DPA_LOCK)
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.EN  (
    .EN(1'h1),
    .I(EN),
    .O(\$iopadmap$EN )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.PLL_CLK  (
    .EN(1'h1),
    .I(PLL_CLK),
    .O(\$iopadmap$PLL_CLK )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.PLL_LOCK  (
    .EN(1'h1),
    .I(PLL_LOCK),
    .O(\$iopadmap$PLL_LOCK )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.Q  (
    .I(\$iopadmap$Q [0]),
    .O(Q[0])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.Q_1  (
    .I(\$iopadmap$Q [1]),
    .O(Q[1])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.Q_2  (
    .I(\$iopadmap$Q [2]),
    .O(Q[2])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$iopadmap$I_SERDES_primitive_inst.Q_3  (
    .I(\$iopadmap$Q [3]),
    .O(Q[3])
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.RX_RST  (
    .EN(1'h1),
    .I(RX_RST),
    .O(\$iopadmap$RX_RST )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.data_in  (
    .EN(1'h1),
    .I(data_in),
    .O(\$iopadmap$data_in )
  );
  (* keep = 32'h00000001 *)
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_23_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$iopadmap$I_SERDES_primitive_inst.reset  (
    .EN(1'h1),
    .I(reset),
    .O(\$iopadmap$reset )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/24apr/Jira_Testcase/EDA-2740/results_dir/.././rtl/I_SERDES_primitive_inst.v:27.3-40.2" *)
  I_SERDES #(
    .DATA_RATE("SDR"),
    .DPA_MODE("NONE"),
    .WIDTH(32'sh00000004)
  ) inst (
    .BITSLIP_ADJ(\$iopadmap$BITSLIP_ADJ ),
    .CLK_IN(\$auto$clkbufmap.cc:298:execute$428 ),
    .CLK_OUT(\$iopadmap$CLK_OUT ),
    .D(dff),
    .DATA_VALID(\$iopadmap$DATA_VALID ),
    .DPA_ERROR(\$iopadmap$DPA_ERROR ),
    .DPA_LOCK(\$iopadmap$DPA_LOCK ),
    .EN(\$iopadmap$EN ),
    .PLL_CLK(\$iopadmap$PLL_CLK ),
    .PLL_LOCK(\$iopadmap$PLL_LOCK ),
    .Q(\$iopadmap$Q ),
    .RX_RST(\$iopadmap$RX_RST )
  );
endmodule

