/* Generated by Yosys 0.38 (git sha1 24ed610c2, gcc 11.2.1 -fPIC -Os) */

module fabric_asym_ram_sdp_write_wider_dc_logic(\$auto$rs_design_edit.cc:572:execute$2684 , \$auto$rs_design_edit.cc:572:execute$2682 , \$auto$rs_design_edit.cc:572:execute$2687 , \$auto$rs_design_edit.cc:572:execute$2697 , \$auto$rs_design_edit.cc:572:execute$2702 , \$auto$rs_design_edit.cc:572:execute$2679 , \$auto$rs_design_edit.cc:572:execute$2703 , \$auto$rs_design_edit.cc:572:execute$2685 , \$auto$rs_design_edit.cc:572:execute$2708 , \$auto$rs_design_edit.cc:572:execute$2690 , \$auto$rs_design_edit.cc:572:execute$2700 , \$auto$rs_design_edit.cc:572:execute$2705 , \$auto$rs_design_edit.cc:572:execute$2677 , \$auto$rs_design_edit.cc:572:execute$2712 , \$auto$rs_design_edit.cc:572:execute$2675 , \$auto$rs_design_edit.cc:572:execute$2691 , \$auto$rs_design_edit.cc:572:execute$2699 , \$auto$rs_design_edit.cc:572:execute$2694 , \$auto$rs_design_edit.cc:572:execute$2680 , \$auto$rs_design_edit.cc:572:execute$2683 , \$auto$rs_design_edit.cc:572:execute$2686 
, \$auto$rs_design_edit.cc:572:execute$2689 , \$auto$rs_design_edit.cc:572:execute$2692 , \$auto$rs_design_edit.cc:572:execute$2695 , \$auto$rs_design_edit.cc:572:execute$2698 , \$auto$rs_design_edit.cc:572:execute$2701 , \$auto$rs_design_edit.cc:572:execute$2704 , \$auto$rs_design_edit.cc:572:execute$2709 , \$auto$rs_design_edit.cc:572:execute$2707 , \$auto$rs_design_edit.cc:572:execute$2710 , \$auto$clkbufmap.cc:298:execute$2616 , \$iopadmap$weA , \$iopadmap$enaB , \$auto$rs_design_edit.cc:572:execute$2693 , \$iopadmap$diA , \$auto$rs_design_edit.cc:572:execute$2711 , \$auto$rs_design_edit.cc:572:execute$2688 , \$iopadmap$doB , \$auto$rs_design_edit.cc:572:execute$2681 , \$auto$clkbufmap.cc:298:execute$2613 , \$iopadmap$addrB , \$auto$rs_design_edit.cc:572:execute$2706 
, \$auto$rs_design_edit.cc:572:execute$2696 , \$auto$rs_design_edit.cc:572:execute$2676 , \$iopadmap$enaA , \$auto$rs_design_edit.cc:572:execute$2678 , \$iopadmap$addrA );
  output \$auto$rs_design_edit.cc:572:execute$2701 ;
  output \$auto$rs_design_edit.cc:572:execute$2700 ;
  output \$auto$rs_design_edit.cc:572:execute$2699 ;
  output \$auto$rs_design_edit.cc:572:execute$2698 ;
  output \$auto$rs_design_edit.cc:572:execute$2697 ;
  output \$auto$rs_design_edit.cc:572:execute$2696 ;
  output \$auto$rs_design_edit.cc:572:execute$2695 ;
  output \$auto$rs_design_edit.cc:572:execute$2694 ;
  output \$auto$rs_design_edit.cc:572:execute$2693 ;
  output \$auto$rs_design_edit.cc:572:execute$2692 ;
  output \$auto$rs_design_edit.cc:572:execute$2691 ;
  output \$auto$rs_design_edit.cc:572:execute$2690 ;
  output \$auto$rs_design_edit.cc:572:execute$2689 ;
  output \$auto$rs_design_edit.cc:572:execute$2688 ;
  output \$auto$rs_design_edit.cc:572:execute$2687 ;
  output \$auto$rs_design_edit.cc:572:execute$2686 ;
  output \$auto$rs_design_edit.cc:572:execute$2685 ;
  output \$auto$rs_design_edit.cc:572:execute$2684 ;
  output \$auto$rs_design_edit.cc:572:execute$2683 ;
  output \$auto$rs_design_edit.cc:572:execute$2682 ;
  output \$auto$rs_design_edit.cc:572:execute$2681 ;
  output \$auto$rs_design_edit.cc:572:execute$2680 ;
  output \$auto$rs_design_edit.cc:572:execute$2679 ;
  output \$auto$rs_design_edit.cc:572:execute$2678 ;
  output \$auto$rs_design_edit.cc:572:execute$2677 ;
  output \$auto$rs_design_edit.cc:572:execute$2676 ;
  output \$auto$rs_design_edit.cc:572:execute$2675 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:72.1-85.4" *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.54-89.56" *)
  input \$auto$clkbufmap.cc:298:execute$2613 ;
  input \$auto$clkbufmap.cc:298:execute$2616 ;
  (* unused_bits = "8" *)
  (* keep = 32'h00000001 *)
  (* keep = 32'h00000001 *)
  input [7:0] \$iopadmap$addrA ;
  input [8:0] \$iopadmap$addrB ;
  output \$auto$rs_design_edit.cc:572:execute$2711 ;
  output \$auto$rs_design_edit.cc:572:execute$2712 ;
  input [15:0] \$iopadmap$diA ;
  output [7:0] \$iopadmap$doB ;
  input \$iopadmap$enaA ;
  input \$iopadmap$enaB ;
  input \$iopadmap$weA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:461.28-461.34" *)
  (* unused_bits = "0" *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:498.14-498.27" *)
  (* unused_bits = "8 9 10 11 12 13 14 15 16 17" *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:500.14-500.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:499.14-499.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:501.14-501.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  output \$auto$rs_design_edit.cc:572:execute$2703 ;
  output \$auto$rs_design_edit.cc:572:execute$2705 ;
  output \$auto$rs_design_edit.cc:572:execute$2706 ;
  output \$auto$rs_design_edit.cc:572:execute$2707 ;
  output \$auto$rs_design_edit.cc:572:execute$2708 ;
  output \$auto$rs_design_edit.cc:572:execute$2702 ;
  output \$auto$rs_design_edit.cc:572:execute$2704 ;
  output \$auto$rs_design_edit.cc:572:execute$2709 ;
  output \$auto$rs_design_edit.cc:572:execute$2710 ;
  wire \$auto$rs_design_edit.cc:572:execute$2701 ;
  wire \$auto$rs_design_edit.cc:572:execute$2700 ;
  wire \$auto$rs_design_edit.cc:572:execute$2699 ;
  wire \$auto$rs_design_edit.cc:572:execute$2698 ;
  wire \$auto$rs_design_edit.cc:572:execute$2697 ;
  wire \$auto$rs_design_edit.cc:572:execute$2696 ;
  wire \$auto$rs_design_edit.cc:572:execute$2695 ;
  wire \$auto$rs_design_edit.cc:572:execute$2694 ;
  wire \$auto$rs_design_edit.cc:572:execute$2693 ;
  wire \$auto$rs_design_edit.cc:572:execute$2692 ;
  wire \$auto$rs_design_edit.cc:572:execute$2691 ;
  wire \$auto$rs_design_edit.cc:572:execute$2690 ;
  wire \$auto$rs_design_edit.cc:572:execute$2689 ;
  wire \$auto$rs_design_edit.cc:572:execute$2688 ;
  wire \$auto$rs_design_edit.cc:572:execute$2687 ;
  wire \$auto$rs_design_edit.cc:572:execute$2686 ;
  wire \$auto$rs_design_edit.cc:572:execute$2685 ;
  wire \$auto$rs_design_edit.cc:572:execute$2684 ;
  wire \$auto$rs_design_edit.cc:572:execute$2683 ;
  wire \$auto$rs_design_edit.cc:572:execute$2682 ;
  wire \$auto$rs_design_edit.cc:572:execute$2681 ;
  wire \$auto$rs_design_edit.cc:572:execute$2680 ;
  wire \$auto$rs_design_edit.cc:572:execute$2679 ;
  wire \$auto$rs_design_edit.cc:572:execute$2678 ;
  wire \$auto$rs_design_edit.cc:572:execute$2677 ;
  wire \$auto$rs_design_edit.cc:572:execute$2676 ;
  wire \$auto$rs_design_edit.cc:572:execute$2675 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:72.1-85.4" *)
  wire [7:0] \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[0] ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[1] ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[2] ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[3] ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[4] ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[5] ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[6] ;
  wire \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[7] ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.54-89.56" *)
  wire \$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ;
  wire \$auto$clkbufmap.cc:298:execute$2613 ;
  wire \$auto$clkbufmap.cc:298:execute$2616 ;
  (* unused_bits = "8" *)
  wire [8:0] \$auto$memory_libmap.cc:2027:emit_port$1646 ;
  (* keep = 32'h00000001 *)
  wire [7:0] \$auto$memory_libmap.cc:2436:execute$1641 ;
  (* keep = 32'h00000001 *)
  wire \$auto$memory_libmap.cc:2437:execute$1642 ;
  wire [7:0] \$iopadmap$addrA ;
  wire [8:0] \$iopadmap$addrB ;
  wire \$auto$rs_design_edit.cc:572:execute$2711 ;
  wire \$auto$rs_design_edit.cc:572:execute$2712 ;
  wire [15:0] \$iopadmap$diA ;
  wire [7:0] \$iopadmap$doB ;
  wire \$iopadmap$enaA ;
  wire \$iopadmap$enaB ;
  wire \$iopadmap$weA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:461.28-461.34" *)
  (* unused_bits = "0" *)
  wire \$techmap1666\RAM.0.0.C1DATA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:498.14-498.27" *)
  (* unused_bits = "8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap1666\RAM.0.0.PORT_A1_RDATA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:500.14-500.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap1666\RAM.0.0.PORT_A2_RDATA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:499.14-499.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap1666\RAM.0.0.PORT_B1_RDATA ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:501.14-501.27" *)
  (* unused_bits = "0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17" *)
  wire [17:0] \$techmap1666\RAM.0.0.PORT_B2_RDATA ;
  wire \$auto$rs_design_edit.cc:572:execute$2703 ;
  wire \$auto$rs_design_edit.cc:572:execute$2705 ;
  wire \$auto$rs_design_edit.cc:572:execute$2706 ;
  wire \$auto$rs_design_edit.cc:572:execute$2707 ;
  wire \$auto$rs_design_edit.cc:572:execute$2708 ;
  wire \$auto$rs_design_edit.cc:572:execute$2702 ;
  wire \$auto$rs_design_edit.cc:572:execute$2704 ;
  wire \$auto$rs_design_edit.cc:572:execute$2709 ;
  wire \$auto$rs_design_edit.cc:572:execute$2710 ;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h8)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2602  (
    .A({ \$iopadmap$weA , \$iopadmap$enaA  }),
    .Y(\$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hca)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2603  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[5] , \$auto$memory_libmap.cc:2436:execute$1641 [5] }),
    .Y(\$iopadmap$doB [5])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hca)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2604  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[4] , \$auto$memory_libmap.cc:2436:execute$1641 [4] }),
    .Y(\$iopadmap$doB [4])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hca)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2605  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[3] , \$auto$memory_libmap.cc:2436:execute$1641 [3] }),
    .Y(\$iopadmap$doB [3])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hca)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2606  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[2] , \$auto$memory_libmap.cc:2436:execute$1641 [2] }),
    .Y(\$iopadmap$doB [2])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hca)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2607  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[1] , \$auto$memory_libmap.cc:2436:execute$1641 [1] }),
    .Y(\$iopadmap$doB [1])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hca)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2608  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[0] , \$auto$memory_libmap.cc:2436:execute$1641 [0] }),
    .Y(\$iopadmap$doB [0])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hca)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2609  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[6] , \$auto$memory_libmap.cc:2436:execute$1641 [6] }),
    .Y(\$iopadmap$doB [6])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:17.38-17.69" *)
  LUT1 #(
    .INIT_VALUE(2'h1)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2610  (
    .A(\$iopadmap$enaB ),
    .Y(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y )
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1918  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [0]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [0]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1919  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [1]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [1]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1920  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [2]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [2]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1921  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [3]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [3]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1922  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [4]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [4]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1923  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [5]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [5]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1924  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [6]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [6]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$1917$auto$blifparse.cc:377:parse_blif$1925  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$doB [7]),
    .E(\$abc$2600$techmap$techmap2413$abc$1917$auto$blifparse.cc:377:parse_blif$1918.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$2363_Y ),
    .Q(\$auto$memory_libmap.cc:2436:execute$1641 [7]),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$1951$auto$blifparse.cc:377:parse_blif$1952  (
    .C(\$auto$clkbufmap.cc:298:execute$2616 ),
    .D(\$iopadmap$enaB ),
    .E(1'h1),
    .Q(\$auto$memory_libmap.cc:2437:execute$1642 ),
    .R(1'h1)
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'hac)
  ) \$abc$2600$auto$blifparse.cc:535:parse_blif$2601  (
    .A({ \$auto$memory_libmap.cc:2437:execute$1642 , \$auto$memory_libmap.cc:2436:execute$1641 [7], \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[7]  }),
    .Y(\$iopadmap$doB [7])
  );
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_map_new_version.v:495.4-506.3|/nfs_eda_sw/softwares/Raptor/instl_dir/04_30_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/brams_final_map_new_version.v:645.7-684.2" *)
  TDP_RAM18KX2 #(
    .INIT1(16384'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .INIT1_PARITY(2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .INIT2(16384'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .INIT2_PARITY(2048'h00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),
    .READ_WIDTH_A1(32'h00000009),
    .READ_WIDTH_A2(32'sh00000001),
    .READ_WIDTH_B1(32'h00000009),
    .READ_WIDTH_B2(32'sh00000001),
    .WRITE_WIDTH_A1(32'h00000012),
    .WRITE_WIDTH_A2(32'sh00000001),
    .WRITE_WIDTH_B1(32'h00000012),
    .WRITE_WIDTH_B2(32'sh00000001)
  ) \RAM.0.0  (
    .ADDR_A1({ 2'h0, \$iopadmap$addrB , 3'h0 }),
    .ADDR_A2(14'hxxxx),
    .ADDR_B1({ 2'h0, \$iopadmap$addrA , 4'h0 }),
    .ADDR_B2(14'hxxxx),
    .BE_A1(2'h0),
    .BE_A2(2'h0),
    .BE_B1({ \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7], \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7] }),
    .BE_B2(2'hx),
    .CLK_A1(\$auto$clkbufmap.cc:298:execute$2616 ),
    .CLK_A2(1'hx),
    .CLK_B1(\$auto$clkbufmap.cc:298:execute$2613 ),
    .CLK_B2(1'hx),
    .RDATA_A1({ \$techmap1666\RAM.0.0.PORT_A1_RDATA [15:9], \$auto$memory_libmap.cc:2027:emit_port$1646 [8], \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[7] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[6] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[5] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[4] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[3] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[2] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[1] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[0]  }),
    .RDATA_A2({ \$techmap1666\RAM.0.0.PORT_A2_RDATA [15:1], \$techmap1666\RAM.0.0.C1DATA  }),
    .RDATA_B1(\$techmap1666\RAM.0.0.PORT_B1_RDATA [15:0]),
    .RDATA_B2(\$techmap1666\RAM.0.0.PORT_B2_RDATA [15:0]),
    .REN_A1(\$iopadmap$enaB ),
    .REN_A2(1'hx),
    .REN_B1(1'h0),
    .REN_B2(1'h0),
    .RPARITY_A1(\$techmap1666\RAM.0.0.PORT_A1_RDATA [17:16]),
    .RPARITY_A2(\$techmap1666\RAM.0.0.PORT_A2_RDATA [17:16]),
    .RPARITY_B1(\$techmap1666\RAM.0.0.PORT_B1_RDATA [17:16]),
    .RPARITY_B2(\$techmap1666\RAM.0.0.PORT_B2_RDATA [17:16]),
    .WDATA_A1(16'hxxxx),
    .WDATA_A2(16'hxxxx),
    .WDATA_B1(\$iopadmap$diA ),
    .WDATA_B2(16'hxxxx),
    .WEN_A1(1'h0),
    .WEN_A2(1'h0),
    .WEN_B1(\$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7]),
    .WEN_B2(1'hx),
    .WPARITY_A1(2'hx),
    .WPARITY_A2(2'hx),
    .WPARITY_B1(2'hx),
    .WPARITY_B2(2'hx)
  );
  assign \$auto$memory_libmap.cc:2027:emit_port$1646 [7:0] = { \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[7] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[6] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[5] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[4] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[3] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[2] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[1] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[0]  };
  assign \$techmap1666\RAM.0.0.PORT_A1_RDATA [8:0] = { \$auto$memory_libmap.cc:2027:emit_port$1646 [8], \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[7] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[6] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[5] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[4] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[3] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[2] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[1] , \$abc$1879$auto$memory_libmap.cc:2027:emit_port$1646[0]  };
  assign \$techmap1666\RAM.0.0.PORT_A2_RDATA [0] = \$techmap1666\RAM.0.0.C1DATA ;
  assign \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [6:0] = { \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7], \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7], \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7], \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7], \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7], \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7], \$0$memwr$\RAM$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/asym_ram_sdp_write_wider_dc_logic/rtl/asym_ram_sdp_write_wider_dc_logic.v:82$1_EN[7:0]$518 [7] };
  assign \$auto$rs_design_edit.cc:572:execute$2675  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2676  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2677  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2678  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2679  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2680  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2681  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2682  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2683  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2684  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2685  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2686  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2687  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2688  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2689  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2690  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2691  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2692  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2693  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2694  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2695  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2696  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2697  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2698  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2699  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2700  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2701  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2702  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2703  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2704  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2705  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2706  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2707  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2708  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2709  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2710  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2711  = 1'h1;
  assign \$auto$rs_design_edit.cc:572:execute$2712  = 1'h1;
endmodule