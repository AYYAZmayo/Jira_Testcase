/* Generated by Yosys 0.18+10 (git sha1 b90106be9, gcc 11.2.1 -fPIC -Os) */

module and2(a, b, c);
  input a;
  input b;
  output c;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/08_04_2023_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/RS_PRIMITIVES/TECHMAP/lut_map.v:12.23-12.24" *)
  wire [1:0] _0_;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/08_04_2023_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/RS_PRIMITIVES/TECHMAP/lut_map.v:13.13-13.14" *)
  wire _1_;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/bitstream_simulation_new/test/ArchBench/Testcases/and2/and2_golden/and2/./rtl/and2.v:5" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/bitstream_simulation_new/test/ArchBench/Testcases/and2/and2_golden/and2/./rtl/and2.v:5" *)
  wire a;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/bitstream_simulation_new/test/ArchBench/Testcases/and2/and2_golden/and2/./rtl/and2.v:5" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/bitstream_simulation_new/test/ArchBench/Testcases/and2/and2_golden/and2/./rtl/and2.v:5" *)
  wire b;
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/bitstream_simulation_new/test/ArchBench/Testcases/and2/and2_golden/and2/./rtl/and2.v:6" *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/zaheer_ahmad/bitstream_simulation_new/test/ArchBench/Testcases/and2/and2_golden/and2/./rtl/and2.v:6" *)
  wire c;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/08_04_2023_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/RS_PRIMITIVES/TECHMAP/lut_map.v:21.38-21.69" *)
  LUT2 #(
    .INIT_VALUE(4'h8)
  ) _2_ (
    .Y(c),
    .A({ b, a })
  );
endmodule
