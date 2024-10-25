//********************************************************************************
// SPDX-License-Identifier: Apache-2.0
// Copyright 2020 Western Digital Corporation or its affiliates.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//********************************************************************************
////////////////////////////////////////////////////
//   ICACHE DATA & TAG MODULE WRAPPER              //
/////////////////////////////////////////////////////
module eh2_ifu_ic_mem
import eh2_pkg::*;
//#(
//`include "eh2_param.vh"
 //)
  (

      input logic                                   clk,
      input logic                                   active_clk,
      input logic                                   rst_l,
      input logic                                   clk_override,
      input logic                                   dec_tlu_core_ecc_disable,

      input logic [31:1]                            ic_rw_addr,
      input logic [4-1:0]          ic_wr_en  ,         // Which way to write
      input logic                                   ic_rd_en  ,         // Read enable
       input logic [5:3]           ic_debug_addr,      // Read/Write addresss to the Icache.
      input logic                                   ic_debug_rd_en,     // Icache debug rd
      input logic                                   ic_debug_wr_en,     // Icache debug wr
      input logic                                   ic_debug_tag_array, // Debug tag array
      input logic [4-1:0]          ic_debug_way,       // Debug way. Rd or Wr.
      input logic [63:0]                            ic_premux_data,     // Premux data to be muxed with each way of the Icache.
      input logic                                   ic_sel_premux_data, // Select the pre_muxed data

      input  logic [2-1:0][70:0]  ic_wr_data,         // Data to fill to the Icache. With ECC
      output logic [63:0]                           ic_rd_data ,        // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
      output logic [70:0]                           ic_debug_rd_data ,  // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
      output logic [25:0]                           ictag_debug_rd_data,// Debug icache tag.
      input logic  [70:0]                           ic_debug_wr_data,   // Debug wr cache.

      output logic [2-1:0]        ic_eccerr,                 // ecc error per bank
      output logic [2-1:0]        ic_parerr,                 // ecc error per bank
      input logic [4-1:0]          ic_tag_valid,              // Valid from the I$ tag valid outside (in flops).

      input eh2_ic_data_ext_in_pkt_t [4-1:0][2-1:0] ic_data_ext_in_pkt,   // this is being driven by the top level for soc testing/etc
      input eh2_ic_tag_ext_in_pkt_t  [4-1:0]                          ic_tag_ext_in_pkt,

      output logic [4-1:0]         ic_rd_hit,   // ic_rd_hit[3:0]
      output logic                                  ic_tag_perr, // Tag Parity error
      input  logic                                  scan_mode
      ) ;


   EH2_IC_TAG  ic_tag_inst
          (
           .*,
           .ic_wr_en     (ic_wr_en[4-1:0]),
           .ic_debug_addr(ic_debug_addr[5:3]),
           .ic_rw_addr   (ic_rw_addr[31:3])
           ) ;

   EH2_IC_DATA  ic_data_inst
          (
           .*,
           .ic_wr_en     (ic_wr_en[4-1:0]),
           .ic_debug_addr(ic_debug_addr[5:3]),
           .ic_rw_addr   (ic_rw_addr[31:1])
           ) ;

 endmodule


/////////////////////////////////////////////////
////// ICACHE DATA MODULE    ////////////////////
/////////////////////////////////////////////////
module EH2_IC_DATA
import eh2_pkg::*;
//#(
//`include "eh2_param.vh"
 //)
     (
      input logic clk,
      input logic active_clk,
      input logic rst_l,
      input logic clk_override,


      input logic [31:1]  ic_rw_addr,
      input logic [4-1:0]ic_wr_en,
      input logic                          ic_rd_en,           // Read enable

      input  logic [2-1:0][70:0]    ic_wr_data,         // Data to fill to the Icache. With ECC
      output logic [63:0]                             ic_rd_data ,                                 // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
      input  logic [70:0]                             ic_debug_wr_data,   // Debug wr cache.
      output logic [70:0]                             ic_debug_rd_data ,  // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
      output logic [2-1:0] ic_parerr,
      output logic [2-1:0] ic_eccerr,    // ecc error per bank
      input logic [5:3]     ic_debug_addr,     // Read/Write addresss to the Icache.
      input logic                            ic_debug_rd_en,      // Icache debug rd
      input logic                            ic_debug_wr_en,      // Icache debug wr
      input logic                            ic_debug_tag_array,  // Debug tag array
      input logic [4-1:0]   ic_debug_way,        // Debug way. Rd or Wr.
      input logic [63:0]                     ic_premux_data,      // Premux data to be muxed with each way of the Icache.
      input logic                            ic_sel_premux_data,  // Select the pre_muxed data

      input logic [4-1:0]ic_rd_hit,
      input eh2_ic_data_ext_in_pkt_t  [4-1:0][2-1:0] ic_data_ext_in_pkt,   // this is being driven by the top level for soc testing/etc
      input  logic                         scan_mode

      ) ;


   logic [3-1:1]                                             ic_rw_addr_ff;
   logic [2-1:0][4-1:0]                        ic_b_sb_wren;    //bank x ways
   logic [2-1:0][4-1:0]                        ic_b_sb_rden;    //bank x ways
   logic [2-1:0]                                                ic_b_rden;       //bank
   logic [2-1:0]                                                ic_b_rden_ff;    //bank
   logic [2-1:0]                                                ic_debug_sel_sb;


   logic [4-1:0][2-1:0][70:0]                  wb_dout ;       //  ways x bank
   logic [2-1:0][70:0]                                          ic_sb_wr_data, ic_bank_wr_data, wb_dout_ecc_bank, wb_dout_ecc_bank_ff;
   logic [4-1:0] [141:0]                                         wb_dout_way, wb_dout_way_pre, wb_dout_way_with_premux;
   logic [141:0]                                                                  wb_dout_ecc;

   logic [2-1:0]                                                bank_check_en;
   logic [2-1:0]                                                bank_check_en_ff;


   logic [2-1:0][4-1:0]                        ic_bank_way_clken;     // bank x way clk enables
   logic [2-1:0]                                                ic_bank_way_clken_final;  // ;
   logic [4-1:0][2-1:0]                        ic_bank_way_clken_final_up;  // ;

   logic [4-1:0]                                                 ic_debug_rd_way_en;    // debug wr_way
   logic [4-1:0]                                                 ic_debug_rd_way_en_ff; // debug wr_way
   logic [4-1:0]                                                 ic_debug_wr_way_en;    // debug wr_way
   logic [5:1]                                                   ic_rw_addr_q;
   logic [2-1:0] [5 : 3] ic_rw_addr_bank_q;
   logic [5-1 : 3]                           ic_rw_addr_q_inc;
   logic [4-1:0]                                                 ic_rd_hit_q;



      logic [2-1:0]                                                ic_b_sram_en;
      logic [2-1:0]                                                ic_b_read_en;
      logic [2-1:0]                                                ic_b_write_en;
      logic [2-1:0][4-1:0] [31 : 3]  wb_index_hold;
      logic [2-1:0][4-1:0]                                 write_bypass_en;     //bank
      logic [2-1:0][4-1:0]                                 write_bypass_en_ff;  //bank
      logic [2-1:0][4-1:0]                                 index_valid;  //bank
      logic [2-1:0][4-1:0]                                 ic_b_clear_en;
      logic [2-1:0][4-1:0]                                 ic_b_addr_match;
      logic [2-1:0][4-1:0]                                 ic_b_addr_match_index_only;

      logic [4-1:0][2-1:0]                                                ic_b_sram_en_up;
      logic [4-1:0][2-1:0]                                                ic_b_read_en_up;
      logic [4-1:0][2-1:0]                                                ic_b_write_en_up;
      logic [4-1:0][2-1:0][4-1:0] [31 : 3]  wb_index_hold_up;
      logic [4-1:0][2-1:0][4-1:0]                                 write_bypass_en_up;     //bank
      logic [4-1:0][2-1:0][4-1:0]                                 write_bypass_en_ff_up;  //bank
      logic [4-1:0][2-1:0][4-1:0]                                 index_valid_up;  //bank
      logic [4-1:0][2-1:0][4-1:0]                                 ic_b_clear_en_up;
      logic [4-1:0][2-1:0][4-1:0]                                 ic_b_addr_match_up;
      logic [4-1:0][2-1:0][4-1:0]                                 ic_b_addr_match_index_only_up;


   logic [2-1:0]                 [31 : 3] ic_b_rw_addr;
   logic [2-1:0]                 [31 : 3] ic_b_rw_addr_index_only;

   logic [4-1:0][2-1:0]                 [31 : 3] ic_b_rw_addr_up;
   logic [4-1:0][2-1:0]                 [31 : 3] ic_b_rw_addr_index_only_up;



   logic                                                                          ic_rd_en_with_debug;
   logic                                                                          ic_rw_addr_wrap, ic_cacheline_wrap_ff;

   logic                                                                          ic_debug_rd_en_ff;


