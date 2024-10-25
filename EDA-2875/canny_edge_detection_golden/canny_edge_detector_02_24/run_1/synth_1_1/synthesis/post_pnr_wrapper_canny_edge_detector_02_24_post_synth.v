/* Generated by Yosys 0.38 (git sha1 45a28179e, gcc 11.2.1 -fPIC -Os) */

module top(clk, rstn, data_in, fsync_in, fsync_out, data_out);
  input clk;
  input [7:0] data_in;
  output [7:0] data_out;
  input fsync_in;
  output fsync_out;
  input rstn;
  wire \$auto$clkbufmap.cc:298:execute$397472 ;
  wire \$auto$rs_design_edit.cc:1187:execute$401445.clk ;
  wire [7:0] \$auto$rs_design_edit.cc:1187:execute$401445.data_in ;
  (* keep = 32'd1 *)
  wire [7:0] \$auto$rs_design_edit.cc:1187:execute$401445.data_out ;
  wire \$auto$rs_design_edit.cc:1187:execute$401445.fsync_in ;
  wire \$auto$rs_design_edit.cc:1187:execute$401445.fsync_out ;
  wire \$auto$rs_design_edit.cc:1187:execute$401445.rstn ;
  wire \$auto$rs_design_edit.cc:906:execute$401433 ;
  wire \$auto$rs_design_edit.cc:906:execute$401434 ;
  wire \$auto$rs_design_edit.cc:906:execute$401435 ;
  wire \$auto$rs_design_edit.cc:906:execute$401436 ;
  wire \$auto$rs_design_edit.cc:906:execute$401437 ;
  wire \$auto$rs_design_edit.cc:906:execute$401438 ;
  wire \$auto$rs_design_edit.cc:906:execute$401439 ;
  wire \$auto$rs_design_edit.cc:906:execute$401440 ;
  wire \$auto$rs_design_edit.cc:906:execute$401441 ;
  wire \$auto$rs_design_edit.cc:906:execute$401442 ;
  wire \$auto$rs_design_edit.cc:906:execute$401443 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$clkbufmap.cc:298:execute$397472 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401433 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401434 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401435 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401436 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401437 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401438 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401439 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401440 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401441 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401442 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401443 ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$clk ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[0] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[1] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[2] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[3] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[4] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[5] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[6] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[7] ;
  (* init = 1'h0 *)
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[0] ;
  (* init = 1'h0 *)
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[1] ;
  (* init = 1'h0 *)
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[2] ;
  (* init = 1'h0 *)
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[3] ;
  (* init = 1'h0 *)
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[4] ;
  (* init = 1'h0 *)
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[5] ;
  (* init = 1'h0 *)
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[7] ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$fsync_in ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$fsync_out ;
  wire \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$rstn ;
  wire \$iopadmap$clk ;
  wire \$iopadmap$data_in[0] ;
  wire \$iopadmap$data_in[1] ;
  wire \$iopadmap$data_in[2] ;
  wire \$iopadmap$data_in[3] ;
  wire \$iopadmap$data_in[4] ;
  wire \$iopadmap$data_in[5] ;
  wire \$iopadmap$data_in[6] ;
  wire \$iopadmap$data_in[7] ;
  (* init = 1'h0 *)
  wire \$iopadmap$data_out[0] ;
  (* init = 1'h0 *)
  wire \$iopadmap$data_out[1] ;
  (* init = 1'h0 *)
  wire \$iopadmap$data_out[2] ;
  (* init = 1'h0 *)
  wire \$iopadmap$data_out[3] ;
  (* init = 1'h0 *)
  wire \$iopadmap$data_out[4] ;
  (* init = 1'h0 *)
  wire \$iopadmap$data_out[5] ;
  (* init = 1'h0 *)
  wire \$iopadmap$data_out[7] ;
  wire \$iopadmap$fsync_in ;
  wire \$iopadmap$fsync_out ;
  wire \$iopadmap$rstn ;
  wire clk;
  wire [7:0] data_in;
  (* keep = 32'd1 *)
  (* keep = 32'd1 *)
  wire [7:0] data_out;
  wire fsync_in;
  wire fsync_out;
  wire rstn;
  fabric_top \$auto$rs_design_edit.cc:1185:execute$401444  (
    .\$auto$clkbufmap.cc:298:execute$397472 (\$auto$clkbufmap.cc:298:execute$397472 ),
    .\$auto$rs_design_edit.cc:906:execute$401433 (\$auto$rs_design_edit.cc:906:execute$401433 ),
    .\$auto$rs_design_edit.cc:906:execute$401434 (\$auto$rs_design_edit.cc:906:execute$401434 ),
    .\$auto$rs_design_edit.cc:906:execute$401435 (\$auto$rs_design_edit.cc:906:execute$401435 ),
    .\$auto$rs_design_edit.cc:906:execute$401436 (\$auto$rs_design_edit.cc:906:execute$401436 ),
    .\$auto$rs_design_edit.cc:906:execute$401437 (\$auto$rs_design_edit.cc:906:execute$401437 ),
    .\$auto$rs_design_edit.cc:906:execute$401438 (\$auto$rs_design_edit.cc:906:execute$401438 ),
    .\$auto$rs_design_edit.cc:906:execute$401439 (\$auto$rs_design_edit.cc:906:execute$401439 ),
    .\$auto$rs_design_edit.cc:906:execute$401440 (\$auto$rs_design_edit.cc:906:execute$401440 ),
    .\$auto$rs_design_edit.cc:906:execute$401441 (\$auto$rs_design_edit.cc:906:execute$401441 ),
    .\$auto$rs_design_edit.cc:906:execute$401442 (\$auto$rs_design_edit.cc:906:execute$401442 ),
    .\$auto$rs_design_edit.cc:906:execute$401443 (\$auto$rs_design_edit.cc:906:execute$401443 ),
    .\$iopadmap$data_in[0] (\$iopadmap$data_in[0] ),
    .\$iopadmap$data_in[1] (\$iopadmap$data_in[1] ),
    .\$iopadmap$data_in[2] (\$iopadmap$data_in[2] ),
    .\$iopadmap$data_in[3] (\$iopadmap$data_in[3] ),
    .\$iopadmap$data_in[4] (\$iopadmap$data_in[4] ),
    .\$iopadmap$data_in[5] (\$iopadmap$data_in[5] ),
    .\$iopadmap$data_in[6] (\$iopadmap$data_in[6] ),
    .\$iopadmap$data_in[7] (\$iopadmap$data_in[7] ),
    .\$iopadmap$data_out[0] (\$iopadmap$data_out[0] ),
    .\$iopadmap$data_out[1] (\$iopadmap$data_out[1] ),
    .\$iopadmap$data_out[2] (\$iopadmap$data_out[2] ),
    .\$iopadmap$data_out[3] (\$iopadmap$data_out[3] ),
    .\$iopadmap$data_out[4] (\$iopadmap$data_out[4] ),
    .\$iopadmap$data_out[5] (\$iopadmap$data_out[5] ),
    .\$iopadmap$data_out[7] (\$iopadmap$data_out[7] ),
    .\$iopadmap$fsync_in (\$iopadmap$fsync_in ),
    .\$iopadmap$fsync_out (\$iopadmap$fsync_out ),
    .\$iopadmap$rstn (\$iopadmap$rstn )
  );
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:14.13-14.45" *)
  CLK_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$clkbufmap.cc:265:execute$397470  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$clk ),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$clkbufmap.cc:298:execute$397472 )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.clk  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401433 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.clk ),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$clk )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401434 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [0]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[0] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in_1  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401435 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [1]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[1] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in_2  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401436 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [2]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[2] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in_3  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401437 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [3]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[3] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in_4  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401438 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [4]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[4] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in_5  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401439 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [5]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[5] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in_6  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401440 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [6]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[6] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_in_7  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401441 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.data_in [7]),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[7] )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[0] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [0])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out_1  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[1] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [1])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out_2  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[2] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [2])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out_3  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[3] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [3])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out_4  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[4] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [4])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out_5  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[5] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [5])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out_6  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[7] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [6])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.data_out_7  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[7] ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.data_out [7])
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.fsync_in  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401442 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.fsync_in ),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$fsync_in )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:41.13-41.44" *)
  O_BUF \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.fsync_out  (
    .I(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$fsync_out ),
    .O(\$auto$rs_design_edit.cc:1187:execute$401445.fsync_out )
  );
  (* keep = 32'd1 *)
  (* module_not_derived = 32'd1 *)
  (* src = "/nfs_eda_sw/softwares/Raptor/instl_dir/05_15_2024_09_15_01/bin/../share/yosys/rapidsilicon/genesis3/io_cell_final_map.v:29.41-29.81" *)
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$top.rstn  (
    .EN(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401443 ),
    .I(\$auto$rs_design_edit.cc:1187:execute$401445.rstn ),
    .O(\$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$rstn )
  );
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401443  = \$auto$rs_design_edit.cc:906:execute$401443 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401442  = \$auto$rs_design_edit.cc:906:execute$401442 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401441  = \$auto$rs_design_edit.cc:906:execute$401441 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401440  = \$auto$rs_design_edit.cc:906:execute$401440 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401439  = \$auto$rs_design_edit.cc:906:execute$401439 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401438  = \$auto$rs_design_edit.cc:906:execute$401438 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401437  = \$auto$rs_design_edit.cc:906:execute$401437 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401436  = \$auto$rs_design_edit.cc:906:execute$401436 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401435  = \$auto$rs_design_edit.cc:906:execute$401435 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401434  = \$auto$rs_design_edit.cc:906:execute$401434 ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$rs_design_edit.cc:906:execute$401433  = \$auto$rs_design_edit.cc:906:execute$401433 ;
  assign \$iopadmap$data_in[7]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[7] ;
  assign \$iopadmap$data_in[6]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[6] ;
  assign \$iopadmap$data_in[5]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[5] ;
  assign \$iopadmap$data_in[4]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[4] ;
  assign \$iopadmap$data_in[3]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[3] ;
  assign \$iopadmap$data_in[2]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[2] ;
  assign \$iopadmap$data_in[1]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[1] ;
  assign \$iopadmap$data_in[0]  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_in[0] ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[7]  = \$iopadmap$data_out[7] ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[5]  = \$iopadmap$data_out[5] ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[4]  = \$iopadmap$data_out[4] ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[3]  = \$iopadmap$data_out[3] ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[2]  = \$iopadmap$data_out[2] ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[1]  = \$iopadmap$data_out[1] ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$data_out[0]  = \$iopadmap$data_out[0] ;
  assign \$auto$clkbufmap.cc:298:execute$397472  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$auto$clkbufmap.cc:298:execute$397472 ;
  assign \$iopadmap$fsync_in  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$fsync_in ;
  assign \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$fsync_out  = \$iopadmap$fsync_out ;
  assign \$iopadmap$rstn  = \$flatten$auto$rs_design_edit.cc:1187:execute$401445.$iopadmap$rstn ;
  assign \$auto$rs_design_edit.cc:1187:execute$401445.clk  = clk;
  assign \$auto$rs_design_edit.cc:1187:execute$401445.data_in  = data_in;
  assign data_out = \$auto$rs_design_edit.cc:1187:execute$401445.data_out ;
  assign \$auto$rs_design_edit.cc:1187:execute$401445.fsync_in  = fsync_in;
  assign fsync_out = \$auto$rs_design_edit.cc:1187:execute$401445.fsync_out ;
  assign \$auto$rs_design_edit.cc:1187:execute$401445.rstn  = rstn;
endmodule
