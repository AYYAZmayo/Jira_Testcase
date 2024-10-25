/* Generated by Yosys 0.18+10 (git sha1 e9e2c024c, gcc 11.2.1 -fPIC -Os) */

module O_SERDES_primitive_inst(D, RST, LOAD_WORD, CLK_IN, OE_IN, OE_OUT, Q, CHANNEL_BOND_SYNC_IN, CHANNEL_BOND_SYNC_OUT, PLL_LOCK, PLL_CLK);
  input CHANNEL_BOND_SYNC_IN;
  output CHANNEL_BOND_SYNC_OUT;
  input CLK_IN;
  input [3:0] D;
  input LOAD_WORD;
  input OE_IN;
  output OE_OUT;
  input PLL_CLK;
  input PLL_LOCK;
  output Q;
  input RST;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:12.9-12.29" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:12.9-12.29" *)
  wire CHANNEL_BOND_SYNC_IN;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:13.10-13.31" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:13.10-13.31" *)
  wire CHANNEL_BOND_SYNC_OUT;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:8.9-8.15" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:8.9-8.15" *)
  wire CLK_IN;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:5.21-5.22" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:5.21-5.22" *)
  wire [3:0] D;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:7.9-7.18" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:7.9-7.18" *)
  wire LOAD_WORD;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:9.9-9.14" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:9.9-9.14" *)
  wire OE_IN;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:10.10-10.16" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:10.10-10.16" *)
  wire OE_OUT;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:15.9-15.16" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:15.9-15.16" *)
  wire PLL_CLK;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:14.9-14.17" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:14.9-14.17" *)
  wire PLL_LOCK;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:11.10-11.11" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:11.10-11.11" *)
  wire Q;
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:6.9-6.12" *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:6.9-6.12" *)
  wire RST;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/AE/saad/New_primitives_test_cases/Compiler_Validation_10Jan_24/Compiler_Validation/RTL_testcases/RS_FPGA_PRIMITIVES_new/New_O_serdes_testcase/O_SERDES_primitive_inst/results_dir/.././rtl/O_SERDES_primitive_inst.v:21.3-33.2" *)
  O_SERDES #(
    .DATA_RATE("SDR"),
    .WIDTH(32'sh00000004)
  ) isnt (
    .CHANNEL_BOND_SYNC_IN(CHANNEL_BOND_SYNC_IN),
    .CHANNEL_BOND_SYNC_OUT(CHANNEL_BOND_SYNC_OUT),
    .CLK_IN(CLK_IN),
    .D(D),
    .LOAD_WORD(LOAD_WORD),
    .OE_IN(OE_IN),
    .OE_OUT(OE_OUT),
    .PLL_CLK(PLL_CLK),
    .PLL_LOCK(PLL_LOCK),
    .Q(Q),
    .RST(RST)
  );
endmodule
