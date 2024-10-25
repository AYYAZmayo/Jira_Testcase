/* Generated by Yosys 0.18+10 (git sha1 18ac9db6a, gcc 9.4.0 -fPIC -Os) */

(* top =  1  *)
(* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:3" *)
module ram_inst_tdp_no_split_36_out_reg(clkA, clkB, weA, weB, addrB, dinA, dinB, doutA, doutB, addrA);
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:5" *)
  input [9:0] addrA;
  wire [9:0] addrA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:5" *)
  input [9:0] addrB;
  wire [9:0] addrB;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:4" *)
  input clkA;
  wire clkA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:4" *)
  input clkB;
  wire clkB;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:6" *)
  input [35:0] dinA;
  wire [35:0] dinA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:6" *)
  input [35:0] dinB;
  wire [35:0] dinB;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:7" *)
  output [35:0] doutA;
  wire [35:0] doutA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:7" *)
  output [35:0] doutB;
  wire [35:0] doutB;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:9" *)
  wire [35:0] outA_reg;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:9" *)
  wire [35:0] outB_reg;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:4" *)
  input weA;
  wire weA;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Jira_Testcase/GEMINIEDA-411/./rtl/ram_inst_tdp_no_split_36_out_reg.v:4" *)
  input weB;
  wire weB;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1165  (
    .C(clkB),
    .D(outB_reg[0]),
    .E(1'h1),
    .Q(doutB[0]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1166  (
    .C(clkB),
    .D(outB_reg[1]),
    .E(1'h1),
    .Q(doutB[1]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1167  (
    .C(clkB),
    .D(outB_reg[2]),
    .E(1'h1),
    .Q(doutB[2]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1168  (
    .C(clkB),
    .D(outB_reg[3]),
    .E(1'h1),
    .Q(doutB[3]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1169  (
    .C(clkB),
    .D(outB_reg[4]),
    .E(1'h1),
    .Q(doutB[4]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1170  (
    .C(clkB),
    .D(outB_reg[5]),
    .E(1'h1),
    .Q(doutB[5]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1171  (
    .C(clkB),
    .D(outB_reg[6]),
    .E(1'h1),
    .Q(doutB[6]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1172  (
    .C(clkB),
    .D(outB_reg[7]),
    .E(1'h1),
    .Q(doutB[7]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1173  (
    .C(clkB),
    .D(outB_reg[8]),
    .E(1'h1),
    .Q(doutB[8]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1174  (
    .C(clkB),
    .D(outB_reg[9]),
    .E(1'h1),
    .Q(doutB[9]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1175  (
    .C(clkB),
    .D(outB_reg[10]),
    .E(1'h1),
    .Q(doutB[10]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1176  (
    .C(clkB),
    .D(outB_reg[11]),
    .E(1'h1),
    .Q(doutB[11]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1177  (
    .C(clkB),
    .D(outB_reg[12]),
    .E(1'h1),
    .Q(doutB[12]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1178  (
    .C(clkB),
    .D(outB_reg[13]),
    .E(1'h1),
    .Q(doutB[13]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1179  (
    .C(clkB),
    .D(outB_reg[14]),
    .E(1'h1),
    .Q(doutB[14]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1180  (
    .C(clkB),
    .D(outB_reg[15]),
    .E(1'h1),
    .Q(doutB[15]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1181  (
    .C(clkB),
    .D(outB_reg[16]),
    .E(1'h1),
    .Q(doutB[16]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1182  (
    .C(clkB),
    .D(outB_reg[17]),
    .E(1'h1),
    .Q(doutB[17]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1183  (
    .C(clkB),
    .D(outB_reg[18]),
    .E(1'h1),
    .Q(doutB[18]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1184  (
    .C(clkB),
    .D(outB_reg[19]),
    .E(1'h1),
    .Q(doutB[19]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1185  (
    .C(clkB),
    .D(outB_reg[20]),
    .E(1'h1),
    .Q(doutB[20]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1186  (
    .C(clkB),
    .D(outB_reg[21]),
    .E(1'h1),
    .Q(doutB[21]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1187  (
    .C(clkB),
    .D(outB_reg[22]),
    .E(1'h1),
    .Q(doutB[22]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1188  (
    .C(clkB),
    .D(outB_reg[23]),
    .E(1'h1),
    .Q(doutB[23]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1189  (
    .C(clkB),
    .D(outB_reg[24]),
    .E(1'h1),
    .Q(doutB[24]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1190  (
    .C(clkB),
    .D(outB_reg[25]),
    .E(1'h1),
    .Q(doutB[25]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1191  (
    .C(clkB),
    .D(outB_reg[26]),
    .E(1'h1),
    .Q(doutB[26]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1192  (
    .C(clkB),
    .D(outB_reg[27]),
    .E(1'h1),
    .Q(doutB[27]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1193  (
    .C(clkB),
    .D(outB_reg[28]),
    .E(1'h1),
    .Q(doutB[28]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1194  (
    .C(clkB),
    .D(outB_reg[29]),
    .E(1'h1),
    .Q(doutB[29]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1195  (
    .C(clkB),
    .D(outB_reg[30]),
    .E(1'h1),
    .Q(doutB[30]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1196  (
    .C(clkB),
    .D(outB_reg[31]),
    .E(1'h1),
    .Q(doutB[31]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1197  (
    .C(clkB),
    .D(outB_reg[32]),
    .E(1'h1),
    .Q(doutB[32]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1198  (
    .C(clkB),
    .D(outB_reg[33]),
    .E(1'h1),
    .Q(doutB[33]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1199  (
    .C(clkB),
    .D(outB_reg[34]),
    .E(1'h1),
    .Q(doutB[34]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1164$auto$blifparse.cc:362:parse_blif$1200  (
    .C(clkB),
    .D(outB_reg[35]),
    .E(1'h1),
    .Q(doutB[35]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1274  (
    .C(clkA),
    .D(outA_reg[0]),
    .E(1'h1),
    .Q(doutA[0]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1275  (
    .C(clkA),
    .D(outA_reg[1]),
    .E(1'h1),
    .Q(doutA[1]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1276  (
    .C(clkA),
    .D(outA_reg[2]),
    .E(1'h1),
    .Q(doutA[2]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1277  (
    .C(clkA),
    .D(outA_reg[3]),
    .E(1'h1),
    .Q(doutA[3]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1278  (
    .C(clkA),
    .D(outA_reg[4]),
    .E(1'h1),
    .Q(doutA[4]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1279  (
    .C(clkA),
    .D(outA_reg[5]),
    .E(1'h1),
    .Q(doutA[5]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1280  (
    .C(clkA),
    .D(outA_reg[6]),
    .E(1'h1),
    .Q(doutA[6]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1281  (
    .C(clkA),
    .D(outA_reg[7]),
    .E(1'h1),
    .Q(doutA[7]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1282  (
    .C(clkA),
    .D(outA_reg[8]),
    .E(1'h1),
    .Q(doutA[8]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1283  (
    .C(clkA),
    .D(outA_reg[9]),
    .E(1'h1),
    .Q(doutA[9]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1284  (
    .C(clkA),
    .D(outA_reg[10]),
    .E(1'h1),
    .Q(doutA[10]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1285  (
    .C(clkA),
    .D(outA_reg[11]),
    .E(1'h1),
    .Q(doutA[11]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1286  (
    .C(clkA),
    .D(outA_reg[12]),
    .E(1'h1),
    .Q(doutA[12]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1287  (
    .C(clkA),
    .D(outA_reg[13]),
    .E(1'h1),
    .Q(doutA[13]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1288  (
    .C(clkA),
    .D(outA_reg[14]),
    .E(1'h1),
    .Q(doutA[14]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1289  (
    .C(clkA),
    .D(outA_reg[15]),
    .E(1'h1),
    .Q(doutA[15]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1290  (
    .C(clkA),
    .D(outA_reg[16]),
    .E(1'h1),
    .Q(doutA[16]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1291  (
    .C(clkA),
    .D(outA_reg[17]),
    .E(1'h1),
    .Q(doutA[17]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1292  (
    .C(clkA),
    .D(outA_reg[18]),
    .E(1'h1),
    .Q(doutA[18]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1293  (
    .C(clkA),
    .D(outA_reg[19]),
    .E(1'h1),
    .Q(doutA[19]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1294  (
    .C(clkA),
    .D(outA_reg[20]),
    .E(1'h1),
    .Q(doutA[20]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1295  (
    .C(clkA),
    .D(outA_reg[21]),
    .E(1'h1),
    .Q(doutA[21]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1296  (
    .C(clkA),
    .D(outA_reg[22]),
    .E(1'h1),
    .Q(doutA[22]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1297  (
    .C(clkA),
    .D(outA_reg[23]),
    .E(1'h1),
    .Q(doutA[23]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1298  (
    .C(clkA),
    .D(outA_reg[24]),
    .E(1'h1),
    .Q(doutA[24]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1299  (
    .C(clkA),
    .D(outA_reg[25]),
    .E(1'h1),
    .Q(doutA[25]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1300  (
    .C(clkA),
    .D(outA_reg[26]),
    .E(1'h1),
    .Q(doutA[26]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1301  (
    .C(clkA),
    .D(outA_reg[27]),
    .E(1'h1),
    .Q(doutA[27]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1302  (
    .C(clkA),
    .D(outA_reg[28]),
    .E(1'h1),
    .Q(doutA[28]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1303  (
    .C(clkA),
    .D(outA_reg[29]),
    .E(1'h1),
    .Q(doutA[29]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1304  (
    .C(clkA),
    .D(outA_reg[30]),
    .E(1'h1),
    .Q(doutA[30]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1305  (
    .C(clkA),
    .D(outA_reg[31]),
    .E(1'h1),
    .Q(doutA[31]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1306  (
    .C(clkA),
    .D(outA_reg[32]),
    .E(1'h1),
    .Q(doutA[32]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1307  (
    .C(clkA),
    .D(outA_reg[33]),
    .E(1'h1),
    .Q(doutA[33]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1308  (
    .C(clkA),
    .D(outA_reg[34]),
    .E(1'h1),
    .Q(doutA[34]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_29_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1273$auto$blifparse.cc:362:parse_blif$1309  (
    .C(clkA),
    .D(outA_reg[35]),
    .E(1'h1),
    .Q(doutA[35]),
    .R(1'h1),
    .S(1'h1)
  );
  \TDP36K(MODE_BITS=81'b0110110110110)  inst1 (
    .ADDR_A1_i({ addrA, 5'h00 }),
    .ADDR_A2_i({ addrA[8:0], 5'h00 }),
    .ADDR_B1_i({ addrB, 5'h00 }),
    .ADDR_B2_i({ addrB[8:0], 5'h00 }),
    .BE_A1_i(2'h1),
    .BE_A2_i(2'h1),
    .BE_B1_i(2'h1),
    .BE_B2_i(2'h1),
    .CLK_A1_i(clkA),
    .CLK_A2_i(clkA),
    .CLK_B1_i(clkB),
    .CLK_B2_i(clkB),
    .FLUSH1_i(1'h0),
    .FLUSH2_i(1'h0),
    .RDATA_A1_o({ outA_reg[33:32], outA_reg[15:0] }),
    .RDATA_A2_o({ outA_reg[35:34], outA_reg[31:16] }),
    .RDATA_B1_o({ outB_reg[33:32], outB_reg[15:0] }),
    .RDATA_B2_o({ outB_reg[35:34], outB_reg[31:16] }),
    .REN_A1_i(1'h0),
    .REN_A2_i(1'h0),
    .REN_B1_i(1'h0),
    .REN_B2_i(1'h0),
    .RESET_ni(1'h1),
    .WDATA_A1_i({ dinA[33:32], dinA[15:0] }),
    .WDATA_A2_i({ dinA[35:34], dinA[31:16] }),
    .WDATA_B1_i({ dinB[33:32], dinB[15:0] }),
    .WDATA_B2_i({ dinB[35:34], dinB[31:16] }),
    .WEN_A1_i(weA),
    .WEN_A2_i(weA),
    .WEN_B1_i(weB),
    .WEN_B2_i(weB)
  );
endmodule
