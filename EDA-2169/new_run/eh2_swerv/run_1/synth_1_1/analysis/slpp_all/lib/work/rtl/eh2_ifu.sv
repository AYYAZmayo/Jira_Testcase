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

module eh2_ifu
import eh2_pkg::*;
//#(
//`include "eh2_param.vh"
//)
  (
   input logic clk,
   input logic active_clk,
   input logic [1-1:0] active_thread_l2clk,
   input logic clk_override,
   input logic rst_l,


   input logic [1-1:0]        dec_i1_cancel_e1,

   input logic [1-1:0]        dec_ib3_valid_d,           // ib3 buffer valid
   input logic [1-1:0]        dec_ib2_valid_d,           // ib2 buffer valid

   input logic dec_i0_tid_e4, // needed to maintain RS in BP
   input logic dec_i1_tid_e4,

   input logic        exu_i0_br_ret_e4,  // i0 branch commit is a ret
   input logic        exu_i1_br_ret_e4,  // i1 branch commit is a ret
   input logic        exu_i0_br_call_e4, // i0 branch commit is a call
   input logic        exu_i1_br_call_e4, // i1 branch commit is a call

   input logic [1-1:0][31:1] exu_flush_path_final, // flush fetch address
   input logic [1-1:0][31:1] dec_tlu_flush_path_wb, // flush fetch address

   input logic [1-1:0]             exu_flush_final_early,              // Pipe is being flushed this cycle
   input logic [1-1:0][31:1]       exu_flush_path_final_early,         // Target for the oldest flush source




   input logic [31:0]  dec_tlu_mrac_ff ,// Side_effect , cacheable for each region

   input logic                         dec_tlu_bpred_disable, // disable all branch prediction
   input logic                         dec_tlu_core_ecc_disable,  // disable ecc checking and flagging

   input logic [1-1:0]    dec_tlu_btb_write_kill, // Kill writes while working on forward progress after a branch error

// Threaded signals

   input logic [1-1:0]        exu_flush_final,
   input logic [1-1:0]        dec_tlu_flush_err_wb , // flush due to parity error.
   input logic [1-1:0]        dec_tlu_flush_noredir_wb, // don't fetch, validated with exu_flush_final
   input logic [1-1:0]        dec_tlu_flush_lower_wb, //
   input logic [1-1:0]        dec_tlu_flush_mp_wb,
   input logic [1-1:0]        dec_tlu_fence_i_wb, //
   input logic [1-1:0]        dec_tlu_flush_leak_one_wb, // ignore bp for leak one fetches
   input logic [1-1:0]        dec_tlu_force_halt , // force halt.

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


   input  logic                         ifu_bus_clk_en,

   input  logic                      dma_iccm_req,
   input  logic [2:0]                dma_mem_tag,
   input  logic [31:0]               dma_mem_addr,
   input  logic [2:0]                dma_mem_sz,
   input  logic                      dma_mem_write,
   input  logic [63:0]               dma_mem_wdata,
   input  logic                      dma_iccm_stall_any,


   output logic                      iccm_dma_ecc_error,
   output logic                      iccm_dma_rvalid,
   output logic [2:0]                iccm_dma_rtag,
   output logic [63:0]               iccm_dma_rdata,
   output logic                      iccm_ready,

   output logic [1-1:0][1:0] ifu_pmu_instr_aligned,
   output logic [1-1:0]      ifu_pmu_align_stall,

   output logic [1-1:0] ifu_pmu_fetch_stall,

//   I$ & ITAG Ports
   output logic [31:1]               ic_rw_addr,         // Read/Write addresss to the Icache.
   output logic [4-1:0]                ic_wr_en,           // Icache write enable, when filling the Icache.
   output logic                      ic_rd_en,           // Icache read  enable.

   output logic [2-1:0] [70:0]               ic_wr_data,           // Data to fill to the Icache. With ECC
   input  logic [63:0]               ic_rd_data ,          // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
   input  logic [70:0]               ic_debug_rd_data ,    // Data read from Icache. 2x64bits + parity bits. F2 stage. With ECC
   input  logic [25:0]               ictag_debug_rd_data,  // Debug icache tag.
   output logic [70:0]               ic_debug_wr_data,     // Debug wr cache.
   output logic [70:0]               ifu_ic_debug_rd_data, // debug data read

   input  logic [2-1:0] ic_eccerr,    //
   input  logic [2-1:0] ic_parerr,



   output logic [63:0]               ic_premux_data,     // Premux data to be muxed with each way of the Icache.
   output logic                      ic_sel_premux_data, // Select the premux data.

   output logic [5:3]  ic_debug_addr,      // Read/Write addresss to the Icache.
   output logic                         ic_debug_rd_en,     // Icache debug rd
   output logic                         ic_debug_wr_en,     // Icache debug wr
   output logic                         ic_debug_tag_array, // Debug tag array
   output logic [4-1:0]ic_debug_way,       // Debug way. Rd or Wr.


   output logic [4-1:0]                ic_tag_valid,       // Valid bits when accessing the Icache. One valid bit per way. F2 stage

   input  logic [4-1:0]                ic_rd_hit,          // Compare hits from Icache tags. Per way.  F2 stage
   input  logic                      ic_tag_perr,        // Icache Tag parity error


   // ICCM ports
   output logic [19-1:1]   iccm_rw_addr,                        // ICCM read/write address.
   output logic [1-1:0] iccm_buf_correct_ecc_thr,            // ICCM is doing a single bit error correct cycle
   output logic                      iccm_stop_fetch,                     // We have fetched 4 bytes. Dont consider any hits for lru replacements
   output logic                      iccm_correction_state,               // We are under a correction - This is needed to guard replacements when hit
   output logic                      iccm_corr_scnd_fetch,                // dont match on middle bank when under correction

   output logic                      ifc_select_tid_f1,  // Thread reading ICCM. Used for error redundancy logic
   output logic                      iccm_wren,          // ICCM write enable (through the DMA)
   output logic                      iccm_rden,          // ICCM read enable.
   output logic [77:0]               iccm_wr_data,       // ICCM write data.
   output logic [2:0]                iccm_wr_size,       // ICCM write location within DW.

   input  logic [63:0]               iccm_rd_data,       // Data read from ICCM.
   input  logic [116:0]              iccm_rd_data_ecc,   // Data read from ICCM.



   // BTB ports
   input eh2_btb_sram_pkt btb_sram_pkt,

   input logic [20+9+5-1:0]      btb_vbank0_rd_data_f1,
   input logic [20+9+5-1:0]      btb_vbank1_rd_data_f1,
   input logic [20+9+5-1:0]      btb_vbank2_rd_data_f1,
   input logic [20+9+5-1:0]      btb_vbank3_rd_data_f1,
   output logic                         btb_wren,
   output logic                         btb_rden,
   output logic [1:0] [5:1] btb_rw_addr,  // per bank
   output logic [1:0] [5:1] btb_rw_addr_f1,  // per bank
   output logic [20+9+5-1:0]         btb_sram_wr_data,
   output logic [1:0] [9-1:0] btb_sram_rd_tag_f1,

   output logic [1-1:0] ifu_pmu_ic_miss,               // IC miss event
   output logic [1-1:0] ifu_pmu_ic_hit,                // IC hit event
   output logic [1-1:0] ifu_pmu_bus_error,             // Bus error event
   output logic [1-1:0] ifu_pmu_bus_busy,              // Bus busy event
   output logic [1-1:0] ifu_pmu_bus_trxn,              // Bus transaction

   output logic  [1-1:0] ifu_i0_valid,        // Instruction 0 valid. From Aligner to Decode
   output logic  [1-1:0] ifu_i1_valid,        // Instruction 1 valid. From Aligner to Decode
   output logic  [1-1:0] ifu_i0_icaf,         // Instruction 0 access fault. From Aligner to Decode

   output logic  [1-1:0] [1:0]  ifu_i0_icaf_type, // Instruction 0 access fault type

   output logic  [1-1:0] ifu_i0_icaf_second,      // Instruction 0 has access fault on second 2B of 4B inst
   output logic  [1-1:0] ifu_i0_dbecc,        // Instruction 0 has double bit ecc error
   output logic                     iccm_dma_sb_error,   // Single Bit ECC error from a DMA access
   output logic  [1-1:0] [31:0] ifu_i0_instr,   // Instruction 0 . From Aligner to Decode
   output logic  [1-1:0] [31:0] ifu_i1_instr,   // Instruction 1 . From Aligner to Decode
   output logic  [1-1:0] [31:1] ifu_i0_pc,      // Instruction 0 pc. From Aligner to Decode
   output logic  [1-1:0] [31:1] ifu_i1_pc,      // Instruction 1 pc. From Aligner to Decode
   output logic  [1-1:0] ifu_i0_pc4,           // Instruction 0 is 4 byte. From Aligner to Decode
   output logic  [1-1:0] ifu_i1_pc4,           // Instruction 1 is 4 byte. From Aligner to Decode
   output eh2_predecode_pkt_t  [1-1:0] ifu_i0_predecode,
   output eh2_predecode_pkt_t  [1-1:0] ifu_i1_predecode,

   output eh2_br_pkt_t [1-1:0] i0_brp,           // Instruction 0 branch packet. From Aligner to Decode
   output eh2_br_pkt_t [1-1:0] i1_brp,           // Instruction 1 branch packet. From Aligner to Decode
   output logic [1-1:0] [5:4] ifu_i0_bp_index, // BP index
   output logic [1-1:0] [5-1:0]           ifu_i0_bp_fghr, // BP FGHR
   output logic [1-1:0] [9-1:0]          ifu_i0_bp_btag, // BP tag
   output logic [1-1:0] [20-1:0]       ifu_i0_bp_toffset, // BP offset

   output logic [1-1:0] [5:4] ifu_i1_bp_index, // BP index
   output logic [1-1:0] [5-1:0]           ifu_i1_bp_fghr, // BP FGHR
   output logic [1-1:0] [9-1:0]          ifu_i1_bp_btag, // BP tag
   output logic [1-1:0] [20-1:0]       ifu_i1_bp_toffset, // BP offset

   output logic [1-1:0] [$clog2(32)-1:0] ifu_i0_bp_fa_index,
   output logic [1-1:0] [$clog2(32)-1:0] ifu_i1_bp_fa_index,

   input eh2_predict_pkt_t [1-1:0]                    exu_mp_pkt, // mispredict packet
   input [1-1:0][20-1:0] exu_mp_toffset, // target offset
   input logic [1-1:0][5-1:0]            exu_mp_eghr, // execute ghr
   input logic [1-1:0][5-1:0]            exu_mp_fghr,                    // Mispredict fghr
   input logic [1-1:0][5:4]  exu_mp_index,         // Mispredict index
   input logic [1-1:0][9-1:0]           exu_mp_btag,                   // Mispredict btag

   input eh2_br_tlu_pkt_t                     dec_tlu_br0_wb_pkt, // slot0 update/error pkt
   input eh2_br_tlu_pkt_t                     dec_tlu_br1_wb_pkt, // slot1 update/error pkt
   input logic [5-1:0]           dec_tlu_br0_fghr_wb, // fghr to bp
   input logic [5:4] dec_tlu_br0_index_wb, // bp index
   input logic [5-1:0]           dec_tlu_br1_fghr_wb, // fghr to bp
   input logic [5:4] dec_tlu_br1_index_wb, // bp index

   input [1-1:0] dec_tlu_i0_commit_cmt,

   input logic [$clog2(32)-1:0] dec_fa_error_index, // Fully associt btb error index

   output logic [1-1:0] [15:0] ifu_i0_cinst,
   output logic [1-1:0] [15:0] ifu_i1_cinst,


/// Icache debug
   input  eh2_cache_debug_pkt_t        dec_tlu_ic_diag_pkt ,
   output logic                    ifu_ic_debug_rd_data_valid,


// Icache/ICCM errors
   output logic [1-1:0]  ifu_miss_state_idle,          // I-side miss buffer empty
   output logic [1-1:0]  ifu_ic_error_start,           // IC single bit error
   output logic [1-1:0]  ifu_iccm_rd_ecc_single_err,   // ICCM single bit error


   input logic scan_mode
   );

   localparam TAGWIDTH = 2 ;
   localparam IDWIDTH  = 2 ;

   logic                   ifc_fetch_uncacheable_f1;

   logic [3:0]   ifu_fetch_val;  // valids on a 2B boundary, left justified [7] implies valid fetch
   logic [31:1]  ifu_fetch_pc;   // starting pc of fetch

   logic [31:1] ifc_fetch_addr_bf, ifc_fetch_addr_f1, ifc_fetch_addr_f2;

   logic [1-1:0]   ic_write_stall_thr;
   logic        ic_dma_active;
   logic        ifc_dma_access_ok;
   logic        ifc_iccm_access_f1;
   logic        ifc_region_acc_fault_f1;
   logic  [3:0] ic_access_fault_f2;
   logic  [1:0] ic_access_fault_type_f2;// Access fault type
   logic [1-1:0]   ifu_ic_mb_empty_thr;
   logic [1-1:0]   ic_crit_wd_rdy_thr;
   logic [3:0]   ic_fetch_val_f2;
   logic [63:0]  ic_data_f2;
   logic [63:0]  ifu_fetch_data;
   logic         ifc_fetch_req_bf, ifc_fetch_req_f1_raw, ifc_fetch_req_f1, ifc_fetch_req_f2;
   logic         iccm_rd_ecc_single_err;  // This fetch has an iccm single error.
   logic [3:0]   iccm_rd_ecc_double_err;  // This fetch has an iccm double error.
   logic [1-1:0]         ifu_async_error_start;

   logic ifu_fetch_tid;
   logic ic_hit_f2;


   // fetch control
   logic [1-1:0] [31:1] fetch_addr_bf, fetch_addr_f1, fetch_addr_f2; // fetch address
   logic [1-1:0] fetch_uncacheable_f1, fetch_req_bf, fetch_req_f1, fetch_req_f1_raw, fetch_req_f2,
                              iccm_access_f1, region_acc_fault_f1, dma_access_ok,
                              ifc_ready;
   logic [1-1:0] [5:4] fetch_btb_rd_addr_f1; // btb read hash
   logic [1-1:0] [5:4] fetch_btb_rd_addr_p1_f1; // btb read hash

   logic [5:4] ifc_fetch_btb_rd_addr_f1; // btb read hash
   logic [5:4] ifc_fetch_btb_rd_addr_p1_f1; // btb read hash

   logic [1-1:0] fb_consume1;                                   // Consumed one buffer. To fetch control fetch for buffer mass balance
   logic [1-1:0] fb_consume2;                                   // Consumed two buffers.To fetch control fetch for buffer mass balance

