/* Generated by Yosys 0.18+10 (git sha1 18ac9db6a, gcc 9.4.0 -fPIC -Os) */

(* top =  1  *)
(* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Log2highacc/results_dir/.././rtl/Log2highacc.v:1" *)
module Log2highacc_post_synth(clk, DOUT, DIN);
  wire \$abc$1728$li00_li00 ;
  wire \$abc$1728$li01_li01 ;
  wire \$abc$1728$li02_li02 ;
  wire \$abc$1728$li03_li03 ;
  wire \$abc$1728$li04_li04 ;
  wire \$abc$1728$li05_li05 ;
  wire \$abc$1728$li06_li06 ;
  wire \$abc$1728$li07_li07 ;
  wire \$abc$1728$li08_li08 ;
  wire \$abc$1728$li09_li09 ;
  wire \$abc$1728$li10_li10 ;
  wire \$abc$1728$li11_li11 ;
  wire \$abc$1728$li12_li12 ;
  wire \$abc$1728$li13_li13 ;
  wire \$abc$1728$li14_li14 ;
  wire \$abc$1728$li15_li15 ;
  wire \$abc$1728$li16_li16 ;
  wire \$abc$1728$li17_li17 ;
  wire \$abc$1728$li18_li18 ;
  wire \$abc$1728$li19_li19 ;
  wire \$abc$1728$li20_li20 ;
  wire \$abc$1728$li21_li21 ;
  wire \$abc$1728$li22_li22 ;
  wire \$abc$1728$li23_li23 ;
  wire \$abc$4091$new_new_n34__ ;
  wire \$abc$4091$new_new_n35__ ;
  wire \$abc$4091$new_new_n36__ ;
  wire \$abc$4091$new_new_n38__ ;
  wire \$abc$4091$new_new_n39__ ;
  wire \$abc$4091$new_new_n40__ ;
  wire \$abc$4091$new_new_n43__ ;
  wire \$abc$4091$new_new_n44__ ;
  wire \$abc$4091$new_new_n46__ ;
  wire \$abc$4091$new_new_n47__ ;
  wire \$abc$4091$new_new_n48__ ;
  wire \$abc$4091$new_new_n49__ ;
  wire \$abc$4091$new_new_n50__ ;
  wire \$abc$4091$new_new_n52__ ;
  wire \$abc$4091$new_new_n53__ ;
  wire \$abc$4091$new_new_n54__ ;
  wire \$abc$4091$new_new_n55__ ;
  wire \$abc$4091$new_new_n56__ ;
  wire \$abc$4091$new_new_n57__ ;
  wire \$abc$4091$new_new_n59__ ;
  wire \$abc$4091$new_new_n61__ ;
  wire \$abc$4091$new_new_n62__ ;
  wire \$abc$4091$new_new_n63__ ;
  wire \$abc$4091$new_new_n64__ ;
  wire \$abc$4091$new_new_n66__ ;
  wire \$abc$4091$new_new_n67__ ;
  wire \$abc$4091$new_new_n69__ ;
  wire \$abc$4091$new_new_n70__ ;
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_map.v:295.4-305.3|/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:288.25-288.31" *)
  (* unused_bits = "0 1 2 3 4 5 6 7" *)
  wire [7:0] \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.C1DATA ;
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_map.v:295.4-305.3|/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:390.14-390.27" *)
  (* unused_bits = "8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_A1_RDATA ;
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_map.v:295.4-305.3|/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:392.14-392.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_A2_RDATA ;
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_map.v:295.4-305.3|/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:391.14-391.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_B1_RDATA ;
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_map.v:295.4-305.3|/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:393.14-393.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_B2_RDATA ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Log2highacc/results_dir/.././rtl/Log2highacc.v:24" *)
  input [23:0] DIN;
  wire [23:0] DIN;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Log2highacc/results_dir/.././rtl/Log2highacc.v:27" *)
  output [11:0] DOUT;
  wire [11:0] DOUT;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Log2highacc/results_dir/.././rtl/Log2highacc.v:36" *)
  wire [5:0] barrelout;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/Log2highacc/results_dir/.././rtl/Log2highacc.v:25" *)
  input clk;
  wire clk;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1729  (
    .C(clk),
    .D(\$abc$1728$li00_li00 ),
    .E(1'h1),
    .Q(\$abc$1728$li01_li01 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1730  (
    .C(clk),
    .D(\$abc$1728$li01_li01 ),
    .E(1'h1),
    .Q(\$abc$1728$li08_li08 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1731  (
    .C(clk),
    .D(\$abc$1728$li02_li02 ),
    .E(1'h1),
    .Q(\$abc$1728$li03_li03 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1732  (
    .C(clk),
    .D(\$abc$1728$li03_li03 ),
    .E(1'h1),
    .Q(\$abc$1728$li09_li09 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1733  (
    .C(clk),
    .D(\$abc$1728$li04_li04 ),
    .E(1'h1),
    .Q(\$abc$1728$li05_li05 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1734  (
    .C(clk),
    .D(\$abc$1728$li05_li05 ),
    .E(1'h1),
    .Q(\$abc$1728$li10_li10 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1735  (
    .C(clk),
    .D(\$abc$1728$li06_li06 ),
    .E(1'h1),
    .Q(\$abc$1728$li07_li07 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1736  (
    .C(clk),
    .D(\$abc$1728$li07_li07 ),
    .E(1'h1),
    .Q(\$abc$1728$li11_li11 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1737  (
    .C(clk),
    .D(\$abc$1728$li08_li08 ),
    .E(1'h1),
    .Q(DOUT[8]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1738  (
    .C(clk),
    .D(\$abc$1728$li09_li09 ),
    .E(1'h1),
    .Q(DOUT[9]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1739  (
    .C(clk),
    .D(\$abc$1728$li10_li10 ),
    .E(1'h1),
    .Q(DOUT[10]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1740  (
    .C(clk),
    .D(\$abc$1728$li11_li11 ),
    .E(1'h1),
    .Q(DOUT[11]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1741  (
    .C(clk),
    .D(\$abc$1728$li12_li12 ),
    .E(1'h1),
    .Q(\$abc$1728$li13_li13 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1742  (
    .C(clk),
    .D(\$abc$1728$li13_li13 ),
    .E(1'h1),
    .Q(barrelout[0]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1743  (
    .C(clk),
    .D(\$abc$1728$li14_li14 ),
    .E(1'h1),
    .Q(\$abc$1728$li15_li15 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1744  (
    .C(clk),
    .D(\$abc$1728$li15_li15 ),
    .E(1'h1),
    .Q(barrelout[1]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1745  (
    .C(clk),
    .D(\$abc$1728$li16_li16 ),
    .E(1'h1),
    .Q(\$abc$1728$li17_li17 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1746  (
    .C(clk),
    .D(\$abc$1728$li17_li17 ),
    .E(1'h1),
    .Q(barrelout[2]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1747  (
    .C(clk),
    .D(\$abc$1728$li18_li18 ),
    .E(1'h1),
    .Q(\$abc$1728$li19_li19 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1748  (
    .C(clk),
    .D(\$abc$1728$li19_li19 ),
    .E(1'h1),
    .Q(barrelout[3]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1749  (
    .C(clk),
    .D(\$abc$1728$li20_li20 ),
    .E(1'h1),
    .Q(\$abc$1728$li21_li21 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1750  (
    .C(clk),
    .D(\$abc$1728$li21_li21 ),
    .E(1'h1),
    .Q(barrelout[4]),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1751  (
    .C(clk),
    .D(\$abc$1728$li22_li22 ),
    .E(1'h1),
    .Q(\$abc$1728$li23_li23 ),
    .R(1'h1),
    .S(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/ffs_map.v:18.12-18.81" *)
  dffsre \$abc$1728$auto$blifparse.cc:362:parse_blif$1752  (
    .C(clk),
    .D(\$abc$1728$li23_li23 ),
    .E(1'h1),
    .Q(barrelout[5]),
    .R(1'h1),
    .S(1'h1)
  );
  \$lut  #(
    .LUT(16'h0001),
    .WIDTH(32'h00000004)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4092  (
    .A({ DIN[20], DIN[22], DIN[23], DIN[21] }),
    .Y(\$abc$4091$new_new_n34__ )
  );
  \$lut  #(
    .LUT(16'h0001),
    .WIDTH(32'h00000004)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4093  (
    .A({ DIN[18], DIN[19], DIN[16], DIN[17] }),
    .Y(\$abc$4091$new_new_n35__ )
  );
  \$lut  #(
    .LUT(16'h0001),
    .WIDTH(32'h00000004)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4094  (
    .A({ DIN[12], DIN[13], DIN[14], DIN[15] }),
    .Y(\$abc$4091$new_new_n36__ )
  );
  \$lut  #(
    .LUT(8'h4f),
    .WIDTH(32'h00000003)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4095  (
    .A({ \$abc$4091$new_new_n34__ , \$abc$4091$new_new_n35__ , \$abc$4091$new_new_n36__  }),
    .Y(\$abc$1728$li04_li04 )
  );
  \$lut  #(
    .LUT(4'h1),
    .WIDTH(32'h00000002)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4096  (
    .A(DIN[23:22]),
    .Y(\$abc$4091$new_new_n38__ )
  );
  \$lut  #(
    .LUT(64'h000000000000fff1),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4097  (
    .A({ DIN[19:18], DIN[16], DIN[17], DIN[15:14] }),
    .Y(\$abc$4091$new_new_n39__ )
  );
  \$lut  #(
    .LUT(64'h000000000000000e),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4098  (
    .A({ DIN[16], DIN[17], DIN[13:10] }),
    .Y(\$abc$4091$new_new_n40__ )
  );
  \$lut  #(
    .LUT(16'hb0ff),
    .WIDTH(32'h00000004)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4099  (
    .A({ \$abc$4091$new_new_n38__ , \$abc$4091$new_new_n34__ , \$abc$4091$new_new_n39__ , \$abc$4091$new_new_n40__  }),
    .Y(\$abc$1728$li02_li02 )
  );
  \$lut  #(
    .LUT(4'h7),
    .WIDTH(32'h00000002)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4100  (
    .A({ \$abc$4091$new_new_n35__ , \$abc$4091$new_new_n34__  }),
    .Y(\$abc$1728$li06_li06 )
  );
  \$lut  #(
    .LUT(64'h00000000ff00fff4),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4101  (
    .A({ DIN[14], DIN[12], DIN[13], DIN[11], DIN[9], DIN[10] }),
    .Y(\$abc$4091$new_new_n43__ )
  );
  \$lut  #(
    .LUT(64'h00000000ff00fff4),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4102  (
    .A({ DIN[22], DIN[20], DIN[21], DIN[19], DIN[17], DIN[18] }),
    .Y(\$abc$4091$new_new_n44__ )
  );
  \$lut  #(
    .LUT(64'hffffffffffffe000),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4103  (
    .A({ \$abc$4091$new_new_n44__ , DIN[23], \$abc$4091$new_new_n34__ , \$abc$4091$new_new_n35__ , \$abc$4091$new_new_n43__ , DIN[15] }),
    .Y(\$abc$1728$li00_li00 )
  );
  \$lut  #(
    .LUT(64'hffccff00fafaf0f0),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4104  (
    .A({ \$abc$1728$li00_li00 , \$abc$4091$new_new_n35__ , DIN[11:10], DIN[3:2] }),
    .Y(\$abc$4091$new_new_n46__ )
  );
  \$lut  #(
    .LUT(16'hfcfa),
    .WIDTH(32'h00000004)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4105  (
    .A({ \$abc$4091$new_new_n44__ , \$abc$4091$new_new_n35__ , DIN[13:12] }),
    .Y(\$abc$4091$new_new_n47__ )
  );
  \$lut  #(
    .LUT(32'hfcfa0000),
    .WIDTH(32'h00000005)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4106  (
    .A({ \$abc$4091$new_new_n47__ , \$abc$1728$li00_li00 , \$abc$1728$li06_li06 , DIN[5:4] }),
    .Y(\$abc$4091$new_new_n48__ )
  );
  \$lut  #(
    .LUT(64'hff00ffccf0f0fafa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4107  (
    .A({ \$abc$1728$li00_li00 , \$abc$1728$li06_li06 , DIN[15:14], DIN[7:6] }),
    .Y(\$abc$4091$new_new_n49__ )
  );
  \$lut  #(
    .LUT(64'hff00ffccf0f0fafa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4108  (
    .A({ \$abc$1728$li00_li00 , \$abc$1728$li06_li06 , DIN[17:16], DIN[9:8] }),
    .Y(\$abc$4091$new_new_n50__ )
  );
  \$lut  #(
    .LUT(64'hff00ccccf0f0aaaa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4109  (
    .A({ \$abc$1728$li02_li02 , \$abc$1728$li04_li04 , \$abc$4091$new_new_n50__ , \$abc$4091$new_new_n49__ , \$abc$4091$new_new_n48__ , \$abc$4091$new_new_n46__  }),
    .Y(\$abc$1728$li12_li12 )
  );
  \$lut  #(
    .LUT(16'hd0cc),
    .WIDTH(32'h00000004)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4110  (
    .A({ \$abc$4091$new_new_n39__ , DIN[11], DIN[13], \$abc$4091$new_new_n40__  }),
    .Y(\$abc$4091$new_new_n52__ )
  );
  \$lut  #(
    .LUT(64'h000000000000f3f5),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4111  (
    .A({ \$abc$1728$li00_li00 , \$abc$4091$new_new_n52__ , \$abc$4091$new_new_n40__ , \$abc$1728$li06_li06 , DIN[5], DIN[3] }),
    .Y(\$abc$4091$new_new_n53__ )
  );
  \$lut  #(
    .LUT(8'h53),
    .WIDTH(32'h00000003)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4112  (
    .A({ \$abc$4091$new_new_n39__ , DIN[14], DIN[12] }),
    .Y(\$abc$4091$new_new_n54__ )
  );
  \$lut  #(
    .LUT(64'hf3f5000000000000),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4113  (
    .A({ \$abc$4091$new_new_n54__ , \$abc$1728$li00_li00 , \$abc$4091$new_new_n40__ , \$abc$1728$li06_li06 , DIN[6], DIN[4] }),
    .Y(\$abc$4091$new_new_n55__ )
  );
  \$lut  #(
    .LUT(64'hff00ffccf0f0fafa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4114  (
    .A({ \$abc$1728$li02_li02 , \$abc$1728$li06_li06 , DIN[17], DIN[15], DIN[9], DIN[7] }),
    .Y(\$abc$4091$new_new_n56__ )
  );
  \$lut  #(
    .LUT(64'hff00ffccf0f0fafa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4115  (
    .A({ \$abc$1728$li02_li02 , \$abc$1728$li06_li06 , DIN[18], DIN[16], DIN[10], DIN[8] }),
    .Y(\$abc$4091$new_new_n57__ )
  );
  \$lut  #(
    .LUT(64'hff00f0f011111111),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4116  (
    .A({ \$abc$1728$li04_li04 , \$abc$1728$li00_li00 , \$abc$4091$new_new_n57__ , \$abc$4091$new_new_n56__ , \$abc$4091$new_new_n55__ , \$abc$4091$new_new_n53__  }),
    .Y(\$abc$1728$li14_li14 )
  );
  \$lut  #(
    .LUT(64'hff00ffccf0f0fafa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4117  (
    .A({ \$abc$1728$li00_li00 , \$abc$1728$li06_li06 , DIN[19:18], DIN[11:10] }),
    .Y(\$abc$4091$new_new_n59__ )
  );
  \$lut  #(
    .LUT(64'hff00ccccf0f0aaaa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4118  (
    .A({ \$abc$1728$li02_li02 , \$abc$1728$li04_li04 , \$abc$4091$new_new_n59__ , \$abc$4091$new_new_n50__ , \$abc$4091$new_new_n49__ , \$abc$4091$new_new_n48__  }),
    .Y(\$abc$1728$li16_li16 )
  );
  \$lut  #(
    .LUT(64'hffccff00fafaf0f0),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4119  (
    .A({ \$abc$1728$li00_li00 , \$abc$4091$new_new_n34__ , DIN[18:17], DIN[14:13] }),
    .Y(\$abc$4091$new_new_n61__ )
  );
  \$lut  #(
    .LUT(64'hffccff00fafaf0f0),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4120  (
    .A({ \$abc$1728$li00_li00 , \$abc$4091$new_new_n36__ , DIN[10:9], DIN[6:5] }),
    .Y(\$abc$4091$new_new_n62__ )
  );
  \$lut  #(
    .LUT(64'hffccff00fafaf0f0),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4121  (
    .A({ \$abc$1728$li00_li00 , \$abc$4091$new_new_n34__ , DIN[20:19], DIN[16:15] }),
    .Y(\$abc$4091$new_new_n63__ )
  );
  \$lut  #(
    .LUT(64'h0f0f3333005500ff),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4122  (
    .A({ \$abc$1728$li00_li00 , \$abc$4091$new_new_n36__ , DIN[11], DIN[8], DIN[12], DIN[7] }),
    .Y(\$abc$4091$new_new_n64__ )
  );
  \$lut  #(
    .LUT(64'hff00ff33f0f0fafa),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4123  (
    .A({ \$abc$1728$li02_li02 , \$abc$1728$li06_li06 , \$abc$4091$new_new_n63__ , \$abc$4091$new_new_n61__ , \$abc$4091$new_new_n64__ , \$abc$4091$new_new_n62__  }),
    .Y(\$abc$1728$li18_li18 )
  );
  \$lut  #(
    .LUT(64'hffff0f0fffff22ff),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4124  (
    .A({ \$abc$1728$li00_li00 , \$abc$1728$li06_li06 , DIN[12], \$abc$4091$new_new_n52__ , DIN[10], \$abc$4091$new_new_n39__  }),
    .Y(\$abc$4091$new_new_n66__ )
  );
  \$lut  #(
    .LUT(64'h33ff00ff5f5f0f0f),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4125  (
    .A({ \$abc$1728$li00_li00 , \$abc$4091$new_new_n38__ , DIN[21:18] }),
    .Y(\$abc$4091$new_new_n67__ )
  );
  \$lut  #(
    .LUT(64'h0c0affffffffffff),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4126  (
    .A({ \$abc$4091$new_new_n66__ , \$abc$4091$new_new_n67__ , \$abc$1728$li02_li02 , \$abc$1728$li04_li04 , \$abc$4091$new_new_n50__ , \$abc$4091$new_new_n49__  }),
    .Y(\$abc$1728$li20_li20 )
  );
  \$lut  #(
    .LUT(32'h00007707),
    .WIDTH(32'h00000005)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4127  (
    .A({ DIN[21], \$abc$1728$li06_li06 , \$abc$4091$new_new_n52__ , DIN[19], \$abc$4091$new_new_n38__  }),
    .Y(\$abc$4091$new_new_n69__ )
  );
  \$lut  #(
    .LUT(32'h0000bbb0),
    .WIDTH(32'h00000005)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4128  (
    .A({ DIN[22], \$abc$1728$li06_li06 , \$abc$4091$new_new_n54__ , DIN[20], DIN[23] }),
    .Y(\$abc$4091$new_new_n70__ )
  );
  \$lut  #(
    .LUT(64'h00ffccff0f0fafaf),
    .WIDTH(32'h00000006)
  ) \$abc$4091$auto$blifparse.cc:515:parse_blif$4129  (
    .A({ \$abc$1728$li00_li00 , \$abc$1728$li04_li04 , \$abc$4091$new_new_n70__ , \$abc$4091$new_new_n69__ , \$abc$4091$new_new_n57__ , \$abc$4091$new_new_n56__  }),
    .Y(\$abc$1728$li22_li22 )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_map.v:295.4-305.3|/nfs_cadtools/raptor/instl_dir/09_28_2022_08_00_01/bin/../share/yosys/rapidsilicon/genesis/brams_final_map.v:445.3-480.3" *)
  TDP36K #(
    .INIT_i(36864'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxfdfaf7f4f1eeebe8e5e2dfdcd8d5d2cfcbc8c5c1bebab7b3b0aca9a5a19d9a96928e8a86827e7a76716d6964605c57524e49443f3b36312c26211c16110b0600xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx),
    .MODE_BITS(81'h101402809240140140492)
  ) \$auto$memory_bmux2rom.cc:63:execute$202.0.0.0  (
    .ADDR_A1_i({ 6'h00, barrelout, 3'h0 }),
    .ADDR_A2_i(14'bxxxxxxxxxxx000),
    .ADDR_B1_i(15'h0000),
    .ADDR_B2_i(14'bxxxxxxxxxxx000),
    .BE_A1_i(2'h0),
    .BE_A2_i(2'h0),
    .BE_B1_i(2'h0),
    .BE_B2_i(2'hx),
    .CLK_A1_i(clk),
    .CLK_A2_i(1'hx),
    .CLK_B1_i(clk),
    .CLK_B2_i(1'hx),
    .FLUSH1_i(1'h0),
    .FLUSH2_i(1'h0),
    .RDATA_A1_o({ \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_A1_RDATA [17:8], DOUT[7:0] }),
    .RDATA_A2_o({ \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_A2_RDATA [17:8], \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.C1DATA  }),
    .RDATA_B1_o(\$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_B1_RDATA ),
    .RDATA_B2_o(\$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_B2_RDATA ),
    .REN_A1_i(1'h1),
    .REN_A2_i(1'hx),
    .REN_B1_i(1'h0),
    .REN_B2_i(1'h0),
    .WDATA_A1_i(18'h3ffff),
    .WDATA_A2_i(18'h3ffff),
    .WDATA_B1_i(18'hxxxxx),
    .WDATA_B2_i(18'hxxxxx),
    .WEN_A1_i(1'h0),
    .WEN_A2_i(1'h0),
    .WEN_B1_i(1'h0),
    .WEN_B2_i(1'hx)
  );
  assign \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_A1_RDATA [7:0] = DOUT[7:0];
  assign \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.PORT_A2_RDATA [7:0] = \$techmap260$auto$memory_bmux2rom.cc:63:execute$202.0.0.0.C1DATA ;
endmodule
