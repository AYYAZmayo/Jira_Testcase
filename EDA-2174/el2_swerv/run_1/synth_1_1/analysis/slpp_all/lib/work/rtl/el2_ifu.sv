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
//********************************************************************************
// Function: Top level file for Icache, Fetch, Branch prediction & Aligner
// BFF -> F1 -> F2 -> A
//********************************************************************************

module el2_ifu
import el2_pkg::*;

  (
   input logic free_l2clk,                   // Clock always.                  Through one clock header.  For flops with    second header built in.
   input logic active_clk,                   // Clock only while core active.  Through two clock headers. For flops without second clock header built in.
   input logic clk,                          // Clock only while core active.  Through one clock header.  For flops with    second clock header built in.  Connected to ACTIVE_L2CLK.
   input logic rst_l,                        // reset, active low

   input logic dec_i0_decode_d,              // Valid instruction at D and not blocked

   input logic exu_flush_final, // flush, includes upper and lower
   input logic dec_tlu_i0_commit_cmt , // committed i0
   input logic dec_tlu_flush_err_wb , // flush due to parity error.
   input logic dec_tlu_flush_noredir_wb, // don't fetch, validated with exu_flush_final
   input logic [31:1] exu_flush_path_final, // flush fetch address

   input logic [31:0]  dec_tlu_mrac_ff ,// Side_effect , cacheable for each region
   input logic         dec_tlu_fence_i_wb, // fence.i, invalidate icache, validated with exu_flush_final
   input logic         dec_tlu_flush_leak_one_wb, // ignore bp for leak one fetches

   input logic                       dec_tlu_bpred_disable,     // disable all branch prediction
   input logic                       dec_tlu_core_ecc_disable,  // disable ecc checking and flagging
   input logic                       dec_tlu_force_halt,        // force halt

  //-------------------------- IFU AXI signals--------------------------
   // AXI Write Channels
   output logic                            ifu_axi_awvalid,
   output logic [3-1:0]       ifu_axi_awid,
   output logic [31:0]                     ifu_axi_awaddr,
   output logic [3:0]                      ifu_axi_awregion,
   output logic [7:0]                      ifu_axi_awlen,
   output logic [2:0]                      ifu_axi_awsize,
   output logic [1:0]                      ifu_axi_awburst,
   output logic                            ifu_axi_awlock,
   output logic [3:0]                      ifu_axi_awcache,
   output logic [2:0]                      ifu_axi_awprot,
   output logic [3:0]                      ifu_axi_awqos,

   output logic                            ifu_axi_wvalid,
   output logic [63:0]                     ifu_axi_wdata,
   output logic [7:0]                      ifu_axi_wstrb,
   output logic                            ifu_axi_wlast,

   output logic                            ifu_axi_bready,

   // AXI Read Channels
   output logic                            ifu_axi_arvalid,
   input  logic                            ifu_axi_arready,
   output logic [3-1:0]       ifu_axi_arid,
   output logic [31:0]                     ifu_axi_araddr,
   output logic [3:0]                      ifu_axi_arregion,
   output logic [7:0]                      ifu_axi_arlen,
   output logic [2:0]                      ifu_axi_arsize,
   output logic [1:0]                      ifu_axi_arburst,
   output logic                            ifu_axi_arlock,
   output logic [3:0]                      ifu_axi_arcache,
   output logic [2:0]                      ifu_axi_arprot,
   output logic [3:0]                      ifu_axi_arqos,

   input  logic                            ifu_axi_rvalid,
   output logic                            ifu_axi_rready,
   input  logic [3-1:0]       ifu_axi_rid,
   input  logic [63:0]                     ifu_axi_rdata,
   input  logic [1:0]                      ifu_axi_rresp,

   input  logic                      ifu_bus_clk_en,

   input  logic                      dma_iccm_req,
   input  logic [31:0]               dma_mem_addr,
   input  logic [2:0]                dma_mem_sz,
   input  logic                      dma_mem_write,
   input  logic [63:0]               dma_mem_wdata,
   input  logic [2:0]                dma_mem_tag,       //  DMA Buffer entry number


   input  logic                      dma_iccm_stall_any,
   output logic                      iccm_dma_ecc_error,
   output logic                      iccm_dma_rvalid,
   output logic [63:0]               iccm_dma_rdata,
   output logic [2:0]                iccm_dma_rtag,     //   Tag of the DMA req
   output logic                      iccm_ready,

   output logic       ifu_pmu_instr_aligned,
   output logic       ifu_pmu_fetch_stall,
   output logic       ifu_ic_error_start,     // has all of the I$ ecc/parity for data/tag

//   I$ & ITAG Ports
   output logic [31:1]               ic_rw_addr,         // Read/Write addresss to the Icache.
   output logic [4-1:0]                ic_wr_en,           // Icache write enable, when filling the Icache.
   output logic                      ic_rd_en,           // Icache read  enable.

   output logic [2-1:0][70:0]               ic_wr_data,         // Data to fill to the Icache. With ECC
   input  logic [63:0]              ic_rd_data ,        // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
   input  logic [70:0]              ic_debug_rd_data ,        // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
   input  logic [25:0]                     ictag_debug_rd_data,// Debug icache tag.
   output logic [70:0]               ic_debug_wr_data,   // Debug wr cache.

   output logic [70:0]               ifu_ic_debug_rd_data,

   input  logic [2-1:0] ic_eccerr,    //
   input  logic [2-1:0] ic_parerr,
   output logic [63:0]               ic_premux_data,     // Premux data to be muxed with each way of the Icache.
   output logic                      ic_sel_premux_data, // Select the premux data.

   output logic [5:3]               ic_debug_addr,      // Read/Write addresss to the Icache.
   output logic                      ic_debug_rd_en,     // Icache debug rd
   output logic                      ic_debug_wr_en,     // Icache debug wr
   output logic                      ic_debug_tag_array, // Debug tag array
   output logic [4-1:0]                ic_debug_way,       // Debug way. Rd or Wr.


   output logic [4-1:0]                ic_tag_valid,       // Valid bits when accessing the Icache. One valid bit per way. F2 stage

   input  logic [4-1:0]                ic_rd_hit,          // Compare hits from Icache tags. Per way.  F2 stage
   input  logic                      ic_tag_perr,        // Icache Tag parity error


   // ICCM ports
   output logic [19-1:1]               iccm_rw_addr,       // ICCM read/write address.
   output logic                      iccm_wren,          // ICCM write enable (through the DMA)
   output logic                      iccm_rden,          // ICCM read enable.
   output logic [77:0]               iccm_wr_data,       // ICCM write data.
   output logic [2:0]                iccm_wr_size,       // ICCM write location within DW.

   input  logic [63:0]               iccm_rd_data,       // Data read from ICCM.
   input  logic [77:0]               iccm_rd_data_ecc,   // Data + ECC read from ICCM.

   output logic                      ifu_iccm_rd_ecc_single_err, // This fetch has a single ICCM ecc  error.

// Perf counter sigs
   output logic       ifu_pmu_ic_miss, // ic miss
   output logic       ifu_pmu_ic_hit, // ic hit
   output logic       ifu_pmu_bus_error, // iside bus error
   output logic       ifu_pmu_bus_busy,  // iside bus busy
   output logic       ifu_pmu_bus_trxn, // iside bus transactions


   output logic       ifu_i0_icaf,         // Instruction 0 access fault. From Aligner to Decode
   output logic [1:0] ifu_i0_icaf_type, // Instruction 0 access fault type

   output logic  ifu_i0_valid,        // Instruction 0 valid. From Aligner to Decode
   output logic  ifu_i0_icaf_second,  // Instruction 0 has access fault on second 2B of 4B inst
   output logic  ifu_i0_dbecc,        // Instruction 0 has double bit ecc error
   output logic  iccm_dma_sb_error,   // Single Bit ECC error from a DMA access
   output logic[31:0] ifu_i0_instr,   // Instruction 0 . From Aligner to Decode
   output logic[31:1] ifu_i0_pc,      // Instruction 0 pc. From Aligner to Decode
   output logic ifu_i0_pc4,           // Instruction 0 is 4 byte. From Aligner to Decode

   output logic ifu_miss_state_idle,   // There is no outstanding miss. Cache miss state is idle.

   output el2_br_pkt_t i0_brp,           // Instruction 0 branch packet. From Aligner to Decode
   output logic [5:4] ifu_i0_bp_index, // BP index
   output logic [4-1:0] ifu_i0_bp_fghr, // BP FGHR
   output logic [9-1:0] ifu_i0_bp_btag, // BP tag
   output logic [$clog2(32)-1:0]         ifu_i0_fa_index,          // Fully associt btb index

   input el2_predict_pkt_t  exu_mp_pkt, // mispredict packet
   input logic [4-1:0] exu_mp_eghr, // execute ghr
   input logic [4-1:0]  exu_mp_fghr,                    // Mispredict fghr
   input logic [5:4]  exu_mp_index,         // Mispredict index
   input logic [9-1:0]  exu_mp_btag,                   // Mispredict btag

   input el2_br_tlu_pkt_t dec_tlu_br0_r_pkt, // slot0 update/error pkt
   input logic [4-1:0] exu_i0_br_fghr_r, // fghr to bp
   input logic [5:4] exu_i0_br_index_r, // bp index
   input logic [$clog2(32)-1:0] dec_fa_error_index, // Fully associt btb error index

   input dec_tlu_flush_lower_wb,

   output logic [15:0] ifu_i0_cinst,


/// Icache debug
   input  el2_cache_debug_pkt_t        dec_tlu_ic_diag_pkt ,
   output logic                    ifu_ic_debug_rd_data_valid,
   output logic                                iccm_buf_correct_ecc,
   output logic                                iccm_correction_state,

   input logic scan_mode
   );

   localparam TAGWIDTH = 2 ;
   localparam IDWIDTH  = 2 ;

   logic                   ifu_fb_consume1, ifu_fb_consume2;
   logic [31:1]            ifc_fetch_addr_f;
   logic [31:1]            ifc_fetch_addr_bf;

   logic [1:0]   ifu_fetch_val;  // valids on a 2B boundary, left justified [7] implies valid fetch
   logic [31:1]  ifu_fetch_pc;   // starting pc of fetch

   logic iccm_rd_ecc_single_err, ic_error_start;
   assign ifu_iccm_rd_ecc_single_err = iccm_rd_ecc_single_err;
   assign ifu_ic_error_start = ic_error_start;


   logic        ic_write_stall;
   logic        ic_dma_active;
   logic        ifc_dma_access_ok;
   logic [1:0]  ic_access_fault_f;
   logic [1:0]  ic_access_fault_type_f;
   logic        ifu_ic_mb_empty;

   logic ic_hit_f;

   logic [1:0] ifu_bp_way_f; // way indication; right justified
   logic       ifu_bp_hit_taken_f; // kill next fetch; taken target found
   logic [31:1] ifu_bp_btb_target_f; //  predicted target PC
   logic        ifu_bp_inst_mask_f; // tell ic which valids to kill because of a taken branch; right justified
   logic [1:0]  ifu_bp_hist1_f; // history counters for all 4 potential branches; right justified
   logic [1:0]  ifu_bp_hist0_f; // history counters for all 4 potential branches; right justified
   logic [11:0] ifu_bp_poffset_f; // predicted target
   logic [1:0]  ifu_bp_ret_f; // predicted ret ; right justified
   logic [1:0]  ifu_bp_pc4_f; // pc4 indication; right justified
   logic [1:0]  ifu_bp_valid_f; // branch valid, right justified
   logic [4-1:0] ifu_bp_fghr_f;
   logic [1:0] [$clog2(32)-1:0] ifu_bp_fa_index_f;
   localparam BTB_ENABLE =1;

   // fetch control
   el2_ifu_ifc_ctl  ifc (.*
                    );

   // branch predictor
   if (BTB_ENABLE==1) begin  : bpred
      el2_ifu_bp_ctl  bp (.*);
   end
   else begin : bpred
      assign ifu_bp_hit_taken_f = '0;
      // verif wires
      logic btb_wr_en_way0, btb_wr_en_way1,dec_tlu_error_wb;
      logic [16+9:0] btb_wr_data;
      assign btb_wr_en_way0 = '0;
      assign btb_wr_en_way1 = '0;
      assign btb_wr_data = '0;
      assign dec_tlu_error_wb ='0;
      assign ifu_bp_inst_mask_f = 1'b1;
   end


   logic [1:0]   ic_fetch_val_f;
   logic [31:0] ic_data_f;
   logic [31:0] ifu_fetch_data_f;
   logic ifc_fetch_req_f;
   logic ifc_fetch_req_f_raw;
   logic [1:0] iccm_rd_ecc_double_err;  // This fetch has an iccm double error.

   logic ifu_async_error_start;


   assign ifu_fetch_data_f[31:0] = ic_data_f[31:0];
   assign ifu_fetch_val[1:0] = ic_fetch_val_f[1:0];
   assign ifu_fetch_pc[31:1] = ifc_fetch_addr_f[31:1];

 logic                       ifc_fetch_uncacheable_bf;      // The fetch request is uncacheable space. BF stage
 logic                       ifc_fetch_req_bf;              // Fetch request. Comes with the address.  BF stage
 logic                       ifc_fetch_req_bf_raw;          // Fetch request without some qualifications. Used for clock-gating. BF stage
 logic                       ifc_iccm_access_bf;            // This request is to the ICCM. Do not generate misses to the bus.
 logic                       ifc_region_acc_fault_bf;       // Access fault. in ICCM region but offset is outside defined ICCM.

   // aligner

   el2_ifu_aln_ctl  aln (
                                    .*
                                    );


   // icache
   el2_ifu_mem_ctl  mem_ctl
     (.*,
      .ic_data_f(ic_data_f[31:0])
      );



   // Performance debug info
   //
   //




































































endmodule // el2_ifu