logic [1-1:0] dec_tlu_i0_commit_cmt_thr;
logic  fetch_tid_f1 ;
   logic [1-1:0] i0_valid;                                      // Instruction 0 is valid
   logic [1-1:0] i1_valid;                                      // Instruction 1 is valid
   logic [1-1:0] i0_icaf;                                       // Instruction 0 has access fault
   logic [1-1:0] [1:0]  i0_icaf_type;                           // Instruction 0 access fault type
   logic [1-1:0] i0_icaf_second;                                // Instruction 0 has access fault on second 2B of 4B inst
   logic [1-1:0] i0_dbecc;                                      // Instruction 0 has double bit ecc error
   logic [1-1:0] [31:0] i0_instr;                               // Instruction 0
   logic [1-1:0] [31:0] i1_instr;                               // Instruction 1
   logic [1-1:0] [31:1] i0_pc;                                  // Instruction 0 PC
   logic [1-1:0] [31:1] i1_pc;                                  // Instruction 1 PC
   logic [1-1:0] i0_pc4;
   logic [1-1:0] i1_pc4;
   eh2_predecode_pkt_t [1-1:0] i0_predecode;
   eh2_predecode_pkt_t [1-1:0] i1_predecode;
   eh2_br_pkt_t [1-1:0] i0_br_p;                                    // Branch packet for I0.
   eh2_br_pkt_t [1-1:0] i1_br_p;                                    // Branch packet for I1.
   logic [1-1:0] [20-1:0] i0_bp_toffset; // target offset
   logic [1-1:0] [20-1:0] i1_bp_toffset; // target offset
   logic [1-1:0] [5:4]  i0_bp_index;  // BP index
   logic [1-1:0] [5-1:0]            i0_bp_fghr;   // BP FGHR
   logic [1-1:0] [9-1:0]           i0_bp_btag;   // BP tag

   logic [1-1:0] [5:4]  i1_bp_index;  // BP index
   logic [1-1:0] [5-1:0]            i1_bp_fghr;   // BP FGHR
   logic [1-1:0] [9-1:0]           i1_bp_btag;   // BP tag

   logic [1-1:0] [$clog2(32)-1:0] i0_bp_fa_index, i1_bp_fa_index;
   logic [3:0] [$clog2(32)-1:0]    ifu_bp_fa_index_f2;


   logic [1-1:0] [1:0] pmu_instr_aligned;                       // number of inst aligned this cycle
   logic [1-1:0]       pmu_align_stall;                         // aligner stalled this cycle
   logic [1-1:0] [15:0] i0_cinst;                               // 16b compress inst for i0
   logic [1-1:0] [15:0] i1_cinst;                               // 16b compress inst for i1
   logic [3:0]  ifu_bp_way_f2; // way indication; right justified
   logic  ifu_bp_kill_next_f2; // kill next fetch; taken target found
   logic [31:1] ifu_bp_btb_target_f2; //  predicted target PC
   logic [3:1]  ifu_bp_inst_mask_f2; // tell ic which valids to kill because of a taken branch; right justified

   logic [3:0]  ifu_bp_hist1_f2; // history counters for all 4 potential branches; right justified
   logic [3:0]  ifu_bp_hist0_f2; // history counters for all 4 potential branches; right justified
   logic [20-1:0] ifu_bp_poffset_f2; // predicted target
   logic [3:0]  ifu_bp_ret_f2; // predicted ret ; right justified
   logic [3:0]  ifu_bp_pc4_f2; // pc4 indication; right justified
   logic [3:0]  ifu_bp_valid_f2; // branch valid, right justified
   logic [5-1:0] ifu_bp_fghr_f2;

   logic btb_wr_stall, ifc_select_tid_bf;

     for (genvar i=0; i<1; i++) begin : ifc

        eh2_ifu_ifc_ctl  ifc (.clk           (active_thread_l2clk[i]),
                                         .tid               (1'(i)),
                                         .ic_write_stall(ic_write_stall_thr[i] | btb_wr_stall),
                                         .ifu_ic_mb_empty(ifu_ic_mb_empty_thr[i]),
                                         .ic_crit_wd_rdy(ic_crit_wd_rdy_thr[i]),
                                         .ifu_fb_consume1(fb_consume1[i]),
                                         .ifu_fb_consume2(fb_consume2[i]),
                                         .dec_tlu_flush_noredir_wb(dec_tlu_flush_noredir_wb[i]),
                                         .dec_tlu_flush_lower_wb(dec_tlu_flush_lower_wb[i]),
                                         .dec_tlu_flush_mp_wb(dec_tlu_flush_mp_wb[i]),
                                         .dec_tlu_flush_path_wb(dec_tlu_flush_path_wb[i]),
                                         .exu_flush_final(exu_flush_final[i]),
                                         .exu_flush_path_final(exu_flush_path_final[i]),
                                         .exu_flush_final_early(exu_flush_final_early[i]),
                                         .exu_flush_path_final_early(exu_flush_path_final_early[i]),

                                         .fetch_uncacheable_f1(fetch_uncacheable_f1[i]),
                                         .fetch_addr_bf(fetch_addr_bf[i]),
                                         .fetch_addr_f1(fetch_addr_f1[i]),
                                         .fetch_req_bf(fetch_req_bf[i]),
                                         .fetch_addr_f2(fetch_addr_f2[i]),
                                         .fetch_req_f1(fetch_req_f1[i]),
                                         .fetch_req_f1_raw(fetch_req_f1_raw[i]),
                                         .fetch_req_f2(fetch_req_f2[i]),
                                         .pmu_fetch_stall(ifu_pmu_fetch_stall[i]),
                                         .iccm_access_f1(iccm_access_f1[i]),
                                         .region_acc_fault_f1(region_acc_fault_f1[i]),
                                         .dma_access_ok(dma_access_ok[i]),
                                         .ready(ifc_ready[i]),
                                         .fetch_btb_rd_addr_f1(fetch_btb_rd_addr_f1[i]),
                                         .fetch_btb_rd_addr_p1_f1(fetch_btb_rd_addr_p1_f1[i]),
                                         .*
                                         );

     end // block: ifc
   logic [1:0] f1lost, f1lost_f, f1lost_set;
   logic       dma_iccm_stall_any_f, ifc_both_ready_f1;


   if (1 == 2) begin: genmtifc

      // SRAM arbs in BF to set up to the SRAM address flop. This causes problems with perf and fairness though. Fix below.

      localparam BTB_USE_SRAM=1;
      if(BTB_USE_SRAM) begin
        rvarbiter2 ifc_arbiter (
                                .clk(active_clk),
                                .ready(ifc_ready[1:0]),
                                .tid  (ifc_select_tid_bf),
                                .shift(ifc_fetch_req_bf & ~f1lost_f[ifc_select_tid_bf]),
                                .*
                                );

         assign ifc_fetch_req_bf = fetch_req_bf[ifc_select_tid_bf];

         // Track if we lose the pipeline while there was contention. Adjust the arb lru to compensate.
         assign f1lost_set[0] = ifc_both_ready_f1 & fetch_req_f1_raw[0] & (ic_write_stall_thr[0] | ic_dma_active | dma_iccm_stall_any_f);
         assign f1lost_set[1] = ifc_both_ready_f1 & fetch_req_f1_raw[1] & (ic_write_stall_thr[1] | ic_dma_active | dma_iccm_stall_any_f);

         // set when we lose due to IC/ICCM issues, clear when we successfully fetch (raw and qual'd match)
         assign f1lost[1:0] = f1lost_set[1:0] | (f1lost_f[1:0] & ~(fetch_req_f1_raw[1:0] & fetch_req_f1[1:0]));

         rvdff #(5) tid_ff (.*, .clk(active_clk),
                            .din({f1lost[1:0], ifc_select_tid_bf, dma_iccm_stall_any, &ifc_ready[1:0]}),
                            .dout({f1lost_f[1:0], ifc_select_tid_f1, dma_iccm_stall_any_f, ifc_both_ready_f1}));
      end
      else begin // not sram
        rvarbiter2 ifc_arbiter (
                                .clk(active_clk),
                                .ready(ifc_ready[1:0]),
                                .tid  (ifc_select_tid_f1),
                                .shift(ifc_fetch_req_f1),
                                .*
                             );
         assign ifc_fetch_req_bf = '0;
         assign ifc_select_tid_bf = 1'b0;
      end // else: !if(pt.BTB_USE_SRAM)
   end
   else begin
      assign ifc_select_tid_f1 = 1'b0;
      assign ifc_select_tid_bf = 1'b0;
   end


   assign ifc_fetch_uncacheable_f1 = fetch_uncacheable_f1[ifc_select_tid_f1];
   assign ifc_fetch_addr_f1[31:1]  = fetch_addr_f1[ifc_select_tid_f1];
   assign ifc_fetch_addr_bf[31:1]  = fetch_addr_bf[ifc_select_tid_bf];
   assign ifc_fetch_req_f1 = fetch_req_f1[ifc_select_tid_f1];
   assign ifc_fetch_req_f1_raw = fetch_req_f1_raw[ifc_select_tid_f1];

   assign ifc_fetch_btb_rd_addr_f1[5:4] = fetch_btb_rd_addr_f1[ifc_select_tid_f1];
   assign ifc_fetch_btb_rd_addr_p1_f1[5:4] = fetch_btb_rd_addr_p1_f1[ifc_select_tid_f1];

   assign ifc_iccm_access_f1 = iccm_access_f1[ifc_select_tid_f1];
   assign ifc_region_acc_fault_f1 = region_acc_fault_f1[ifc_select_tid_f1];

   assign ifc_fetch_req_f2 = fetch_req_f2[ifu_fetch_tid];

   assign ifc_dma_access_ok = &dma_access_ok[1-1:0];


   // SRAM BTB hookup
   logic btb_sram_rw;
   logic [1:0] [5:1]        btb_sram_rw_addr, btb_sram_rw_addr_f1;

   assign btb_wren = btb_sram_rw;
   assign btb_rden = ~btb_sram_rw;

   assign btb_rw_addr[0][5:1] = btb_sram_rw_addr[0];
   assign btb_rw_addr[1][5:1] = btb_sram_rw_addr[1];

   assign btb_rw_addr_f1[0][5:1] = btb_sram_rw_addr_f1[0];
   assign btb_rw_addr_f1[1][5:1] = btb_sram_rw_addr_f1[1];

   // branch predictor
   eh2_ifu_bp_ctl  bp (.*);



   assign ifu_fetch_data[63:0]  = ic_data_f2[63:0];
   assign ifu_fetch_val[3:0]    = ic_fetch_val_f2[3:0];

   // aligner

   // multithreaded signals



  for (genvar i=0; i<1; i++) begin : aln

     eh2_ifu_aln_ctl  aln (.clk               (active_thread_l2clk[i]),
                                      .ifu_fetch_val           ((ifu_fetch_tid==1'(i))?ifu_fetch_val[3:0]:4'b0),
                                      .ifu_fetch_data          ((ifu_fetch_tid==1'(i))?ifu_fetch_data[63:0]:64'b0),
                                      .ifu_fetch_pc            (fetch_addr_f2[i][31:1]),
                                      .ifu_bp_fghr_f2          ((ifu_fetch_tid==1'(i))?ifu_bp_fghr_f2[5-1:0]:{5{1'b0}}),
                                      .ifu_bp_btb_target_f2    ((ifu_fetch_tid==1'(i))?ifu_bp_btb_target_f2[31:1]:31'b0),
                                      .ifu_bp_poffset_f2       ((ifu_fetch_tid==1'(i))?ifu_bp_poffset_f2[20-1:0]:{20{1'b0}}),
                                      .ifu_bp_hist0_f2         ((ifu_fetch_tid==1'(i))?ifu_bp_hist0_f2[3:0]:4'b0),
                                      .ifu_bp_hist1_f2         ((ifu_fetch_tid==1'(i))?ifu_bp_hist1_f2[3:0]:4'b0),
                                      .ifu_bp_pc4_f2           ((ifu_fetch_tid==1'(i))?ifu_bp_pc4_f2[3:0]:4'b0),
                                      .ifu_bp_way_f2           ((ifu_fetch_tid==1'(i))?ifu_bp_way_f2[3:0]:4'b0),
                                      .ifu_bp_valid_f2         ((ifu_fetch_tid==1'(i))?ifu_bp_valid_f2[3:0]:4'b0),
                                      .ifu_bp_ret_f2           ((ifu_fetch_tid==1'(i))?ifu_bp_ret_f2[3:0]:4'b0),
                                      .iccm_rd_ecc_double_err  ((ifu_fetch_tid==1'(i))?iccm_rd_ecc_double_err[3:0]:4'b0),
                                      .ic_access_fault_f2      ((ifu_fetch_tid==1'(i))?ic_access_fault_f2[3:0]:4'b0),
                                      .ic_access_fault_type_f2 ((ifu_fetch_tid==1'(i))?ic_access_fault_type_f2[1:0]:2'b0),

                                      .ifu_async_error_start   (ifu_async_error_start[i]),

                                      .dec_i1_cancel_e1  (dec_i1_cancel_e1[i]),
                                      .dec_ib3_valid_d   (dec_ib3_valid_d[i]),
                                      .dec_ib2_valid_d   (dec_ib2_valid_d[i]),
                                      .exu_flush_final   (exu_flush_final[i]),
                                      .i0_valid          (i0_valid[i]),
                                      .i1_valid          (i1_valid[i]),
                                      .i0_icaf           (i0_icaf[i]),
                                      .i0_icaf_type      (i0_icaf_type[i]),
                                      .i0_icaf_second    (i0_icaf_second[i]),
                                      .i0_dbecc          (i0_dbecc[i]),
                                      .i0_instr          (i0_instr[i]),
                                      .i1_instr          (i1_instr[i]),
                                      .i0_pc             (i0_pc[i]),
                                      .i1_pc             (i1_pc[i]),
                                      .i0_pc4            (i0_pc4[i]),
                                      .i1_pc4            (i1_pc4[i]),
                                      .i0_predecode      (i0_predecode[i]),
                                      .i1_predecode      (i1_predecode[i]),
                                      .fb_consume1       (fb_consume1[i]),
                                      .fb_consume2       (fb_consume2[i]),
                                      .i0_br_p           (i0_br_p[i]),
                                      .i1_br_p           (i1_br_p[i]),
                                      .i0_bp_index       (i0_bp_index[i]),
                                      .i0_bp_toffset     (i0_bp_toffset[i]),
                                      .i0_bp_fghr        (i0_bp_fghr[i]),
                                      .i0_bp_btag        (i0_bp_btag[i]),
                                      .i1_bp_index       (i1_bp_index[i]),
                                      .i1_bp_toffset     (i1_bp_toffset[i]),
                                      .i1_bp_fghr        (i1_bp_fghr[i]),
                                      .i1_bp_btag        (i1_bp_btag[i]),
                                      .i0_bp_fa_index(i0_bp_fa_index[i]),
                                      .i1_bp_fa_index(i1_bp_fa_index[i]),
                                      .pmu_instr_aligned (pmu_instr_aligned[i]),
                                      .pmu_align_stall   (pmu_align_stall[i]),
                                      .i0_cinst          (i0_cinst[i]),
                                      .i1_cinst          (i1_cinst[i]),
                                      .*);
  end






      assign dec_tlu_i0_commit_cmt_thr[1-1:0] =   dec_tlu_i0_commit_cmt[1-1:0] ;

      assign ifu_i0_valid [1-1:0] =     i0_valid[1-1:0];
      assign ifu_i1_valid [1-1:0] =     i1_valid[1-1:0];
      assign ifu_i0_icaf  [1-1:0] =     i0_icaf[1-1:0];
      assign ifu_i0_icaf_type [1-1:0] = i0_icaf_type[1-1:0];
      assign ifu_i0_icaf_second   [1-1:0] = i0_icaf_second[1-1:0];
      assign ifu_i0_dbecc [1-1:0] =     i0_dbecc[1-1:0];
      assign ifu_i0_instr [1-1:0] =     i0_instr[1-1:0];
      assign ifu_i1_instr [1-1:0] =     i1_instr[1-1:0];
      assign ifu_i0_pc    [1-1:0] =     i0_pc[1-1:0];
      assign ifu_i1_pc    [1-1:0] =     i1_pc[1-1:0];
      assign ifu_i0_pc4   [1-1:0] =     i0_pc4[1-1:0];
      assign ifu_i1_pc4   [1-1:0] =     i1_pc4[1-1:0];
      assign ifu_i0_predecode [1-1:0] = i0_predecode[1-1:0];
      assign ifu_i1_predecode [1-1:0] = i1_predecode[1-1:0];
      assign i0_brp [1-1:0] =           i0_br_p[1-1:0];
      assign i1_brp [1-1:0] =           i1_br_p[1-1:0];
      assign ifu_i0_bp_index [1-1:0] =  i0_bp_index[1-1:0];
      assign ifu_i0_bp_fghr  [1-1:0] =  i0_bp_fghr[1-1:0];
      assign ifu_i0_bp_btag  [1-1:0] =  i0_bp_btag[1-1:0];
      assign ifu_i0_bp_toffset [1-1:0] =  i0_bp_toffset[1-1:0];
      assign ifu_i1_bp_index [1-1:0] =  i1_bp_index[1-1:0];
      assign ifu_i1_bp_fghr  [1-1:0] =  i1_bp_fghr[1-1:0];
      assign ifu_i1_bp_btag  [1-1:0] =  i1_bp_btag[1-1:0];
      assign ifu_i1_bp_toffset [1-1:0] =  i1_bp_toffset[1-1:0];
      assign ifu_i0_cinst [1-1:0] =     i0_cinst[1-1:0];
      assign ifu_i1_cinst [1-1:0] =     i1_cinst[1-1:0];

     assign  ifu_i0_bp_fa_index[1-1:0] =  i0_bp_fa_index[1-1:0];
     assign  ifu_i1_bp_fa_index[1-1:0] =  i1_bp_fa_index[1-1:0];


   assign ifu_pmu_instr_aligned[1-1:0] = pmu_instr_aligned[1-1:0];

   assign ifu_pmu_align_stall[1-1:0] = pmu_align_stall[1-1:0];

   assign fetch_tid_f1 = ifc_select_tid_f1;


   // icache
   eh2_ifu_mem_ctl  mem_ctl
     (.*,
      .fetch_addr_f1         (ifc_fetch_addr_f1),
      .fetch_tid_f2          (ifu_fetch_tid),
      .dec_tlu_i0_commit_cmt (dec_tlu_i0_commit_cmt_thr)
      );



   // Performance debug info
   //
   //



















































































































endmodule // ifu
