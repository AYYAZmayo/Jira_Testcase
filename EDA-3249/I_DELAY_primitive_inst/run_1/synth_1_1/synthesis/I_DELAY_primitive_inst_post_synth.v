/* Generated by Yosys 0.38 (git sha1 4964457dc, gcc 11.2.1 -fPIC -Os) */

module I_DELAY_primitive_inst(reset, in, DLY_LOAD, DLY_ADJ, DLY_INCDEC, DLY_TAP_VALUE, CLK_IN, O);
  input CLK_IN;
  input DLY_ADJ;
  input DLY_INCDEC;
  input DLY_LOAD;
  output [5:0] DLY_TAP_VALUE;
  output O;
  input in;
  input reset;
  wire \$abc$192$li0_li0 ;
  wire \$clk_buf_$ibuf_CLK_IN ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:7.9-7.16" *)
  wire \$f2g_trx_dly_adj_$ibuf_DLY_ADJ ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:8.9-8.19" *)
  wire \$f2g_trx_dly_inc_$ibuf_DLY_INCDEC ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:6.9-6.17" *)
  wire \$f2g_trx_dly_ld_$ibuf_DLY_LOAD ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$f2g_tx_out_$obuf_DLY_TAP_VALUE[0] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$f2g_tx_out_$obuf_DLY_TAP_VALUE[1] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$f2g_tx_out_$obuf_DLY_TAP_VALUE[2] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$f2g_tx_out_$obuf_DLY_TAP_VALUE[3] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$f2g_tx_out_$obuf_DLY_TAP_VALUE[4] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$f2g_tx_out_$obuf_DLY_TAP_VALUE[5] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:10.9-10.15" *)
  wire \$ibuf_CLK_IN ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:7.9-7.16" *)
  wire \$ibuf_DLY_ADJ ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:8.9-8.19" *)
  wire \$ibuf_DLY_INCDEC ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:6.9-6.17" *)
  wire \$ibuf_DLY_LOAD ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:5.9-5.11" *)
  wire \$ibuf_in ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:4.9-4.14" *)
  wire \$ibuf_reset ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$ifab_$obuf_DLY_TAP_VALUE[0] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$ifab_$obuf_DLY_TAP_VALUE[1] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$ifab_$obuf_DLY_TAP_VALUE[2] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$ifab_$obuf_DLY_TAP_VALUE[3] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$ifab_$obuf_DLY_TAP_VALUE[4] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$ifab_$obuf_DLY_TAP_VALUE[5] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$obuf_DLY_TAP_VALUE[0] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$obuf_DLY_TAP_VALUE[1] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$obuf_DLY_TAP_VALUE[2] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$obuf_DLY_TAP_VALUE[3] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$obuf_DLY_TAP_VALUE[4] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire \$obuf_DLY_TAP_VALUE[5] ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:11.10-11.11" *)
  wire \$obuf_O ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:10.9-10.15" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:10.9-10.15" *)
  wire CLK_IN;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:7.9-7.16" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:7.9-7.16" *)
  wire DLY_ADJ;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:8.9-8.19" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:8.9-8.19" *)
  wire DLY_INCDEC;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:6.9-6.17" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:6.9-6.17" *)
  wire DLY_LOAD;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:9.16-9.29" *)
  wire [5:0] DLY_TAP_VALUE;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:11.10-11.11" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:11.10-11.11" *)
  wire O;
  (* init = 1'h0 *)
  (* keep = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:14.5-14.8" *)
  wire dff;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:5.9-5.11" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:5.9-5.11" *)
  wire in;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:4.9-4.14" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:4.9-4.14" *)
  wire reset;
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/ffs_map.v:10.11-10.70" *)
  DFFRE \$abc$192$auto_193  (
    .C(\$clk_buf_$ibuf_CLK_IN ),
    .D(\$abc$192$li0_li0 ),
    .E(1'h1),
    .Q(dff),
    .R(1'h1)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h4)
  ) \$abc$424$auto_425  (
    .A({ \$ibuf_in , \$ibuf_reset  }),
    .Y(\$abc$192$li0_li0 )
  );
  (* keep = 32'sh00000001 *)
  CLK_BUF \$clkbuf$I_DELAY_primitive_inst.$ibuf_CLK_IN  (
    .I(\$ibuf_CLK_IN ),
    .O(\$clk_buf_$ibuf_CLK_IN )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_trx_dly_adj_$ibuf_DLY_ADJ_1  (
    .I(\$ibuf_DLY_ADJ ),
    .O(\$f2g_trx_dly_adj_$ibuf_DLY_ADJ )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_trx_dly_inc_$ibuf_DLY_INCDEC_1  (
    .I(\$ibuf_DLY_INCDEC ),
    .O(\$f2g_trx_dly_inc_$ibuf_DLY_INCDEC )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_trx_dly_ld_$ibuf_DLY_LOAD_1  (
    .I(\$ibuf_DLY_LOAD ),
    .O(\$f2g_trx_dly_ld_$ibuf_DLY_LOAD )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_tx_out_$obuf_DLY_TAP_VALUE[0]_1  (
    .I(\$obuf_DLY_TAP_VALUE[0] ),
    .O(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[0] )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_tx_out_$obuf_DLY_TAP_VALUE[1]_1  (
    .I(\$obuf_DLY_TAP_VALUE[1] ),
    .O(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[1] )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_tx_out_$obuf_DLY_TAP_VALUE[2]_1  (
    .I(\$obuf_DLY_TAP_VALUE[2] ),
    .O(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[2] )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_tx_out_$obuf_DLY_TAP_VALUE[3]_1  (
    .I(\$obuf_DLY_TAP_VALUE[3] ),
    .O(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[3] )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_tx_out_$obuf_DLY_TAP_VALUE[4]_1  (
    .I(\$obuf_DLY_TAP_VALUE[4] ),
    .O(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[4] )
  );
  (* keep = 32'sh00000001 *)
  O_FAB \$f2g_tx_out_$obuf_DLY_TAP_VALUE[5]_1  (
    .I(\$obuf_DLY_TAP_VALUE[5] ),
    .O(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[5] )
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$ibuf$I_DELAY_primitive_inst.$ibuf_CLK_IN  (
    .EN(1'h1),
    .I(CLK_IN),
    .O(\$ibuf_CLK_IN )
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$ibuf$I_DELAY_primitive_inst.$ibuf_DLY_ADJ  (
    .EN(1'h1),
    .I(DLY_ADJ),
    .O(\$ibuf_DLY_ADJ )
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$ibuf$I_DELAY_primitive_inst.$ibuf_DLY_INCDEC  (
    .EN(1'h1),
    .I(DLY_INCDEC),
    .O(\$ibuf_DLY_INCDEC )
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$ibuf$I_DELAY_primitive_inst.$ibuf_DLY_LOAD  (
    .EN(1'h1),
    .I(DLY_LOAD),
    .O(\$ibuf_DLY_LOAD )
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$ibuf$I_DELAY_primitive_inst.$ibuf_in  (
    .EN(1'h1),
    .I(in),
    .O(\$ibuf_in )
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$ibuf$I_DELAY_primitive_inst.$ibuf_reset  (
    .EN(1'h1),
    .I(reset),
    .O(\$ibuf_reset )
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_$obuf_DLY_TAP_VALUE[0]_1  (
    .I(\$ifab_$obuf_DLY_TAP_VALUE[0] ),
    .O(\$obuf_DLY_TAP_VALUE[0] )
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_$obuf_DLY_TAP_VALUE[1]_1  (
    .I(\$ifab_$obuf_DLY_TAP_VALUE[1] ),
    .O(\$obuf_DLY_TAP_VALUE[1] )
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_$obuf_DLY_TAP_VALUE[2]_1  (
    .I(\$ifab_$obuf_DLY_TAP_VALUE[2] ),
    .O(\$obuf_DLY_TAP_VALUE[2] )
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_$obuf_DLY_TAP_VALUE[3]_1  (
    .I(\$ifab_$obuf_DLY_TAP_VALUE[3] ),
    .O(\$obuf_DLY_TAP_VALUE[3] )
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_$obuf_DLY_TAP_VALUE[4]_1  (
    .I(\$ifab_$obuf_DLY_TAP_VALUE[4] ),
    .O(\$obuf_DLY_TAP_VALUE[4] )
  );
  (* keep = 32'sh00000001 *)
  I_FAB \$ifab_$obuf_DLY_TAP_VALUE[5]_1  (
    .I(\$ifab_$obuf_DLY_TAP_VALUE[5] ),
    .O(\$obuf_DLY_TAP_VALUE[5] )
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUFT \$obuf$I_DELAY_primitive_inst.$obuf_DLY_TAP_VALUE  (
    .I(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[0] ),
    .O(DLY_TAP_VALUE[0]),
    .T(1'h1)
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUFT \$obuf$I_DELAY_primitive_inst.$obuf_DLY_TAP_VALUE_1  (
    .I(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[1] ),
    .O(DLY_TAP_VALUE[1]),
    .T(1'h1)
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUFT \$obuf$I_DELAY_primitive_inst.$obuf_DLY_TAP_VALUE_2  (
    .I(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[2] ),
    .O(DLY_TAP_VALUE[2]),
    .T(1'h1)
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUFT \$obuf$I_DELAY_primitive_inst.$obuf_DLY_TAP_VALUE_3  (
    .I(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[3] ),
    .O(DLY_TAP_VALUE[3]),
    .T(1'h1)
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUFT \$obuf$I_DELAY_primitive_inst.$obuf_DLY_TAP_VALUE_4  (
    .I(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[4] ),
    .O(DLY_TAP_VALUE[4]),
    .T(1'h1)
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUFT \$obuf$I_DELAY_primitive_inst.$obuf_DLY_TAP_VALUE_5  (
    .I(\$f2g_tx_out_$obuf_DLY_TAP_VALUE[5] ),
    .O(DLY_TAP_VALUE[5]),
    .T(1'h1)
  );
  (* keep = 32'sh00000001 *)
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/09_19_2024_09_15_02/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUFT \$obuf$I_DELAY_primitive_inst.$obuf_O  (
    .I(\$obuf_O ),
    .O(O),
    .T(1'h1)
  );
  (* module_not_derived = 32'sh00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/os_fpga2/Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/I_DELAY_primitive_inst/./rtl/I_DELAY_primitive_inst.v:18.3-26.2" *)
  I_DELAY #(
    .DELAY(32'sh00000000)
  ) inst (
    .CLK_IN(\$clk_buf_$ibuf_CLK_IN ),
    .DLY_ADJ(\$f2g_trx_dly_adj_$ibuf_DLY_ADJ ),
    .DLY_INCDEC(\$f2g_trx_dly_inc_$ibuf_DLY_INCDEC ),
    .DLY_LOAD(\$f2g_trx_dly_ld_$ibuf_DLY_LOAD ),
    .DLY_TAP_VALUE({ \$ifab_$obuf_DLY_TAP_VALUE[5] , \$ifab_$obuf_DLY_TAP_VALUE[4] , \$ifab_$obuf_DLY_TAP_VALUE[3] , \$ifab_$obuf_DLY_TAP_VALUE[2] , \$ifab_$obuf_DLY_TAP_VALUE[1] , \$ifab_$obuf_DLY_TAP_VALUE[0]  }),
    .I(dff),
    .O(\$obuf_O )
  );
endmodule