//-----------------------------------------------------------
// ----------- Logic section starts here --------------------
//-----------------------------------------------------------
   assign  ic_debug_rd_way_en[4-1:0] =  {4{ic_debug_rd_en & ~ic_debug_tag_array}} & ic_debug_way[4-1:0] ;
   assign  ic_debug_wr_way_en[4-1:0] =  {4{ic_debug_wr_en & ~ic_debug_tag_array}} & ic_debug_way[4-1:0] ;

   always_comb begin : clkens
      ic_bank_way_clken   = '0;

      for ( int i=0; i<2; i++) begin: wr_ens
       ic_b_sb_wren[i]        =  ic_wr_en[4-1:0]  |
                                       (ic_debug_wr_way_en[4-1:0] & {4{ic_debug_addr[5 : 3] == i}}) ;
       ic_debug_sel_sb[i]     = (ic_debug_addr[5 : 3] == i );
       ic_sb_wr_data[i]       = (ic_debug_sel_sb[i] & ic_debug_wr_en) ? ic_debug_wr_data : ic_bank_wr_data[i] ;
       ic_b_rden[i]           =  ic_rd_en_with_debug & ( ( ~ic_rw_addr_q[3] & (i==0)) |
                                                         (( ic_rw_addr_q[3] & ic_rw_addr_q[5:1] != 2'b00) & (i==0)) |
                                                         (  ic_rw_addr_q[3] & (i==1)) |
                                                         ((~ic_rw_addr_q[3] & ic_rw_addr_q[5:1] != 2'b00) & (i==1)) ) ;



       ic_b_sb_rden[i]        =  {4{ic_b_rden[i]}}   ;


       for ( int j=0; j<4; j++) begin: way_clkens
         ic_bank_way_clken[i][j] |= ic_b_sb_rden[i][j] | clk_override | ic_b_sb_wren[i][j];
       end
     end // block: wr_ens
   end // block: clkens

// bank read enables
  assign ic_rd_en_with_debug                          = ((ic_rd_en   | ic_debug_rd_en ) & ~(|ic_wr_en));
  assign ic_rw_addr_q[5:1] = (ic_debug_rd_en | ic_debug_wr_en) ?
                                              {ic_debug_addr[5:3],2'b0} :
                                              ic_rw_addr[5:1] ;

   assign ic_rw_addr_q_inc[5-1:3] = ic_rw_addr_q[5-1 : 3] + 1 ;
   assign ic_rw_addr_wrap                                        = ic_rw_addr_q[3] & ic_rd_en_with_debug & ~(|ic_wr_en[4-1:0]);
   assign ic_cacheline_wrap_ff                                   = ic_rw_addr_ff[3-1:2] == {(3 - 2){1'b1}};


   assign ic_rw_addr_bank_q[0] = ~ic_rw_addr_wrap ? ic_rw_addr_q[5:1] : {ic_rw_addr_q[5: 1] , ic_rw_addr_q_inc[5-1: 3] } ;
   assign ic_rw_addr_bank_q[1] = ic_rw_addr_q[5:1];


   rvdff #((2 )) rd_b_en_ff (.*,
                                               .clk(active_clk),
                                               .din ({ic_b_rden[2-1:0]}),
                                               .dout({ic_b_rden_ff[2-1:0]})
                                               ) ;



   rvdff #((3 - 1)) adr_ff (.*,
                                                 .clk(active_clk),
                                                 .din ({ic_rw_addr_q[3-1:1]}),
                                                 .dout({ic_rw_addr_ff[3-1:1]})
);

   rvdff #(1+4) debug_rd_wy_ff (.*,
                                                 .clk(active_clk),
                                                 .din ({ic_debug_rd_way_en[4-1:0], ic_debug_rd_en}),
                                                 .dout({ic_debug_rd_way_en_ff[4-1:0], ic_debug_rd_en_ff})
                                                 );
localparam ICACHE_WAYPACK=0;
 if (ICACHE_WAYPACK == 0 ) begin : PACKED_0



    logic [4-1:0][2-1:0][4-1:0] wrptr_up;
    logic [4-1:0][2-1:0][4-1:0] wrptr_in_up;
    logic [4-1:0][2-1:0][4-1:0]       sel_bypass_up;
    logic [4-1:0][2-1:0][4-1:0]       sel_bypass_ff_up;
    logic [4-1:0][2-1:0][(71*4)-1:0]    sel_bypass_data_up;
    logic [4-1:0][2-1:0]                                 any_bypass_up;
    logic [4-1:0][2-1:0]                                 any_addr_match_up;

`define EH2_IC_DATA_SRAM(depth,width)                                                                               \
           ram_``depth``x``width ic_bank_sb_way_data (                                                               \
                                     .ME(ic_bank_way_clken_final_up[i][k]),                                          \
                                     .WE (ic_b_sb_wren[k][i]),                                                       \
                                     .D  (ic_sb_wr_data[k][``width-1:0]),                                            \
                                     .ADR(ic_rw_addr_bank_q[k][5:3]),         \
                                     .Q  (wb_dout_pre_up[i][k]),                                                     \
                                     .CLK (clk),                                                                     \
                                     .ROP ( ),                                                                       \
                                     .TEST1(ic_data_ext_in_pkt[i][k].TEST1),                                         \
                                     .RME(ic_data_ext_in_pkt[i][k].RME),                                             \
                                     .RM(ic_data_ext_in_pkt[i][k].RM),                                               \
                                                                                                                     \
                                     .LS(ic_data_ext_in_pkt[i][k].LS),                                               \
                                     .DS(ic_data_ext_in_pkt[i][k].DS),                                               \
                                     .SD(ic_data_ext_in_pkt[i][k].SD),                                               \
                                                                                                                     \
                                     .TEST_RNM(ic_data_ext_in_pkt[i][k].TEST_RNM),                                   \
                                     .BC1(ic_data_ext_in_pkt[i][k].BC1),                                             \
                                     .BC2(ic_data_ext_in_pkt[i][k].BC2)                                              \
                                    );  \


localparam ICACHE_BYPASS_ENABLE=1;

//if (ICACHE_BYPASS_ENABLE == 1) begin \
 //                assign wrptr_in_up[i][k] = (wrptr_up[i][k] == (4-1)) ? '0 : (wrptr_up[i][k] + 1'd1);                                    \
   //              rvdffs  #(4_WIDTH)  wrptr_ff(.*, .clk(active_clk),  .en(|write_bypass_en_up[i][k]), .din (wrptr_in_up[i][k]), .dout(wrptr_up[i][k])) ;     \
     //            assign ic_b_sram_en_up[i][k]              = ic_bank_way_clken[k][i];                             \
       //          assign ic_b_read_en_up[i][k]              =  ic_b_sram_en_up[i][k]  &  ic_b_sb_rden[k][i];       \
         //        assign ic_b_write_en_up[i][k]             =  ic_b_sram_en_up[i][k] &   ic_b_sb_wren[k][i];       \
           //      assign ic_bank_way_clken_final_up[i][k]   =  ic_b_sram_en_up[i][k] &    ~(|sel_bypass_up[i][k]); \
             //    assign ic_b_rw_addr_up[i][k] = {ic_rw_addr[31:5+1],ic_rw_addr_bank_q[k]};       \
               //  assign ic_b_rw_addr_index_only_up[i][k] = {ic_rw_addr_bank_q[k]};                                \
 //                always_comb begin                                                                                \
   //                 any_addr_match_up[i][k] = '0;                                                                 \
     //               for (int l=0; l<4; l++) begin                                              \
       //                any_addr_match_up[i][k] |= ic_b_addr_match_up[i][k][l];                                    \
         //           end                                                                                           \
           //      end                                                                                              \
             //   // it is an error to ever have 2 entries with the same index and both valid                       \
               // for (genvar l=0; l<4; l++) begin: BYPASS                                       \
                   // full match up to bit 31                                                                     \
  //                 assign ic_b_addr_match_up[i][k][l] = (wb_index_hold_up[i][k][l] ==  ic_b_rw_addr_up[i][k]) & index_valid_up[i][k][l];            \
    //               assign ic_b_addr_match_index_only_up[i][k][l] = (wb_index_hold_up[i][k][l][5:3] ==  ic_b_rw_addr_index_only_up[i][k]) & index_valid_up[i][k][l];            \
//                                                                                                                                                    \
  //                 assign ic_b_clear_en_up[i][k][l]   = ic_b_write_en_up[i][k] &   ic_b_addr_match_index_only_up[i][k][l];                                     \
    //                                                                                                                                                \
      //             assign sel_bypass_up[i][k][l]      = ic_b_read_en_up[i][k]  &   ic_b_addr_match_up[i][k][l] ;                                    \
        //                                                                                                                                            \
          ///         assign write_bypass_en_up[i][k][l] = ic_b_read_en_up[i][k]  &  ~any_addr_match_up[i][k] & (wrptr_up[i][k] == l);                 \
             //                                                                                                                                       \
               //    rvdff  #(1)  write_bypass_ff (.*, .clk(active_clk),                                                                 .din(write_bypass_en_up[i][k][l]), .dout(write_bypass_en_ff_up[i][k][l])) ; \
                 //  rvdffs #(1)  index_val_ff    (.*, .clk(active_clk), .en(write_bypass_en_up[i][k][l] | ic_b_clear_en_up[i][k][l]),   .din(~ic_b_clear_en_up[i][k][l]),  .dout(index_valid_up[i][k][l])) ;       \
                   //rvdff  #(1)  sel_hold_ff     (.*, .clk(active_clk),                                                                 .din(sel_bypass_up[i][k][l]),      .dout(sel_bypass_ff_up[i][k][l])) ;     \
       //            rvdffe #((31-3+1)) ic_addr_index    (.*, .en(write_bypass_en_up[i][k][l]),    .din (ic_b_rw_addr_up[i][k]), .dout(wb_index_hold_up[i][k][l]));         \
         //          rvdffe #(``width)                             rd_data_hold_ff  (.*, .en(write_bypass_en_ff_up[i][k][l]), .din (wb_dout_pre_up[i][k][``width-1:0]),  .dout(wb_dout_hold_up[i][k][l]));     \
           //     end                                                                                                                       \
             //   always_comb begin                                                                                                         \
               //  any_bypass_up[i][k] = '0;                                                                                                \
                 //sel_bypass_data_up[i][k] = '0;                                                                                           \
   //              for (int l=0; l<4; l++) begin                                                                         \
     //               any_bypass_up[i][k]      |=  sel_bypass_ff_up[i][k][l];                                                               \
       //             sel_bypass_data_up[i][k] |= (sel_bypass_ff_up[i][k][l]) ? wb_dout_hold_up[i][k][l] : '0;                              \
         //        end                                                                                                                      \
           //      wb_dout[i][k]   =   any_bypass_up[i][k] ?  sel_bypass_data_up[i][k] :  wb_dout_pre_up[i][k] ;                            \
             //    end                                                                                                                      \
      //       end                                                                                                                          \
  //           else begin                                                                                                                   \
    //             assign wb_dout[i][k]                      =   wb_dout_pre_up[i][k] ;                                                     \
      //           assign ic_bank_way_clken_final_up[i][k]   =  ic_bank_way_clken[k][i];                                                      \
        //     end



localparam ICACHE_ECC=1;
localparam ICACHE_DATA_DEPTH=1;

   for (genvar i=0; i<4; i++) begin: WAYS
      for (genvar k=0; k<2; k++) begin: BANKS_WAY   // 16B subbank
      if (ICACHE_ECC) begin : ECC1
        logic [4-1:0][2-1:0] [71-1:0]        wb_dout_pre_up;           // data and its bit enables
        logic [4-1:0][2-1:0] [4-1:0] [71-1:0]  wb_dout_hold_up;

        if ($clog2(ICACHE_DATA_DEPTH) == 13 )   begin : size_8192
           `EH2_IC_DATA_SRAM(8192,71)
        end
        else if ($clog2(ICACHE_DATA_DEPTH) == 12 )   begin : size_4096
           `EH2_IC_DATA_SRAM(4096,71)
        end
        else if ($clog2(ICACHE_DATA_DEPTH) == 11 ) begin : size_2048
           `EH2_IC_DATA_SRAM(2048,71)
        end
        else if ( $clog2(ICACHE_DATA_DEPTH) == 10 ) begin : size_1024
           `EH2_IC_DATA_SRAM(1024,71)
        end
        else if ( $clog2(ICACHE_DATA_DEPTH) == 9 ) begin : size_512
           `EH2_IC_DATA_SRAM(512,71)
        end
         else if ( $clog2(ICACHE_DATA_DEPTH) == 8 ) begin : size_256
           `EH2_IC_DATA_SRAM(256,71)
         end
         else if ( $clog2(ICACHE_DATA_DEPTH) == 7 ) begin : size_128
           `EH2_IC_DATA_SRAM(128,71)
         end
         else  begin : size_64
      //     `EH2_IC_DATA_SRAM(64,71)
         end
      end // if (ICACHE_ECC)

     else  begin  : ECC0
        logic [4-1:0][2-1:0] [68-1:0]        wb_dout_pre_up;           // data and its bit enables
        logic [4-1:0][2-1:0] [4-1:0] [68-1:0]  wb_dout_hold_up;
        if ($clog2(ICACHE_DATA_DEPTH) == 13 )   begin : size_8192
           `EH2_IC_DATA_SRAM(8192,68)
        end
        else if ($clog2(ICACHE_DATA_DEPTH) == 12 )   begin : size_4096
           `EH2_IC_DATA_SRAM(4096,68)
        end
        else if ($clog2(ICACHE_DATA_DEPTH) == 11 ) begin : size_2048
           `EH2_IC_DATA_SRAM(2048,68)
        end
        else if ( $clog2(ICACHE_DATA_DEPTH) == 10 ) begin : size_1024
           `EH2_IC_DATA_SRAM(1024,68)
        end
        else if ( $clog2(ICACHE_DATA_DEPTH) == 9 ) begin : size_512
           `EH2_IC_DATA_SRAM(512,68)
        end
         else if ( $clog2(ICACHE_DATA_DEPTH) == 8 ) begin : size_256
           `EH2_IC_DATA_SRAM(256,68)
         end
         else if ( $clog2(ICACHE_DATA_DEPTH) == 7 ) begin : size_128
           `EH2_IC_DATA_SRAM(128,68)
         end
         else  begin : size_64
           `EH2_IC_DATA_SRAM(64,68)
         end
      end // else: !if(ICACHE_ECC)
      end // block: BANKS_WAY
   end // block: WAYS

 end // block: PACKED_0

 // WAY PACKED
 else begin : PACKED_1

    logic [2-1:0][4-1:0] wrptr;
    logic [2-1:0][4-1:0] wrptr_in;
    logic [2-1:0][4-1:0]                       sel_bypass;
    logic [2-1:0][4-1:0]                       sel_bypass_ff;


    logic [2-1:0][(71*4)-1:0]  sel_bypass_data;
    logic [2-1:0]                               any_bypass;
    logic [2-1:0]                               any_addr_match;


// SRAM macros

`define EH2_PACKED_IC_DATA_SRAM(depth,width,waywidth)                                                                                                 \
            ram_be_``depth``x``width  ic_bank_sb_way_data (                                                                                           \
                            .CLK   (clk),                                                                                                             \
                            .WE    (|ic_b_sb_wren[k]),                                                    // OR of all the ways in the bank           \
                            .WEM   (ic_b_sb_bit_en_vec[k]),                                               // 284 bits of bit enables                  \
                            .D     ({4{ic_sb_wr_data[k][``waywidth-1:0]}}),                                                          \
                            .ADR   (ic_rw_addr_bank_q[k][5:3]),                                                \
                            .Q     (wb_packeddout_pre[k]),                                                                                            \
                            .ME    (|ic_bank_way_clken_final[k]),                                                                                     \
                            .ROP   ( ),                                                                                                               \
                            .TEST1  (ic_data_ext_in_pkt[0][k].TEST1),                                                                                 \
                            .RME   (ic_data_ext_in_pkt[0][k].RME),                                                                                    \
                            .RM    (ic_data_ext_in_pkt[0][k].RM),                                                                                     \
                                                                                                                                                      \
                            .LS    (ic_data_ext_in_pkt[0][k].LS),                                                                                     \
                            .DS    (ic_data_ext_in_pkt[0][k].DS),                                                                                     \
                            .SD    (ic_data_ext_in_pkt[0][k].SD),                                                                                     \
                                                                                                                                                      \
                            .TEST_RNM (ic_data_ext_in_pkt[0][k].TEST_RNM),                                                                            \
                            .BC1      (ic_data_ext_in_pkt[0][k].BC1),                                                                                 \
                            .BC2      (ic_data_ext_in_pkt[0][k].BC2)                                                                                  \
                           );                                                                                                                         \
                                                                                                                                                      \
              if (ICACHE_BYPASS_ENABLE == 1) begin                                                                                                                                                 \
                                                                                                                                                                                                      \
                 assign wrptr_in[k] = (wrptr[k] == (4-1)) ? '0 : (wrptr[k] + 1'd1);                                                                                                \
                                                                                                                                                                                                      \
                 rvdffs  #(4_WIDTH)  wrptr_ff(.*, .clk(active_clk), .en(|write_bypass_en[k]), .din (wrptr_in[k]), .dout(wrptr[k])) ;                                               \
                                                                                                                                                                                                      \
                 assign ic_b_sram_en[k]              = |ic_bank_way_clken[k];                                                                                                                         \
                                                                                                                                                                                                      \
                                                                                                                                                                                                      \
                 assign ic_b_read_en[k]              =  ic_b_sram_en[k] &   (|ic_b_sb_rden[k]);                                                                                                       \
                 assign ic_b_write_en[k]             =  ic_b_sram_en[k] &   (|ic_b_sb_wren[k]);                                                                                                       \
                 assign ic_bank_way_clken_final[k]   =  ic_b_sram_en[k] &    ~(|sel_bypass[k]);                                                                                                       \
                                                                                                                                                                                                      \
                 assign ic_b_rw_addr[k] = {ic_rw_addr[31:5+1],ic_rw_addr_bank_q[k]};                                                                                                 \
                 assign ic_b_rw_addr_index_only[k] = {ic_rw_addr_bank_q[k]};                                                                                                  \
                                                                                                                                                                                                      \
                 always_comb begin                                                                                                                                                                    \
                    any_addr_match[k] = '0;                                                                                                                                                           \
                                                                                                                                                                                                      \
                    for (int l=0; l<4; l++) begin                                                                                                                                  \
                       any_addr_match[k] |= ic_b_addr_match[k][l];                                                                                                                                    \
                    end                                                                                                                                                                               \
                 end                                                                                                                                                                                  \
                                                                                                                                                                                                      \
                // it is an error to ever have 2 entries with the same index and both valid                                                                                                           \
                for (genvar l=0; l<4; l++) begin: BYPASS                                                                                                                           \
                                                                                                                                                                                                      \
                   // full match up to bit 31                                                                                                                                                         \
                   assign ic_b_addr_match[k][l] = (wb_index_hold[k][l] ==  ic_b_rw_addr[k]) & index_valid[k][l];                                                                                      \
                   assign ic_b_addr_match_index_only[k][l] = (wb_index_hold[k][l][5:3] ==  ic_b_rw_addr_index_only[k]) & index_valid[k][l];                                                                                    \
                                                                                                                                                                                                      \
                   assign ic_b_clear_en[k][l]   = ic_b_write_en[k] &   ic_b_addr_match_index_only[k][l];                                                                                              \
                                                                                                                                                                                                      \
                   assign sel_bypass[k][l]      = ic_b_read_en[k]  &   ic_b_addr_match[k][l] ;                                                                                                        \
                                                                                                                                                                                                      \
                   assign write_bypass_en[k][l] = ic_b_read_en[k]  &  ~any_addr_match[k] & (wrptr[k] == l);                                                                                           \
                                                                                                                                                                                                      \
                   rvdff  #(1)  write_bypass_ff (.*, .clk(active_clk),                                                     .din(write_bypass_en[k][l]), .dout(write_bypass_en_ff[k][l])) ;            \
                   rvdffs #(1)  index_val_ff    (.*, .clk(active_clk), .en(write_bypass_en[k][l] | ic_b_clear_en[k][l]),   .din(~ic_b_clear_en[k][l]),  .dout(index_valid[k][l])) ;                   \
                   rvdff  #(1)  sel_hold_ff     (.*, .clk(active_clk),                                                     .din(sel_bypass[k][l]),      .dout(sel_bypass_ff[k][l])) ;                 \
                                                                                                                                                                                                      \
                   rvdffe #((31-3+1)) ic_addr_index    (.*, .en(write_bypass_en[k][l]),    .din (ic_b_rw_addr[k]),      .dout(wb_index_hold[k][l]));                            \
                   rvdffe #((``waywidth*4))        rd_data_hold_ff  (.*, .en(write_bypass_en_ff[k][l]), .din (wb_packeddout_pre[k]), .dout(wb_packeddout_hold[k][l]));               \
                                                                                                                                                                                                      \
                end // block: BYPASS                                                                                                                                                                  \
                                                                                                                                                                                                      \
                always_comb begin                                                                                                                                                                     \
                 any_bypass[k] = '0;                                                                                                                                                                  \
                 sel_bypass_data[k] = '0;                                                                                                                                                             \
                                                                                                                                                                                                      \
                 for (int l=0; l<4; l++) begin                                                                                                                                     \
                    any_bypass[k]      |=  sel_bypass_ff[k][l];                                                                                                                                       \
                      sel_bypass_data[k] |= (sel_bypass_ff[k][l]) ? wb_packeddout_hold[k][l] : '0;                                                                                                    \
                 end                                                                                                                                                                                  \
                                                                                                                                                                                                      \
                   wb_packeddout[k]   =   any_bypass[k] ?  sel_bypass_data[k] :  wb_packeddout_pre[k] ;                                                                                               \
                end // always_comb begin                                                                                                                                                              \
                                                                                                                                                                                                      \
             end // if (ICACHE_BYPASS_ENABLE == 1)                                                                                                                                                 \
             else begin                                                                                                                                                                               \
                 assign wb_packeddout[k]   =   wb_packeddout_pre[k] ;                                                                                                                                 \
                 assign ic_bank_way_clken_final[k]   =  |ic_bank_way_clken[k];                                                                                                                        \
             end
localparam ICACHE_ECC=1;
localparam ICACHE_DATA_DEPTH = 13;
localparam ICACHE_BYPASS_ENABLE =1;
 // generate IC DATA PACKED SRAMS for 2/4 ways
  for (genvar k=0; k<2; k++) begin: BANKS_WAY   // 16B subbank
     if (ICACHE_ECC) begin : ECC1
        logic [2-1:0] [(71*4)-1:0]        wb_packeddout, ic_b_sb_bit_en_vec, wb_packeddout_pre;           // data and its bit enables

        logic [2-1:0] [4-1:0] [(71*4)-1:0]  wb_packeddout_hold;

        for (genvar i=0; i<4; i++) begin: BITEN
           assign ic_b_sb_bit_en_vec[k][(71*i)+70:71*i] = {71{ic_b_sb_wren[k][i]}};
        end

        // SRAMS with ECC (single/double detect; no correct)
  //      if ($clog2(ICACHE_DATA_DEPTH) == 13 )   begin : size_8192
 //          if (4 == 4) begin : WAYS
  //            `EH2_PACKED_IC_DATA_SRAM(8192,284,71)    // 64b data + 7b ecc
  //         end // block: WAYS
   //        else   begin : WAYS
    //          `EH2_PACKED_IC_DATA_SRAM(8192,142,71)
   //        end // block: WAYS
//end // block: size_8192

   //     else if ($clog2(ICACHE_DATA_DEPTH) == 12 )   begin : size_4096
    //       if (4 == 4) begin : WAYS
    //          `EH2_PACKED_IC_DATA_SRAM(4096,284,71)
    //       end // block: WAYS
    //       else   begin : WAYS
 //             `EH2_PACKED_IC_DATA_SRAM(4096,142,71)
  //         end // block: WAYS
   //     end // block: size_4096

   //     else if ($clog2(ICACHE_DATA_DEPTH) == 11 ) begin : size_2048
   //        if (4 == 4) begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(2048,284,71)
    //       end // block: WAYS
    //       else   begin : WAYS
      //        `EH2_PACKED_IC_DATA_SRAM(2048,142,71)
      //     end // block: WAYS
     //   end // block: size_2048

   //     else if ( $clog2(ICACHE_DATA_DEPTH) == 10 ) begin : size_1024
   //        if (4 == 4) begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(1024,284,71)
   //        end // block: WAYS
    //       else   begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(1024,142,71)
    //       end // block: WAYS
    //    end // block: size_1024

//else if ( $clog2(ICACHE_DATA_DEPTH) == 9 ) begin : size_512
   //        if (4 == 4) begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(512,284,71)
    //       end // block: WAYS
    //       else   begin : WAYS
    //          `EH2_PACKED_IC_DATA_SRAM(512,142,71)
    //       end // block: WAYS
     //   end // block: size_512

  //      else if ( $clog2(ICACHE_DATA_DEPTH) == 8 ) begin : size_256
    //       if (4 == 4) begin : WAYS
     //         `EH2_PACKED_IC_DATA_SRAM(256,284,71)
     //      end // block: WAYS
      //     else   begin : WAYS
      //        `EH2_PACKED_IC_DATA_SRAM(256,142,71)
     //      end // block: WAYS
    //    end // block: size_256

   //     else if ( $clog2(ICACHE_DATA_DEPTH) == 7 ) begin : size_128
  //         if (4 == 4) begin : WAYS
  //            `EH2_PACKED_IC_DATA_SRAM(128,284,71)
  //         end // block: WAYS
   //        else   begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(128,142,71)
    //       end // block: WAYS
    //    end // block: size_128

     //   else  begin : size_64
    //       if (4 == 4) begin : WAYS
    //          `EH2_PACKED_IC_DATA_SRAM(64,284,71)
   //        end // block: WAYS
   //        else   begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(64,142,71)
   //        end // block: WAYS
   //     end // block: size_64


       for (genvar i=0; i<4; i++) begin: WAYS
          assign wb_dout[i][k][70:0]  = wb_packeddout[k][(71*i)+70:71*i];
       end : WAYS

       end // if (ICACHE_ECC)


     else  begin  : ECC0
        logic [2-1:0] [(68*4)-1:0]        wb_packeddout, ic_b_sb_bit_en_vec, wb_packeddout_pre;           // data and its bit enables

        logic [2-1:0] [4-1:0] [(68*4)-1:0]  wb_packeddout_hold;

        for (genvar i=0; i<4; i++) begin: BITEN
           assign ic_b_sb_bit_en_vec[k][(68*i)+67:68*i] = {68{ic_b_sb_wren[k][i]}};
        end

        // SRAMs with parity
  //      if ($clog2(ICACHE_DATA_DEPTH) == 13 )   begin : size_8192
  //         if (4 == 4) begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(8192,272,68)    // 64b data + 4b parity
    //       end // block: WAYS
   //        else   begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(8192,136,68)
   //        end // block: WAYS
 //       end // block: size_8192

 //       else if ($clog2(ICACHE_DATA_DEPTH) == 12 )   begin : size_4096
  //         if (4 == 4) begin : WAYS
  //            `EH2_PACKED_IC_DATA_SRAM(4096,272,68)
  //         end // block: WAYS
  //         else   begin : WAYS
  //            `EH2_PACKED_IC_DATA_SRAM(4096,136,68)
   //        end // block: WAYS
  //      end // block: size_4096

   //     else if ($clog2(ICACHE_DATA_DEPTH) == 11 ) begin : size_2048
  //         if (4 == 4) begin : WAYS
  //            `EH2_PACKED_IC_DATA_SRAM(2048,272,68)
   //        end // block: WAYS
  //         else   begin : WAYS
  //            `EH2_PACKED_IC_DATA_SRAM(2048,136,68)
  //         end // block: WAYS
  //      end // block: size_2048

   //     else if ( $clog2(ICACHE_DATA_DEPTH) == 10 ) begin : size_1024
   //        if (4 == 4) begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(1024,272,68)
    //       end // block: WAYS
   //        else   begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(1024,136,68)
   //        end // block: WAYS
    //    end // block: size_1024

   //     else if ( $clog2(ICACHE_DATA_DEPTH) == 9 ) begin : size_512
     //      if (4 == 4) begin : WAYS
       //       `EH2_PACKED_IC_DATA_SRAM(512,272,68)
         //  end // block: WAYS
           //else   begin : WAYS
//              `EH2_PACKED_IC_DATA_SRAM(512,136,68)
  //         end // block: WAYS
    //    end // block: size_512

      //  else if ( $clog2(ICACHE_DATA_DEPTH) == 8 ) begin : size_256
  //         if (4 == 4) begin : WAYS
    //          `EH2_PACKED_IC_DATA_SRAM(256,272,68)
      //     end // block: WAYS
        //   else   begin : WAYS
          //    `EH2_PACKED_IC_DATA_SRAM(256,136,68)
 //          end // block: WAYS
   //     end // block: size_256

     //   else if ( $clog2(ICACHE_DATA_DEPTH) == 7 ) begin : size_128
       //    if (4 == 4) begin : WAYS
         //     `EH2_PACKED_IC_DATA_SRAM(128,272,68)
  //         end // block: WAYS
 //          else   begin : WAYS
   //           `EH2_PACKED_IC_DATA_SRAM(128,136,68)
     //      end // block: WAYS
 //       end // block: size_128

   //     else  begin : size_64
     //      if (4 == 4) begin : WAYS
       //       `EH2_PACKED_IC_DATA_SRAM(64,272,68)
         //  end // block: WAYS
  //         else   begin : WAYS
    //          `EH2_PACKED_IC_DATA_SRAM(64,136,68)
      //     end // block: WAYS
 //       end // block: size_64

   //    for (genvar i=0; i<4; i++) begin: WAYS
     //     assign wb_dout[i][k][67:0]  = wb_packeddout[k][(68*i)+67:68*i];
 //      end
   //  end // block: ECC0
   //  end // block: BANKS_WAY
 //end // block: PACKED_1







   assign ic_rd_hit_q[4-1:0] = ic_debug_rd_en_ff ? ic_debug_rd_way_en_ff[4-1:0] : ic_rd_hit[4-1:0] ;

//localparam ICACHE_ECC=1;
 if ( ICACHE_ECC == 1) begin : ECC1_MUX
   assign ic_bank_wr_data[1][70:0] = ic_wr_data[1][70:0];
   assign ic_bank_wr_data[0][70:0] = ic_wr_data[0][70:0];

    always_comb begin : rd_mux
      wb_dout_way_pre[4-1:0] = '0;

      for ( int i=0; i<4; i++) begin : num_ways
        for ( int j=0; j<2; j++) begin : banks
         wb_dout_way_pre[i][70:0]      |=  ({71{(ic_rw_addr_ff[3 : 2] == (3)'(j))}}   &  wb_dout[i][j]);
         wb_dout_way_pre[i][141 : 71]  |=  ({71{(ic_rw_addr_ff[3 : 2] == (3)'(j-1))}} &  wb_dout[i][j]);
        end
      end
    end

    for ( genvar i=0; i<4; i++) begin : num_ways_mux1
      assign wb_dout_way[i][63:0] = (ic_rw_addr_ff[2:1] == 2'b00) ? wb_dout_way_pre[i][63:0]   :
                                    (ic_rw_addr_ff[2:1] == 2'b01) ?{wb_dout_way_pre[i][86:71], wb_dout_way_pre[i][63:16]} :
                                    (ic_rw_addr_ff[2:1] == 2'b10) ?{wb_dout_way_pre[i][102:71],wb_dout_way_pre[i][63:32]} :
                                                                   {wb_dout_way_pre[i][119:71],wb_dout_way_pre[i][63:48]};

      assign wb_dout_way_with_premux[i][63:0]  =  ic_sel_premux_data ? ic_premux_data[63:0] : wb_dout_way[i][63:0] ;
   end

   always_comb begin : rd_out
      ic_debug_rd_data[70:0]     = '0;
      ic_rd_data[63:0]           = '0;
      wb_dout_ecc[141:0]         = '0;
      for ( int i=0; i<4; i++) begin : num_ways_mux2
         ic_rd_data[63:0]       |= ({64{ic_rd_hit_q[i] | ic_sel_premux_data}}) &  wb_dout_way_with_premux[i][63:0];
         ic_debug_rd_data[70:0] |= ({71{ic_rd_hit_q[i] & ic_debug_rd_en_ff }}) &  wb_dout_way_pre[i][70:0];
         wb_dout_ecc[141:0]     |= {142{ic_rd_hit_q[i]}}  & wb_dout_way_pre[i];
      end
   end


 for (genvar i=0; i < 2 ; i++) begin : ic_ecc_error
    assign bank_check_en[i]    = |ic_rd_hit[4-1:0] & ((i==0) | (~ic_cacheline_wrap_ff & (ic_b_rden_ff[2-1:0] == {2{1'b1}})));  // always check the lower address bank, and drop the upper a
    assign wb_dout_ecc_bank[i] = wb_dout_ecc[(71*i)+70:(71*i)];

   rvdff #(1) encod_en_ff (.*,
                           .clk(active_clk),
                           .din (bank_check_en[i]),
                           .dout(bank_check_en_ff[i])
                           );

   rvdffe #(71) bank_data_ff (.*,
                             .en  (bank_check_en[i]),
                             .din (wb_dout_ecc_bank[i][70:0]),
                             .dout(wb_dout_ecc_bank_ff[i][70:0])
                             );

   rvecc_decode_64  ecc_decode_64 (
                                   .en               (bank_check_en_ff[i]),
                                   .din              ((bank_check_en_ff[i])?wb_dout_ecc_bank_ff[i][63:0]:64'd0),                  // [134:71],  [63:0]
                                   .ecc_in           ((bank_check_en_ff[i])?wb_dout_ecc_bank_ff[i][70:64]:7'd0),               // [141:135] [70:64]
                                   .ecc_error        (ic_eccerr[i])
                                   );

   // or the sb and db error detects into 1 signal called aligndataperr[i] where i corresponds to 2B position
  end // block: ic_ecc_error

  assign  ic_parerr[2-1:0]  = '0 ;
end // if ( ICACHE_ECC )

else  begin : ECC0_MUX
   assign ic_bank_wr_data[1][70:0] = ic_wr_data[1][70:0];
   assign ic_bank_wr_data[0][70:0] = ic_wr_data[0][70:0];

   always_comb begin : rd_mux
      wb_dout_way_pre[4-1:0] = '0;

   for ( int i=0; i<4; i++) begin : num_ways
     for ( int j=0; j<2; j++) begin : banks
         wb_dout_way_pre[i][67:0]         |=  ({68{(ic_rw_addr_ff[3 : 2] == (3)'(j))}}   &  wb_dout[i][j][67:0]);
         wb_dout_way_pre[i][135 : 68]     |=  ({68{(ic_rw_addr_ff[3 : 2] == (3)'(j-1))}} &  wb_dout[i][j][67:0]);
      end
     end
   end
   for ( genvar i=0; i<4; i++) begin : num_ways_mux1
      assign wb_dout_way[i][63:0] = (ic_rw_addr_ff[2:1] == 2'b00) ? wb_dout_way_pre[i][63:0]   :
                                    (ic_rw_addr_ff[2:1] == 2'b01) ?{wb_dout_way_pre[i][83:68],  wb_dout_way_pre[i][63:16]} :
                                    (ic_rw_addr_ff[2:1] == 2'b10) ?{wb_dout_way_pre[i][99:68],  wb_dout_way_pre[i][63:32]} :
                                                                   {wb_dout_way_pre[i][115:68], wb_dout_way_pre[i][63:48]};

      assign wb_dout_way_with_premux[i][63:0]      =  ic_sel_premux_data ? ic_premux_data[63:0]  : wb_dout_way[i][63:0] ;
   end

   always_comb begin : rd_out
      ic_rd_data[63:0]   = '0;
      ic_debug_rd_data[70:0]   = '0;
      wb_dout_ecc[135:0] = '0;

      for ( int i=0; i<4; i++) begin : num_ways_mux2
         ic_rd_data[63:0]   |= ({64{ic_rd_hit_q[i] | ic_sel_premux_data}} &  wb_dout_way_with_premux[i][63:0]);
         ic_debug_rd_data[70:0] |= ({71{ic_rd_hit_q[i]}}) & {3'b0,wb_dout_way_pre[i][67:0]};
         wb_dout_ecc[135:0] |= {136{ic_rd_hit_q[i]}}  & wb_dout_way_pre[i][135:0];
      end
   end

   assign wb_dout_ecc_bank[0] =  wb_dout_ecc[67:0];
   assign wb_dout_ecc_bank[1] =  wb_dout_ecc[135:68];

   logic [2-1:0][3:0] ic_parerr_bank;

  for (genvar i=0; i < 2 ; i++) begin : ic_par_error
      assign bank_check_en[i]    = |ic_rd_hit[4-1:0] & ((i==0) | (~ic_cacheline_wrap_ff & (ic_b_rden_ff[2-1:0] == {2{1'b1}})));  // always check the lower address bank, and drop the upper a

      rvdff #(1) encod_en_ff (.*,
                              .clk(active_clk),
                              .din (bank_check_en[i]),
                              .dout(bank_check_en_ff[i])
                              );

      rvdffe #(68) bank_data_ff (.*,
                                .en  (bank_check_en[i]),
                                .din (wb_dout_ecc_bank[i][67:0]),
                                .dout(wb_dout_ecc_bank_ff[i][67:0])
                                );

     for (genvar j=0; j<4; j++)  begin : parity
      rveven_paritycheck pchk (
                           .data_in   (wb_dout_ecc_bank_ff[i][16*(j+1)-1: 16*j]),
                           .parity_in (wb_dout_ecc_bank_ff[i][64+j]),
                           .parity_err(ic_parerr_bank[i][j])
                           );
        end
  end

     assign ic_parerr[1] = |ic_parerr_bank[1][3:0] & bank_check_en_ff[1];
     assign ic_parerr[0] = |ic_parerr_bank[0][3:0] & bank_check_en_ff[0];
     assign ic_eccerr [2-1:0] = '0 ;

end // else: !if( ICACHE_ECC )

end
end
end
endmodule // EH2_IC_DATA

//=============================================================================================================================================================
///\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\ END OF IC DATA MODULE \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
//=============================================================================================================================================================

/////////////////////////////////////////////////
////// ICACHE TAG MODULE     ////////////////////
/////////////////////////////////////////////////
module EH2_IC_TAG
import eh2_pkg::*;
//#(
//`include "eh2_param.vh"
 //)
     (
      input                                                clk,
  //    input logic                                               active_clk,
           input                                                active_clk,

      input logic                                               rst_l,
      input logic                                               clk_override,
      input logic                                               dec_tlu_core_ecc_disable,


      input logic [31:3]                                        ic_rw_addr,


      input logic [4-1:0]                     ic_wr_en,  // way
      input logic [4-1:0]                     ic_tag_valid,
      input logic                                              ic_rd_en,

      input logic [5:3]                       ic_debug_addr,      // Read/Write addresss to the Icache.
      input logic                                              ic_debug_rd_en,     // Icache debug rd
      input logic                                              ic_debug_wr_en,     // Icache debug wr
      input logic                                              ic_debug_tag_array, // Debug tag array
      input logic [4-1:0]                     ic_debug_way,       // Debug way. Rd or Wr.
      input eh2_ic_tag_ext_in_pkt_t   [4-1:0]ic_tag_ext_in_pkt,

      output logic [25:0]                                       ictag_debug_rd_data,
      input  logic [70:0]                                       ic_debug_wr_data,   // Debug wr cache.

      output logic [4-1:0]                    ic_rd_hit,
      output logic                                              ic_tag_perr,
      input  logic                                              scan_mode
   ) ;


   logic [4-1:0] [25:0]                           ic_tag_data_raw;
   logic [4-1:0] [25:0]                           ic_tag_data_raw_ff;
   logic [4-1:0] [25:0]                           ic_tag_data_raw_pre;


   logic [4-1:0] [32:5]            w_tout;
   logic [4-1:0] [32:5]            w_tout_ff;

   logic [25:0]                                 ic_tag_wr_data ;
   logic [4-1:0] [31:0]                           ic_tag_corrected_data_unc;
   logic [4-1:0] [06:0]                           ic_tag_corrected_ecc_unc;
   logic [4-1:0]                                  ic_tag_single_ecc_error;
   logic [4-1:0]                                  ic_tag_double_ecc_error;
   logic [6:0]                                  ic_tag_ecc;

   logic [4-1:0]                                  ic_tag_way_perr ;
   logic [4-1:0]                                  ic_debug_rd_way_en ;
   logic [4-1:0]                                  ic_debug_rd_way_en_ff ;

   logic [5: 3] ic_rw_addr_q;
   logic [31:3]              ic_rw_addr_ff;
   logic [4-1:0]                                  ic_tag_wren;          // way
   logic [4-1:0]                                  ic_tag_wren_q;        // way
   logic [4-1:0]                                  ic_tag_rden_q;        // way
   logic [4-1:0]                                  ic_tag_clken;
   logic [4-1:0]                                  ic_debug_wr_way_en;   // debug wr_way
   logic [4-1:0]                                  ic_tag_valid_ff;
   logic                                                           ic_rd_en_ff;
   logic                                                           ic_rd_en_ff2;
   logic                                                           ic_wr_en_ff;     // OR of the wr_en

   logic                                                           ic_tag_parity;

   logic                                                           ecc_decode_enable;

   assign ecc_decode_enable = ~dec_tlu_core_ecc_disable & ic_rd_en_ff2;


   assign  ic_tag_wren [4-1:0]  = ic_wr_en[4-1:0] & {4{(ic_rw_addr[4:4] == {4-1{1'b1}})}} ;
   assign  ic_tag_clken[4-1:0]  = {4{ic_rd_en | clk_override}} | ic_wr_en[4-1:0] | ic_debug_wr_way_en[4-1:0] | ic_debug_rd_way_en[4-1:0];

   rvdff #(32-5) adr_ff (.*,
                                        .clk(active_clk),
                                        .din ({ic_rw_addr[31:5]}),
                                        .dout({ic_rw_addr_ff[31:5]})
                                        );

   rvdff #(4) tg_val_ff (.*,
                                          .clk(active_clk),
                                          .din ((ic_tag_valid[4-1:0] & {4{~ic_wr_en_ff}})),
                                          .dout(ic_tag_valid_ff[4-1:0])
                                          );

   localparam PAD_BITS = 21 - (32 - 5);  // sizing for a max tag width.

   // tags
   assign  ic_debug_rd_way_en[4-1:0] =  {4{ic_debug_rd_en & ic_debug_tag_array}} & ic_debug_way[4-1:0] ;
   assign  ic_debug_wr_way_en[4-1:0] =  {4{ic_debug_wr_en & ic_debug_tag_array}} & ic_debug_way[4-1:0] ;

   assign  ic_tag_wren_q[4-1:0]  =  ic_tag_wren[4-1:0] | ic_debug_wr_way_en[4-1:0]   ;
   assign  ic_tag_rden_q[4-1:0]  =  ({4{ic_rd_en }}  | ic_debug_rd_way_en[4-1:0] ) &  {4{~(|ic_wr_en)  & ~ic_debug_wr_en}};


if (5 == 11) begin: SMALLEST
 if (ICACHE_ECC) begin : ECC1_W
           rvecc_encode  tag_ecc_encode (
                                  .din    ({{5{1'b0}}, ic_rw_addr[31:5]}),
                                  .ecc_out({ ic_tag_ecc[6:0]}));

   assign  ic_tag_wr_data[25:0] = (ic_debug_wr_en & ic_debug_tag_array) ?
                                  {ic_debug_wr_data[68:64], ic_debug_wr_data[31:11]} :
                                  {ic_tag_ecc[4:0], ic_rw_addr[31:5]} ;
 end

 else begin : ECC0_W
           rveven_paritygen #(32-5) pargen  (.data_in   (ic_rw_addr[31:5]),
                                                 .parity_out(ic_tag_parity));

   assign  ic_tag_wr_data[21:0] = (ic_debug_wr_en & ic_debug_tag_array) ?
                                  {ic_debug_wr_data[64], ic_debug_wr_data[31:11]} :
                                  {ic_tag_parity, ic_rw_addr[31:5]} ;
 end // else: !if(ICACHE_ECC)

end // block: SMALLEST


else begin: OTHERS
  if(ICACHE_ECC) begin : ECC1_W
           rvecc_encode  tag_ecc_encode (
                                  .din    ({{5{1'b0}}, ic_rw_addr[31:5]}),
                                  .ecc_out({ ic_tag_ecc[6:0]}));

   assign  ic_tag_wr_data[25:0] = (ic_debug_wr_en & ic_debug_tag_array) ?
                                  {ic_debug_wr_data[68:64],ic_debug_wr_data[31:11]} :
                                  {ic_tag_ecc[4:0], {PAD_BITS{1'b0}},ic_rw_addr[31:5]} ;

  end
  else  begin : ECC0_W
   logic   ic_tag_parity ;
           rveven_paritygen #(32-5) pargen  (.data_in   (ic_rw_addr[31:5]),
                                                 .parity_out(ic_tag_parity));
   assign  ic_tag_wr_data[21:0] = (ic_debug_wr_en & ic_debug_tag_array) ?
                                  {ic_debug_wr_data[64], ic_debug_wr_data[31:11]} :
                                  {ic_tag_parity, {PAD_BITS{1'b0}},ic_rw_addr[31:5]} ;
  end // else: !if(ICACHE_ECC)

end // block: OTHERS


    assign ic_rw_addr_q[5: 3] = (ic_debug_rd_en | ic_debug_wr_en) ?
                                                ic_debug_addr[5: 3] :
                                                ic_rw_addr[5: 3] ;

   rvdff #(4) tag_rd_wy_ff (.*,
                                             .clk(active_clk),
                                             .din ({ic_debug_rd_way_en[4-1:0]}),
                                             .dout({ic_debug_rd_way_en_ff[4-1:0]})
                                             );

   rvdff #(1) rden_ff (.*,
                       .clk(active_clk),
                       .din (ic_rd_en),
                       .dout(ic_rd_en_ff)
                       );

   rvdff #(1) rden_ff2 (.*,
                        .clk(active_clk),
                        .din (ic_rd_en_ff),
                        .dout(ic_rd_en_ff2)
                        );

   rvdff #(1) ic_we_ff (.*,
                        .clk(active_clk),
                        .din (|ic_wr_en[4-1:0]),
                        .dout(ic_wr_en_ff)
                        );


localparam ICACHE_WAYPACK=0;


if (ICACHE_WAYPACK == 0 ) begin : PACKED_0

   logic [4-1:0] ic_b_sram_en;
   logic [4-1:0]                                                                               ic_b_read_en;
   logic [4-1:0]                                                                               ic_b_write_en;
   logic [4-1:0][2-1:0] [5 : 3]   wb_index_hold;
   logic [4-1:0]                               [5 : 3]   ic_b_rw_addr;
   logic [4-1:0][2-1:0]                                                 write_bypass_en;     //bank
   logic [4-1:0][2-1:0]                                                 write_bypass_en_ff;  //bank
   logic [4-1:0][2-1:0]                                                 index_valid;  //bank
   logic [4-1:0][2-1:0]                                                 ic_b_clear_en;
   logic [4-1:0][2-1:0]                                                 ic_b_addr_match;




    logic [4-1:0] [2-1:0] wrptr;
    logic [4-1:0] [2-1:0] wrptr_in;
    logic [4-1:0] [2-1:0]       sel_bypass;
    logic [4-1:0] [2-1:0]       sel_bypass_ff;



    logic [4-1:0][25:0]  sel_bypass_data;
    logic [4-1:0]        any_bypass;
    logic [4-1:0]        any_addr_match;
    logic [4-1:0]        ic_tag_clken_final;

      `define EH2_IC_TAG_SRAM(depth,width)                                                                                                      \
                                  ram_``depth``x``width  ic_way_tag (                                                                           \
                                .ME(ic_tag_clken_final[i]),                                                                                     \
                                .WE (ic_tag_wren_q[i]),                                                                                         \
                                .D  (ic_tag_wr_data[``width-1:0]),                                                                              \
                                .ADR(ic_rw_addr_q[5:3]),                                                  \
                                .Q  (ic_tag_data_raw_pre[i][``width-1:0]),                                                                      \
                                .CLK (clk),                                                                                                     \
                                .ROP ( ),                                                                                                       \
                                                                                                                                                \
                                .TEST1(ic_tag_ext_in_pkt[i].TEST1),                                                                             \
                                .RME(ic_tag_ext_in_pkt[i].RME),                                                                                 \
                                .RM(ic_tag_ext_in_pkt[i].RM),                                                                                   \
                                                                                                                                                \
                                .LS(ic_tag_ext_in_pkt[i].LS),                                                                                   \
                                .DS(ic_tag_ext_in_pkt[i].DS),                                                                                   \
                                .SD(ic_tag_ext_in_pkt[i].SD),                                                                                   \
                                                                                                                                                \
                                .TEST_RNM(ic_tag_ext_in_pkt[i].TEST_RNM),                                                                       \
                                .BC1(ic_tag_ext_in_pkt[i].BC1),                                                                                 \
                                .BC2(ic_tag_ext_in_pkt[i].BC2)                                                                                  \
                                                                                                                                                \
                               );                                                                                                               \
                                                                                                                                                \
                                                                                                                                                \
                                                                                                                                                \
             localparam ICACHE_TAG_BYPASS_ENABLE=1;                                                                                                                                   \
              if (ICACHE_TAG_BYPASS_ENABLE == 1) begin                                                                                                                                             \
                                                                                                                                                                                                      \
                 assign wrptr_in[i] = (wrptr[i] == (2-1)) ? '0 : (wrptr[i] + 1'd1);                                                                                            \
                                                                                                                                                                                                      \
                 rvdffs  #(2_WIDTH)  wrptr_ff(.*, .clk(active_clk), .en(|write_bypass_en[i]), .din (wrptr_in[i]), .dout(wrptr[i])) ;                                           \
                                                                                                                                                                                                      \
                 assign ic_b_sram_en[i]              = ic_tag_clken[i];                                                                                                                               \
                                                                                                                                                                                                      \
                 assign ic_b_read_en[i]              =  ic_b_sram_en[i]  &  (ic_tag_rden_q[i]);                                                                                                       \
                 assign ic_b_write_en[i]             =  ic_b_sram_en[i] &   (ic_tag_wren_q[i]);                                                                                                       \
                 assign ic_tag_clken_final[i]        =  ic_b_sram_en[i] &    ~(|sel_bypass[i]);                                                                                                       \
                                                                                                                                                                                                      \
                 // LSB is 3]                                                                                                                                                    \
                 assign ic_b_rw_addr[i] = {ic_rw_addr_q};                                                                                                                                             \
                                                                                                                                                                                                      \
                 always_comb begin                                                                                                                                                                    \
                    any_addr_match[i] = '0;                                                                                                                                                           \
                                                                                                                                                                                                      \
                    for (int l=0; l<2; l++) begin                                                                                                                              \
                       any_addr_match[i] |= (ic_b_addr_match[i][l] & index_valid[i][l]);                                                                                                              \
                    end                                                                                                                                                                               \
                 end                                                                                                                                                                                  \
                                                                                                                                                                                                      \
                // it is an error to ever have 2 entries with the same index and both valid                                                                                                           \
                for (genvar l=0; l<2; l++) begin: BYPASS                                                                                                                       \
                                                                                                                                                                                                      \
                   assign ic_b_addr_match[i][l] = (wb_index_hold[i][l] ==  ic_b_rw_addr[i]) & index_valid[i][l];                                                                                      \
                                                                                                                                                                                                      \
                   assign ic_b_clear_en[i][l]   = ic_b_write_en[i] &   ic_b_addr_match[i][l];                                                                                                         \
                                                                                                                                                                                                      \
                   assign sel_bypass[i][l]      = ic_b_read_en[i]  &   ic_b_addr_match[i][l] ;                                                                                                        \
                                                                                                                                                                                                      \
                   assign write_bypass_en[i][l] = ic_b_read_en[i]  &  ~any_addr_match[i] & (wrptr[i] == l);                                                                                           \
                                                                                                                                                                                                      \
                   rvdff  #(1)  write_bypass_ff (.*, .clk(active_clk),                                                     .din(write_bypass_en[i][l]), .dout(write_bypass_en_ff[i][l])) ;            \
                   rvdffs #(1)  index_val_ff    (.*, .clk(active_clk), .en(write_bypass_en[i][l] | ic_b_clear_en[i][l]),         .din(~ic_b_clear_en[i][l]),  .dout(index_valid[i][l])) ;             \
                   rvdff  #(1)  sel_hold_ff     (.*, .clk(active_clk),                                                     .din(sel_bypass[i][l]),      .dout(sel_bypass_ff[i][l])) ;                 \
                                                                                                                                                                                                      \
                   rvdffs #((5-3+1))  ic_addr_index      (.*, .clk(active_clk), .en(write_bypass_en[i][l]),    .din (ic_b_rw_addr[i]),               .dout(wb_index_hold[i][l]));   \
                   rvdffe #(``width)                                          rd_data_hold_ff  (.*, .en(write_bypass_en_ff[i][l]), .din (ic_tag_data_raw_pre[i][``width-1:0]), .dout(wb_dout_hold[i][l]));            \
                                                                                                                                                                                                      \
                end // block: BYPASS                                                                                                                                                                  \
                                                                                                                                                                                                      \
                always_comb begin                                                                                                                                                                     \
                 any_bypass[i] = '0;                                                                                                                                                                  \
                 sel_bypass_data[i] = '0;                                                                                                                                                             \
                                                                                                                                                                                                      \
                 for (int l=0; l<2; l++) begin                                                                                                                                 \
                    any_bypass[i]      |=  sel_bypass_ff[i][l];                                                                                                                                       \
                    sel_bypass_data[i] |= (sel_bypass_ff[i][l]) ? wb_dout_hold[i][l] : '0;                                                                                                            \
                 end                                                                                                                                                                                  \
                                                                                                                                                                                                      \
                   ic_tag_data_raw[i]   =   any_bypass[i] ?  sel_bypass_data[i] :  ic_tag_data_raw_pre[i] ;                                                                                           \
                end // always_comb begin                                                                                                                                                              \
                                                                                                                                                                                                      \
             end // if (ICACHE_BYPASS_ENABLE == 1)                                                                                                                                                 \
             else begin                                                                                                                                                                               \
                 assign ic_tag_data_raw[i]   =   ic_tag_data_raw_pre[i] ;                                                                                                                             \
                 assign ic_tag_clken_final[i]       =   ic_tag_clken[i];                                                                                                                              \
             end
   for (genvar i=0; i<4; i++) begin: WAYS


   if (ICACHE_ECC) begin  : ECC1
      logic [4-1:0] [2-1:0][25 :0] wb_dout_hold;

  //    if (64 == 32)   begin : size_32
   //              `EH2_IC_TAG_SRAM(32,26)
  //    end // if (64 == 32)
   //   if (64 == 64)   begin : size_64
   //              `EH2_IC_TAG_SRAM(64,26)
   //   end // if (64 == 64)
   //   if (64 == 128)   begin : size_128
   //              `EH2_IC_TAG_SRAM(128,26)
  //    end // if (64 == 128)
   //    if (64 == 256)   begin : size_256
   //              `EH2_IC_TAG_SRAM(256,26)
 //      end // if (64 == 256)
  ////     if (64 == 512)   begin : size_512
  //               `EH2_IC_TAG_SRAM(512,26)
  //     end // if (64 == 512)
   //    if (64 == 1024)   begin : size_1024
  //               `EH2_IC_TAG_SRAM(1024,26)
   //    end // if (64 == 1024)
  //     if (64 == 2048)   begin : size_2048
   //              `EH2_IC_TAG_SRAM(2048,26)
    //   end // if (64 == 2048)
   //    if (64 == 4096)   begin  : size_4096
  //               `EH2_IC_TAG_SRAM(4096,26)
  //     end // if (64 == 4096)


         assign w_tout[i][31:5] = ic_tag_data_raw[i][31-6:0] ;
         assign w_tout[i][32]                  =  1'b0 ; // Unused in this context


      rvdffe #(26) tg_data_raw_ff (.*,
                                   .en(ic_rd_en_ff),
                                   .din ({ic_tag_data_raw[i][25:0]}),
                                   .dout({ic_tag_data_raw_ff[i][25:0]})
                                   );


      rvecc_decode  ecc_decode (
                                .en(ecc_decode_enable),
                                .sed_ded ( 1'b1 ),                                      // 1 : means only detection
                                .din(   (ecc_decode_enable)?{11'b0,ic_tag_data_raw_ff[i][20:0]}:32'd0),
                                .ecc_in((ecc_decode_enable)?{2'b0, ic_tag_data_raw_ff[i][25:21]}:7'd0),
                                .dout(ic_tag_corrected_data_unc[i][31:0]),
                                .ecc_out(ic_tag_corrected_ecc_unc[i][6:0]),
                                .single_ecc_error(ic_tag_single_ecc_error[i]),
                                .double_ecc_error(ic_tag_double_ecc_error[i]));

        assign ic_tag_way_perr[i]= ic_tag_single_ecc_error[i] | ic_tag_double_ecc_error[i]  ;
      end
      else  begin : ECC0


      logic [4-1:0] [2-1:0][21 :0] wb_dout_hold;
      assign ic_tag_data_raw_pre[i][25:22] = '0 ;

 //     if (64 == 32)   begin : size_32
 //                `EH2_IC_TAG_SRAM(32,22)
  //    end // if (64 == 32)
  //    if (64 == 64)   begin : size_64
  //               `EH2_IC_TAG_SRAM(64,22)
  //    end // if (64 == 64)
  //    if (64 == 128)   begin : size_128
 ///                `EH2_IC_TAG_SRAM(128,22)
////      end // if (64 == 128)
 //      if (64 == 256)   begin : size_256
 //                `EH2_IC_TAG_SRAM(256,22)
//       end // if (64 == 256)
//       if (64 == 512)   begin : size_512
//                 `EH2_IC_TAG_SRAM(512,22)
 //      end // if (64 == 512)
 ////      if (64 == 1024)   begin : size_1024
 //                `EH2_IC_TAG_SRAM(1024,22)
  //     end // if (64 == 1024)
  //     if (64 == 2048)   begin : size_2048
 //                `EH2_IC_TAG_SRAM(2048,22)
  //     end // if (64 == 2048)
  //     if (64 == 4096)   begin  : size_4096
 //                `EH2_IC_TAG_SRAM(4096,22)
 //      end // if (64 == 4096)


         assign w_tout[i][31:5] = ic_tag_data_raw[i][31-5:0] ;
         assign w_tout[i][32]                  = ic_tag_data_raw[i][21] ;

         rvdff #(33-5) tg_data_raw_ff (.*,
                                                      .clk(active_clk),
                                                      .din (w_tout[i][32:5]),
                                                      .dout(w_tout_ff[i][32:5])
                                                      );

         rveven_paritycheck #(32-5) parcheck(.data_in   (w_tout_ff[i][31:5]),
                                                   .parity_in (w_tout_ff[i][32]),
                                                   .parity_err(ic_tag_way_perr[i]));
      end // else: !if(ICACHE_ECC)

   end // block: WAYS
end // block: PACKED_0

   // WAY PACKED
else begin : PACKED_1

   logic                                                                                ic_b_sram_en;
   logic                                                                                ic_b_read_en;
   logic                                                                                ic_b_write_en;
   logic [2-1:0] [5 : 3]   wb_index_hold;
   logic                                [5 : 3]   ic_b_rw_addr;
   logic [2-1:0]                                                 write_bypass_en;     //bank
   logic [2-1:0]                                                 write_bypass_en_ff;  //bank
   logic [2-1:0]                                                 index_valid;  //bank
   logic [2-1:0]                                                 ic_b_clear_en;
   logic [2-1:0]                                                 ic_b_addr_match;




    logic [2-1:0]  wrptr;
    logic [2-1:0]  wrptr_in;
    logic [2-1:0]        sel_bypass;
    logic [2-1:0]        sel_bypass_ff;



    logic [(26*4)-1:0]  sel_bypass_data;
    logic                                any_bypass;
    logic                                any_addr_match;
    logic                                ic_tag_clken_final;

`define EH2_IC_TAG_PACKED_SRAM(depth,width)                                                               \
                  ram_be_``depth``x``width  ic_way_tag (                                                   \
                                .ME  ( ic_tag_clken_final),                                                \
                                .WE  (|ic_tag_wren_q[4-1:0]),                             \
                                .WEM (ic_tag_wren_biten_vec[``width-1:0]),                                 \
                                                                                                           \
                                .D   ({4{ic_tag_wr_data[``width/4-1:0]}}), \
                                .ADR (ic_rw_addr_q[5:3]),            \
                                .Q   (ic_tag_data_raw_packed_pre[``width-1:0]),                            \
                                .CLK (clk),                                                                \
                                .ROP ( ),                                                                  \
                                                                                                           \
                                .TEST1     (ic_tag_ext_in_pkt[0].TEST1),                                   \
                                .RME      (ic_tag_ext_in_pkt[0].RME),                                      \
                                .RM       (ic_tag_ext_in_pkt[0].RM),                                       \
                                                                                                           \
                                .LS       (ic_tag_ext_in_pkt[0].LS),                                       \
                                .DS       (ic_tag_ext_in_pkt[0].DS),                                       \
                                .SD       (ic_tag_ext_in_pkt[0].SD),                                       \
                                                                                                           \
                                .TEST_RNM (ic_tag_ext_in_pkt[0].TEST_RNM),                                 \
                                .BC1      (ic_tag_ext_in_pkt[0].BC1),                                      \
                                .BC2      (ic_tag_ext_in_pkt[0].BC2)                                       \
                                                                                                           \
                               );                                                                          \
                                                                                                           \
             
             localparam ICACHE_TAG_BYPASS_ENABLE=1;
              if (ICACHE_TAG_BYPASS_ENABLE == 1) begin                                                                                                                                             
                                                                                                                                                                                                      
                 assign wrptr_in = (wrptr == (2-1)) ? '0 : (wrptr + 1'd1);                                                                                                     
                                                                                                                                                                                                      
                 rvdffs  #(2)  wrptr_ff(.*, .clk(active_clk), .en(|write_bypass_en), .din (wrptr_in), .dout(wrptr)) ;                                                                    
                                                                                                                                                                                                      
                 assign ic_b_sram_en              = |ic_tag_clken;                                                                                                                                    
                                                                                                                                                                                                      
                 assign ic_b_read_en              =  ic_b_sram_en  &  (|ic_tag_rden_q);                                                                                                               
               assign ic_b_write_en             =  ic_b_sram_en &   (|ic_tag_wren_q);                                                                                                               
                 assign ic_tag_clken_final        =  ic_b_sram_en &    ~(|sel_bypass);                                                                                                                
                                                                                                                                                                                                      
                 // LSB is 3]                                                                                                                                                    
                assign ic_b_rw_addr = {ic_rw_addr_q};                                                                                                                                                
                                                                                                                                                                                                      
always_comb begin                                                                                                                                                                    
any_addr_match = '0;                                                                                                                     
               for (int l=0; l<2; l++) begin                                                                                                                              
                      any_addr_match |= ic_b_addr_match[l];                                                                  
                    end                                                                                                           
                 end                                                                                                      
                                                                                                                                       
                // it is an error to ever have 2 entries with the same index and both valid                     
                for (genvar l=0; l<2; l++) begin: BYPASS                                                                                                                       
                                                                                                                                                                                                      
                   assign ic_b_addr_match[l] = (wb_index_hold[l] ==  ic_b_rw_addr) & index_valid[l];                                                                                                  
                                                                                                                                                                                                      
                   assign ic_b_clear_en[l]   = ic_b_write_en &   ic_b_addr_match[l];                                                                                                                  
                                                                                                                                                                                                      
                   assign sel_bypass[l]      = ic_b_read_en  &   ic_b_addr_match[l] ;                                                                                                                 
                                                                                                                                                                                                      
                   assign write_bypass_en[l] = ic_b_read_en  &  ~any_addr_match & (wrptr == l);                                                                                                       
                                                                                                                                                                                                      
                   rvdff  #(1)  write_bypass_ff (.*, .clk(active_clk),                                                     .din(write_bypass_en[l]), .dout(write_bypass_en_ff[l])) ;                                  
                   rvdffs #(1)  index_val_ff    (.*, .clk(active_clk), .en(write_bypass_en[l] | ic_b_clear_en[l]),         .din(~ic_b_clear_en[l]),  .dout(index_valid[l])) ;                                         
                   rvdff  #(1)  sel_hold_ff     (.*, .clk(active_clk),                                                     .din(sel_bypass[l]),      .dout(sel_bypass_ff[l])) ;                                               
                                                                                                                                                                                                      
                   rvdffs #((5-3+1))  ic_addr_index    (.*, .clk(active_clk), .en(write_bypass_en[l]),    .din (ic_b_rw_addr),               .dout(wb_index_hold[l]));          
       //            rvdffe #(``width)                                        rd_data_hold_ff  (.*, .en(write_bypass_en_ff[l]), .din (ic_tag_data_raw_packed_pre[``width-1:0]), .dout(wb_packeddout_hold[l]));          
                                                                                                                                                                                                      
                end // block: BYPASS                                                                                                                                                                  
                                                                                                                                                                                                      
                always_comb begin                                                                                                                                                                     
                 any_bypass = '0;                                                                                                                                                                     
                 sel_bypass_data = '0;                                                                                                                                                                
                                                                                                                                                                                                      
                 for (int l=0; l<2; l++) begin                                                                                                                                 
                    any_bypass      |=  sel_bypass_ff[l];                                                                                                                                             
          //          sel_bypass_data |= (sel_bypass_ff[l]) ? wb_packeddout_hold[l] : '0;                                                                                                               
                 end                                                                                                                                                                                  
                                                                                                                                                                                                      
      //             ic_tag_data_raw_packed   =   any_bypass ?  sel_bypass_data :  ic_tag_data_raw_packed_pre ;                                                                                         
                end // always_comb begin                                                                                                                                                              
                                                                                                                                                                                                      
             end // if (ICACHE_BYPASS_ENABLE == 1)                                                                                                                                                 
             else begin                                                                                                                                                                               
        //         assign ic_tag_data_raw_packed   =   ic_tag_data_raw_packed_pre ;                                                                                                                     
                 assign ic_tag_clken_final       =  |ic_tag_clken;                                                                                                                                    
             end

   if (ICACHE_ECC) begin  : ECC1
    logic [(26*4)-1 :0]  ic_tag_data_raw_packed, ic_tag_wren_biten_vec, ic_tag_data_raw_packed_pre;           // data and its bit enables
    logic [2-1:0][(26*4)-1 :0] wb_packeddout_hold;
    for (genvar i=0; i<4; i++) begin: BITEN
        assign ic_tag_wren_biten_vec[(26*i)+25:26*i] = {26{ic_tag_wren_q[i]}};
     end
      if (64 == 32)   begin : size_32
        if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(32,104)
        end // block: WAYS
      else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(32,52)
        end // block: WAYS
      end // if (64 == 32

      if (64 == 64)   begin : size_64
        if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(64,104)
        end // block: WAYS
      else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(64,52)
        end // block: WAYS
      end // block: size_64

      if (64 == 128)   begin : size_128
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(128,104)
      end // block: WAYS
      else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(128,52)
      end // block: WAYS

      end // block: size_128

      if (64 == 256)   begin : size_256
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(256,104)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(256,52)
        end // block: WAYS
      end // block: size_256

      if (64 == 512)   begin : size_512
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(512,104)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(512,52)
        end // block: WAYS
      end // block: size_512

      if (64 == 1024)   begin : size_1024
         if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(1024,104)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(1024,52)
        end // block: WAYS
      end // block: size_1024

      if (64 == 2048)   begin : size_2048
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(2048,104)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(2048,52)
        end // block: WAYS
      end // block: size_2048

      if (64 == 4096)   begin  : size_4096
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(4096,104)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(4096,52)
        end // block: WAYS
      end // block: size_4096


        for (genvar i=0; i<4; i++) begin
          assign ic_tag_data_raw[i]  = ic_tag_data_raw_packed[(26*i)+25:26*i];
          assign w_tout[i][31:5] = ic_tag_data_raw[i][31-5:0] ;
          assign w_tout[i][32]                  =  1'b0 ; // Unused in this context

           rvdffe #(26) tg_data_raw_ff (.*,
                                        .en  (ic_rd_en_ff),
                                        .din ({ic_tag_data_raw[i][25:0]}),
                                        .dout({ic_tag_data_raw_ff[i][25:0]})
                                        );


           rvecc_decode  ecc_decode (
                                     .en(ecc_decode_enable),
                                     .sed_ded ( 1'b1 ),                                      // 1 : means only detection
                                     .din(   (ecc_decode_enable)?{11'b0,ic_tag_data_raw_ff[i][20:0]}:32'd0),
                                     .ecc_in((ecc_decode_enable)?{2'b0, ic_tag_data_raw_ff[i][25:21]}:7'd0),
                                     .dout(ic_tag_corrected_data_unc[i][31:0]),
                                     .ecc_out(ic_tag_corrected_ecc_unc[i][6:0]),
                                     .single_ecc_error(ic_tag_single_ecc_error[i]),
                                     .double_ecc_error(ic_tag_double_ecc_error[i]));


           assign ic_tag_way_perr[i]= ic_tag_single_ecc_error[i] | ic_tag_double_ecc_error[i]  ;

        end // for (genvar i=0; i<4; i++)

   end // block: ECC1


   else  begin : ECC0

    logic [(22*4)-1 :0]  ic_tag_data_raw_packed, ic_tag_wren_biten_vec, ic_tag_data_raw_packed_pre;           // data and its bit enables
    logic [2-1:0][(22*4)-1 :0] wb_packeddout_hold;
    for (genvar i=0; i<4; i++) begin: BITEN
        assign ic_tag_wren_biten_vec[(22*i)+21:22*i] = {22{ic_tag_wren_q[i]}};
     end
      if (64 == 32)   begin : size_32
        if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(32,88)
        end // block: WAYS
      else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(32,44)
        end // block: WAYS
      end // if (64 == 32

      if (64 == 64)   begin : size_64
        if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(64,88)
        end // block: WAYS
      else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(64,44)
        end // block: WAYS
      end // block: size_64

      if (64 == 128)   begin : size_128
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(128,88)
      end // block: WAYS
      else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(128,44)
      end // block: WAYS

      end // block: size_128

      if (64 == 256)   begin : size_256
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(256,88)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(256,44)
        end // block: WAYS
      end // block: size_256

      if (64 == 512)   begin : size_512
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(512,88)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(512,44)
        end // block: WAYS
      end // block: size_512

      if (64 == 1024)   begin : size_1024
         if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(1024,88)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(1024,44)
        end // block: WAYS
      end // block: size_1024

      if (64 == 2048)   begin : size_2048
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(2048,88)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(2048,44)
        end // block: WAYS
      end // block: size_2048

      if (64 == 4096)   begin  : size_4096
       if (4 == 4) begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(4096,88)
        end // block: WAYS
       else begin : WAYS
                 `EH2_IC_TAG_PACKED_SRAM(4096,44)
        end // block: WAYS
      end // block: size_4096


      for (genvar i=0; i<4; i++) begin : WAYS
          assign ic_tag_data_raw[i]  = ic_tag_data_raw_packed[(22*i)+21:22*i];
          assign w_tout[i][31:5] = ic_tag_data_raw[i][31-5:0] ;
          assign w_tout[i][32]                 = ic_tag_data_raw[i][21] ;

          rvdff #(33-5) tg_data_raw_ff (.*,
                                                       .clk(active_clk),
                                                       .din (w_tout[i][32:5]),
                                                       .dout(w_tout_ff[i][32:5])
                                                       );

          rveven_paritycheck #(32-5) parcheck(.data_in   (w_tout_ff[i][31:5]),
                                                   .parity_in (w_tout_ff[i][32]),
                                                   .parity_err(ic_tag_way_perr[i]));
      end // block: WAYS



   end // block: ECC0
end // block: PACKED_1

localparam ICACHE_ECC=1;
   always_comb begin : tag_rd_out
      ictag_debug_rd_data[25:0] = '0;
      for ( int j=0; j<4; j++) begin: debug_rd_out
         ictag_debug_rd_data[25:0] |=  ICACHE_ECC ? ({26{ic_debug_rd_way_en_ff[j]}} & ic_tag_data_raw[j] ) : {4'b0, ({22{ic_debug_rd_way_en_ff[j]}} & ic_tag_data_raw[j][21:0])};
      end
   end


   for ( genvar i=0; i<4; i++) begin : ic_rd_hit_loop
      assign ic_rd_hit[i] = (w_tout[i][31:5] == ic_rw_addr_ff[31:5]) & ic_tag_valid[i] & ~ic_wr_en_ff;
   end

   assign  ic_tag_perr  = | (ic_tag_way_perr[4-1:0] & ic_tag_valid_ff[4-1:0] ) ; 
   endmodule // EH2_IC_TAG
