/* Generated by Yosys 0.38 (git sha1 2b36bfab5, gcc 11.2.1 -fPIC -Os) */

module fabric_GJC46_edit(\$auto_1760 , \$auto_1761 , \$auto_1762 , \$auto_1763 , \$auto_1764 , \$auto_1765 , \$auto_1766 , \$auto_1767 , \$auto_1768 , \$auto_1769 , \$auto_1770 , \$auto_1771 , \$auto_1772 , \$auto_1773 , \$auto_1774 , \$auto_1775 , \$f2g_trx_dvalid_A_enable_buf , \$f2g_trx_reset_n_A_reset_buf_n , \$f2g_trx_reset_n_A_reset_buf_n_2 , \$f2g_tx_oe_A_buf_output_enable , \$ifab_buf_output_enable 
, \$ifab_data_i_valid , \$ifab_serdes_dpa_lock , \$ofab_bitslip_ctrl , \$ofab_enable_buf , \$ofab_enable_buf_2 , bitslip_ctrl_n_buf, \data_i_serdes[0] , \data_i_serdes[1] , \data_i_serdes[2] , \data_i_serdes[3] , \data_i_serdes[4] , \data_i_serdes[5] , \data_i_serdes[6] , \data_i_serdes[7] , \data_i_serdes[8] , \data_i_serdes[9] , \data_i_serdes_reg[0] , \data_i_serdes_reg[1] , \data_i_serdes_reg[2] , \data_i_serdes_reg[3] , \data_i_serdes_reg[4] 
, \data_i_serdes_reg[5] , \data_i_serdes_reg[6] , \data_i_serdes_reg[7] , \data_i_serdes_reg[8] , \data_i_serdes_reg[9] , enable_buf_n, fabric_clk_div, pll_clk, ready_buf, reset_buf);
  output \$auto_1760 ;
  output \$auto_1761 ;
  output \$auto_1762 ;
  output \$auto_1763 ;
  output \$auto_1764 ;
  output \$auto_1765 ;
  output \$auto_1766 ;
  output \$auto_1767 ;
  output \$auto_1768 ;
  output \$auto_1769 ;
  output \$auto_1770 ;
  output \$auto_1771 ;
  output \$auto_1772 ;
  output \$auto_1773 ;
  output \$auto_1774 ;
  output \$auto_1775 ;
  output \$f2g_trx_dvalid_A_enable_buf ;
  output \$f2g_trx_reset_n_A_reset_buf_n ;
  output \$f2g_trx_reset_n_A_reset_buf_n_2 ;
  output \$f2g_tx_oe_A_buf_output_enable ;
  input \$ifab_buf_output_enable ;
  input \$ifab_data_i_valid ;
  input \$ifab_serdes_dpa_lock ;
  output \$ofab_bitslip_ctrl ;
  output \$ofab_enable_buf ;
  output \$ofab_enable_buf_2 ;
  input bitslip_ctrl_n_buf;
  input \data_i_serdes[0] ;
  input \data_i_serdes[1] ;
  input \data_i_serdes[2] ;
  input \data_i_serdes[3] ;
  input \data_i_serdes[4] ;
  input \data_i_serdes[5] ;
  input \data_i_serdes[6] ;
  input \data_i_serdes[7] ;
  input \data_i_serdes[8] ;
  input \data_i_serdes[9] ;
  output \data_i_serdes_reg[0] ;
  output \data_i_serdes_reg[1] ;
  output \data_i_serdes_reg[2] ;
  output \data_i_serdes_reg[3] ;
  output \data_i_serdes_reg[4] ;
  output \data_i_serdes_reg[5] ;
  output \data_i_serdes_reg[6] ;
  output \data_i_serdes_reg[7] ;
  output \data_i_serdes_reg[8] ;
  output \data_i_serdes_reg[9] ;
  input enable_buf_n;
  input fabric_clk_div;
  input pll_clk;
  output ready_buf;
  input reset_buf;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97.17-97.42" *)
  wire \$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ;
  wire \$abc$1161$abc$666$li0_li0 ;
  wire \$abc$1161$abc$666$li1_li1 ;
  wire \$abc$1161$abc$666$li2_li2 ;
  wire \$abc$1161$abc$666$li3_li3 ;
  wire \$abc$1161$abc$666$li4_li4 ;
  wire \$abc$1161$abc$666$li5_li5 ;
  wire \$abc$1161$abc$666$li6_li6 ;
  wire \$abc$1161$abc$666$li7_li7 ;
  wire \$abc$1729$new_new_n29__ ;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.54-89.56" *)
  wire \$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ;
  wire \$auto_1760 ;
  wire \$auto_1761 ;
  wire \$auto_1762 ;
  wire \$auto_1763 ;
  wire \$auto_1764 ;
  wire \$auto_1765 ;
  wire \$auto_1766 ;
  wire \$auto_1767 ;
  wire \$auto_1768 ;
  wire \$auto_1769 ;
  wire \$auto_1770 ;
  wire \$auto_1771 ;
  wire \$auto_1772 ;
  wire \$auto_1773 ;
  wire \$auto_1774 ;
  wire \$auto_1775 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:22.10-22.20" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:22.10-22.20" *)
  wire \$f2g_trx_dvalid_A_enable_buf ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:20.10-20.21" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:20.10-20.21" *)
  wire \$f2g_trx_reset_n_A_reset_buf_n ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:20.10-20.21" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:20.10-20.21" *)
  wire \$f2g_trx_reset_n_A_reset_buf_n_2 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:38.10-38.27" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:38.10-38.27" *)
  wire \$f2g_tx_oe_A_buf_output_enable ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:38.10-38.27" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:38.10-38.27" *)
  wire \$ifab_buf_output_enable ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:31.10-31.22" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:31.10-31.22" *)
  wire \$ifab_data_i_valid ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:34.10-34.25" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:34.10-34.25" *)
  wire \$ifab_serdes_dpa_lock ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:36.10-36.22" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:36.10-36.22" *)
  wire \$ofab_bitslip_ctrl ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:22.10-22.20" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:22.10-22.20" *)
  wire \$ofab_enable_buf ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:22.10-22.20" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:22.10-22.20" *)
  wire \$ofab_enable_buf_2 ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:36.10-36.22" *)
  wire bitslip_ctrl;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:35.10-35.28" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:35.10-35.28" *)
  wire bitslip_ctrl_n_buf;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:38.10-38.27" *)
  wire buf_output_enable;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[0] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[1] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[2] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[3] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[4] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[5] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[6] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[7] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[8] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:29.26-29.39" *)
  wire \data_i_serdes[9] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[0] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[1] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[2] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[3] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[4] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[5] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[6] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[7] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[8] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:30.25-30.42" *)
  wire \data_i_serdes_reg[9] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:31.10-31.22" *)
  wire data_i_valid;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:22.10-22.20" *)
  wire enable_buf;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:21.10-21.22" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:21.10-21.22" *)
  wire enable_buf_n;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:28.10-28.24" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:28.10-28.24" *)
  wire fabric_clk_div;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:27.10-27.17" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:27.10-27.17" *)
  wire pll_clk;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:33.10-33.19" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:33.10-33.19" *)
  wire ready_buf;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:19.10-19.19" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:19.10-19.19" *)
  wire reset_buf;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:20.10-20.21" *)
  wire reset_buf_n;
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:34.10-34.25" *)
  wire serdes_dpa_lock;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[0] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[1] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[2] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[3] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[4] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[5] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[6] ;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:32.15-32.23" *)
  wire \wait_pll[7] ;
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:37.38-37.69" *)
  LUT6 #(
    .INIT_VALUE(64'h8000000000000000)
  ) \$abc$1729$auto_1730  (
    .A({ \wait_pll[2] , \wait_pll[1] , \wait_pll[0] , \wait_pll[5] , \wait_pll[4] , \wait_pll[3]  }),
    .Y(\$abc$1729$new_new_n29__ )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:33.38-33.69" *)
  LUT5 #(
    .INIT_VALUE(32'h80000000)
  ) \$abc$1729$auto_1731  (
    .A({ \$abc$1729$new_new_n29__ , \wait_pll[7] , \wait_pll[6] , data_i_valid, serdes_dpa_lock }),
    .Y(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:29.38-29.69" *)
  LUT4 #(
    .INIT_VALUE(16'h8000)
  ) \$abc$1729$auto_1732  (
    .A({ \$abc$1729$new_new_n29__ , \wait_pll[7] , \wait_pll[6] , serdes_dpa_lock }),
    .Y(ready_buf)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'h78)
  ) \$abc$1729$auto_1733  (
    .A({ \wait_pll[7] , \$abc$1729$new_new_n29__ , \wait_pll[6]  }),
    .Y(\$abc$1161$abc$666$li7_li7 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h6)
  ) \$abc$1729$auto_1734  (
    .A({ \$abc$1729$new_new_n29__ , \wait_pll[6]  }),
    .Y(\$abc$1161$abc$666$li6_li6 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:37.38-37.69" *)
  LUT6 #(
    .INIT_VALUE(64'h7fffffff80000000)
  ) \$abc$1729$auto_1735  (
    .A({ \wait_pll[5] , \wait_pll[2] , \wait_pll[1] , \wait_pll[0] , \wait_pll[4] , \wait_pll[3]  }),
    .Y(\$abc$1161$abc$666$li5_li5 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:33.38-33.69" *)
  LUT5 #(
    .INIT_VALUE(32'h7fff8000)
  ) \$abc$1729$auto_1736  (
    .A({ \wait_pll[4] , \wait_pll[2] , \wait_pll[1] , \wait_pll[0] , \wait_pll[3]  }),
    .Y(\$abc$1161$abc$666$li4_li4 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:29.38-29.69" *)
  LUT4 #(
    .INIT_VALUE(16'h7f80)
  ) \$abc$1729$auto_1737  (
    .A({ \wait_pll[3] , \wait_pll[2] , \wait_pll[1] , \wait_pll[0]  }),
    .Y(\$abc$1161$abc$666$li3_li3 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'h78)
  ) \$abc$1729$auto_1738  (
    .A({ \wait_pll[2] , \wait_pll[1] , \wait_pll[0]  }),
    .Y(\$abc$1161$abc$666$li2_li2 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h6)
  ) \$abc$1729$auto_1739  (
    .A({ \wait_pll[1] , \wait_pll[0]  }),
    .Y(\$abc$1161$abc$666$li1_li1 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:25.38-25.69" *)
  LUT3 #(
    .INIT_VALUE(8'h7f)
  ) \$abc$1729$auto_1740  (
    .A({ \$abc$1729$new_new_n29__ , \wait_pll[7] , \wait_pll[6]  }),
    .Y(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:17.38-17.69" *)
  LUT1 #(
    .INIT_VALUE(2'h1)
  ) \$abc$1729$auto_1741  (
    .A(bitslip_ctrl_n_buf),
    .Y(bitslip_ctrl)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:17.38-17.69" *)
  LUT1 #(
    .INIT_VALUE(2'h1)
  ) \$abc$1729$auto_1742  (
    .A(enable_buf_n),
    .Y(enable_buf)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:17.38-17.69" *)
  LUT1 #(
    .INIT_VALUE(2'h1)
  ) \$abc$1729$auto_1743  (
    .A(\wait_pll[0] ),
    .Y(\$abc$1161$abc$666$li0_li0 )
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:17.38-17.69" *)
  LUT1 #(
    .INIT_VALUE(2'h1)
  ) \$abc$1729$auto_1744  (
    .A(reset_buf),
    .Y(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_667  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li0_li0 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[0] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_668  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li1_li1 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[1] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_669  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li2_li2 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[2] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_670  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li3_li3 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[3] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_671  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li4_li4 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[4] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_672  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li5_li5 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[5] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_673  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li6_li6 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[6] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89.11-89.66" *)
  DFFRE \$abc$666$auto_674  (
    .C(pll_clk),
    .D(\$abc$1161$abc$666$li7_li7 ),
    .E(\$abc$1729$techmap$techmap1321$abc$666$auto_674.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:89$1262_Y ),
    .Q(\wait_pll[7] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_699  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[0] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[0] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_700  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[1] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[1] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_701  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[2] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[2] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_702  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[3] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[3] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_703  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[4] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[4] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_704  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[5] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[5] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_705  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[6] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[6] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_706  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[7] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[7] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_707  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[8] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[8] ),
    .R(reset_buf_n)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_08_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:80.11-80.65" *)
  DFFRE \$abc$698$auto_708  (
    .C(fabric_clk_div),
    .D(\data_i_serdes[9] ),
    .E(\$abc$1161$abc$489$logic_and$/nfs_scratch/scratch/CompilerValidation/abdul_hameed/GJC_INVALID_UPDATE/Validation/RTL_testcases/GJC-IO-Testcases/GJC46/EDA-3196/./rtl/GJC46_edit.v:97$12_Y ),
    .Q(\data_i_serdes_reg[9] ),
    .R(reset_buf_n)
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_trx_dvalid_A_enable_buf_1  (
    .I(enable_buf),
    .O(\$f2g_trx_dvalid_A_enable_buf )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_trx_reset_n_A_reset_buf_n_1  (
    .I(reset_buf_n),
    .O(\$f2g_trx_reset_n_A_reset_buf_n )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_trx_reset_n_A_reset_buf_n_3  (
    .I(reset_buf_n),
    .O(\$f2g_trx_reset_n_A_reset_buf_n_2 )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_tx_oe_A_buf_output_enable_1  (
    .I(buf_output_enable),
    .O(\$f2g_tx_oe_A_buf_output_enable )
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_buf_output_enable_1  (
    .I(\$ifab_buf_output_enable ),
    .O(buf_output_enable)
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_data_i_valid_1  (
    .I(\$ifab_data_i_valid ),
    .O(data_i_valid)
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_serdes_dpa_lock_1  (
    .I(\$ifab_serdes_dpa_lock ),
    .O(serdes_dpa_lock)
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$ofab_bitslip_ctrl_1  (
    .I(bitslip_ctrl),
    .O(\$ofab_bitslip_ctrl )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$ofab_enable_buf_1  (
    .I(enable_buf),
    .O(\$ofab_enable_buf )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$ofab_enable_buf_3  (
    .I(enable_buf),
    .O(\$ofab_enable_buf_2 )
  );
  assign \$auto_1762  = 1'h1;
  assign \$auto_1761  = 1'h1;
  assign \$auto_1760  = 1'h1;
  assign \$auto_1765  = 1'h0;
  assign \$auto_1766  = 1'h1;
  assign \$auto_1770  = 1'h0;
  assign \$auto_1772  = 1'h1;
  assign \$auto_1768  = 1'h1;
  assign \$auto_1773  = 1'h1;
  assign \$auto_1771  = 1'h0;
  assign \$auto_1763  = 1'h0;
  assign \$auto_1774  = 1'h1;
  assign \$auto_1775  = pll_clk;
  assign \$auto_1767  = 1'h1;
  assign \$auto_1764  = 1'h0;
  assign \$auto_1769  = 1'h0;
endmodule
