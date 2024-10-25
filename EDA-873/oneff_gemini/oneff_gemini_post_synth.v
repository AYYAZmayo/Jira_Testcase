/* Generated by Yosys 0.18+10 (git sha1 391af7ebd, gcc 11.2.0 -fPIC -Os) */

module dut(d, rstn, clock0, q);
  input clock0;
  input d;
  output q;
  input rstn;
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/12_24_2022_09_15_02/bin/../share/yosys/rapidsilicon/genesis2/ffs_map.v:50.53-50.55" *)
  wire \$abc$379$techmap$techmap377$abc$193$auto$blifparse.cc:362:parse_blif$194.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/12_24_2022_09_15_02/bin/../share/yosys/rapidsilicon/genesis2/ffs_map.v:50$275_Y ;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:4" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:4" *)
  wire clock0;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:2" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:2" *)
  wire d;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:5" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:5" *)
  wire q;
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:3" *)
  (* keep = 32'h00000001 *)
  (* src = "/nfs_scratch/scratch/CompilerValidation/abdul_hameed/oneff/dut.v:3" *)
  wire rstn;
  (* module_not_derived = 32'h00000001 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/12_24_2022_09_15_02/bin/../share/yosys/rapidsilicon/genesis2/ffs_map.v:50.10-50.57" *)
  dffr \$abc$193$auto$blifparse.cc:362:parse_blif$194  (
    .C(clock0),
    .D(d),
    .Q(q),
    .R(\$abc$379$techmap$techmap377$abc$193$auto$blifparse.cc:362:parse_blif$194.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/12_24_2022_09_15_02/bin/../share/yosys/rapidsilicon/genesis2/ffs_map.v:50$275_Y )
  );
  \$lut  #(
    .LUT(2'h1),
    .WIDTH(32'h00000001)
  ) \$abc$379$auto$blifparse.cc:515:parse_blif$380  (
    .A(rstn),
    .Y(\$abc$379$techmap$techmap377$abc$193$auto$blifparse.cc:362:parse_blif$194.$logic_not$/nfs_eda_sw/softwares/Raptor/instl_dir/12_24_2022_09_15_02/bin/../share/yosys/rapidsilicon/genesis2/ffs_map.v:50$275_Y )
  );
endmodule
