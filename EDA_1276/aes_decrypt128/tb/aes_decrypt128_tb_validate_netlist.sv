////////////////////////////////////////////////////////////////// ////
//// 																////
//// AES Decryption Core for FPGA									////
//// 																////
//// This file is part of the AES Decryption Core for FPGA project 	////
//// http://www.opencores.org/cores/xxx/ 							////
//// 																////
//// Description 													////
//// Implementation of  AES Decryption Core for FPGA according to 	////
//// core specification document.		 							////
//// 																////
//// To Do: 														////
//// - 																////
//// 																////
//// Author(s): 													////
//// - scheng, schengopencores@opencores.org 						////
//// 																////
//////////////////////////////////////////////////////////////////////
//// 																////
//// Copyright (C) 2009 Authors and OPENCORES.ORG 					////
//// 																////
//// This source file may be used and distributed without 			////
//// restriction provided that this copyright statement is not 		////
//// removed from the file and that any derivative work contains 	////
//// the original copyright notice and the associated disclaimer. 	////
//// 																////
//// This source file is free software; you can redistribute it 	////
//// and/or modify it under the terms of the GNU Lesser General 	////
//// Public License as published by the Free Software Foundation; 	////
//// either version 2.1 of the License, or (at your option) any 	////
//// later version. 												////
//// 																////
//// This source is distributed in the hope that it will be 		////
//// useful, but WITHOUT ANY WARRANTY; without even the implied 	////
//// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 		////
//// PURPOSE. See the GNU Lesser General Public License for more 	////
//// details. 														////
//// 																////
//// You should have received a copy of the GNU Lesser General 		////
//// Public License along with this source; if not, download it 	////
//// from http://www.opencores.org/lgpl.shtml 						////
//// 																//// ///
///////////////////////////////////////////////////////////////////
////																////
//// Testbench for 128-bit decryption								////
////																////
////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps

// Uncomment the following line if you're targetting Xilinx FPGA
//`define XILINX 1

// generic_muxfx.v defines a generic 2-to-1 MUX. This file is used to provide
// a generic definition of MUXF7 and MUXF8 in case you are not targetting Xilinx.
// When targetting Xilinx, skip this file to allow the simulator to locate the
// MUXF7 and MUXF8 in the Xilinx unisim library.
// `ifndef XILINX
// `include "../generic/generic_muxfx.v"
// `endif

// `include "InvSbox.sv"
// `include "InvSubBytes.sv"
// `include "InvShiftRows.sv"
// `include "InvAddRoundKey.sv"
// `include "gfmul.sv"
// `include "InvMixCol_slice.sv"
// `include "InvMixColumns.sv"
// `include "decrypt.sv"
// `include "KschBuffer.sv"
// `include "Sbox.sv"
// `include "SubWord.sv"
// `include "RotWord.sv"
// `include "KeyExpand128.sv"
`include "simlib.v"
`include "ufifo_ctl.v"
`include "TDP18K_FIFO.v"
`include "sram1024x18.v"
`include "dsp_sim.v"
`include "cells_sim.v"
`include "brams_sim.v"
`include "aes_decrypt128_post_synth.v"
`include "aes_beh_model.sv"

`define PERIOD 10
`define T (`PERIOD/2)
`define Tcko 1

`define WAIT_N_CLK(num_of_clk) repeat(num_of_clk) @(posedge clock0); #(`Tcko)

module aes_decrypt128_tb;

	logic	[0:127]	dt;
	logic	ct_vld;
	wire	ct_rdy;

	// logic	[0:127]	kt;
	logic	kt_vld;
	wire	kt_rdy;
	
	wire	[0:127]	pt;
	wire	pt_vld;
	
	logic	clock0;
	logic	rst;
	
	int	sample_vec_failed = 0;
	int	back_to_back_failed = 0;
	int	RandVec_128_failed = 0;
	int	failed = 0;
	
	aes128_decrypt_t ref_model;
	
	logic	[0:127]	tmp_kt;
	logic	[0:127]	tmp_ct;

	`include "decrypt_vec.sv"
	
	task set_kt(input [0:127] x);
		dt = x;
		kt_vld = 1;
		`WAIT_N_CLK(1);
		kt_vld = 0;
		`WAIT_N_CLK(1);
	endtask
	
	task set_ct(input [0:127] x);
		dt = x;
		ct_vld = 1;
		`WAIT_N_CLK(1);
		ct_vld = 0;
		`WAIT_N_CLK(1);
	endtask
	
	function logic [0:127] rand128;
		rand128 = {$random, $random, $random, $random};
	endfunction
	
	always
	begin
		clock0 <= 1;
		#(`T);
		clock0 <= 0;
		#(`T);
	end
	
	aes_decrypt128 uut(
		.clock0(clock0),
   		.ct_rdy(ct_rdy),
  		.ct_vld(ct_vld),
  		.dt(dt),
   		.kt_rdy(kt_rdy),
  		.kt_vld(kt_vld),
   		.pt(pt),
  		.pt_vld(pt_vld),
  		.rst(rst)
	);
	
	initial begin
		ref_model = new;
		
		rst = 1;
		kt_vld = 0;
		ct_vld = 0;
		`WAIT_N_CLK(3);
		
		rst = 0;
		`WAIT_N_CLK(1);

		// FIPS-197 sample vector test. FIPS-197 appendix C.1.
				
		$display("FIPS-197 sample vector test");
		$display("kt=000102030405060708090a0b0c0d0e0f ct=69c4e0d86a7b0430d8cdb78070b4c55a");
		wait (kt_rdy);
		set_kt(128'h000102030405060708090a0b0c0d0e0f);
		wait (ct_rdy);
		set_ct(128'h69c4e0d86a7b0430d8cdb78070b4c55a);
		wait (pt_vld);
		$display("pt=%h expected=00112233445566778899aabbccddeeff",pt);
		if (pt != 128'h00112233445566778899aabbccddeeff)
		begin
			$display("***Mismatch");
			sample_vec_failed = 1;
			failed = 1;
		end
		$display("FIPS-197 sample vector test finished : %s", (sample_vec_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);
		
		// Back-to-back ciphertext test.
		// Two ciphertext are applied back-to-back with no dead cycle in between.
		
		$display("\nBack-to-back ciphertext test");
		tmp_ct = rand128();
		tmp_kt = rand128();
		ref_model.KeyExpand(tmp_kt);
		ref_model.LoadCt(tmp_ct);
		ref_model.run(0);
		
		wait (kt_rdy);
		set_kt(tmp_kt);
		wait (ct_rdy);
		set_ct(tmp_ct);
		wait (pt_vld);
		$display("kt=%h ct=%h pt=%h expected=%h",tmp_kt,tmp_ct,pt,ref_model.GetState());
		if (pt != ref_model.GetState())
		begin
			$display("***Mismatch");
			back_to_back_failed = 1;
			failed = 1;
		end
		
		tmp_ct = rand128();
		ref_model.LoadCt(tmp_ct);
		ref_model.run(0);
		wait (ct_rdy);
		set_ct(tmp_ct);
		wait (pt_vld);
		$display("kt=%h ct=%h pt=%h expected=%h",tmp_kt,tmp_ct,pt,ref_model.GetState());
		if (pt != ref_model.GetState())
		begin
			$display("***Mismatch");
			back_to_back_failed = 1;
			failed = 1;
		end
		
		$display("Back-to-back ciphertext test finished : %s", (back_to_back_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);
		
		// ECB-AES128.Decrypt sample vector test. SP800-38a appendix F,1.2
		
		$display("\nECB-AES128.Decrypt sample vector test");
		for (int k=0; k<`ECB_DECRYPT_128_VEC_SIZE; k++)
		begin
			set_kt(ECBDecrypt_128_kt);
			wait(ct_rdy);
			set_ct(ECBDecrypt_128_ct[k]);
			wait(pt_vld);
			$display("kt=%h ct=%h pt=%h expected=%h",ECBDecrypt_128_kt,ECBDecrypt_128_ct[k],pt,ECBDecrypt_128_pt[k]);
			if (pt != ECBDecrypt_128_pt[k])
			begin
				$display("***Mismatch");
				ECBDecrypt_128_failed = 1;
			end
		end
		
		$display("ECB-AES128.Decrypt sample vector test finished : %s", (ECBDecrypt_128_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);
		
		// GFSbox Known Answer Test. AESAVS appendix B.1.
		
		$display("\nGFSbox Known Answer Test");
		for (int k=0; k<`GFSbox_128_VEC_SIZE; k++)
		begin
			set_kt(GFSbox_128_kt);
			wait(ct_rdy);
			set_ct(GFSbox_128_ct[k]);
			wait(pt_vld);
			$display("kt=%h ct=%h pt=%h expected=%h",GFSbox_128_kt,GFSbox_128_ct[k],pt,GFSbox_128_pt[k]);
			if (pt != GFSbox_128_pt[k])
			begin
				$display("***Mismatch");
				GFSbox_128_failed = 1;
			end
		end
		
		$display("GFSbox test finished : %s", (GFSbox_128_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);
		
		// KeySbox Known Answer Test. AESAVS appendix C.1.
		
		$display("\nKeySbox Known Answer Test");
		for (int k=0; k<`KEYSBOX_128_VEC_SIZE; k++)
		begin
			set_kt(KeySbox_128_kt[k]);
			wait(ct_rdy);
			set_ct(KeySbox_128_ct[k]);
			wait(pt_vld);
			$display("kt=%h ct=%h pt=%h expected=%h",KeySbox_128_kt[k],KeySbox_128_ct[k],pt,KeySbox_128_pt);
			if (pt != KeySbox_128_pt[k])
			begin
				$display("***Mismatch");
				KeySbox_128_failed = 1;
			end
		end
		
		$display("KeySbox test finished : %s", (KeySbox_128_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);
		
		// VarTxt Known Answer Test. AESAVS appendix D.1.
		
		$display("\nVarTxt Known Answer Test");
		for (int k=0; k<`VARTXT_128_VEC_SIZE; k++)
		begin
			set_kt(VarTxt_128_kt);
			wait(ct_rdy);
			set_ct(VarTxt_128_ct[k]);
			wait(pt_vld);
			$display("kt=%h ct=%h pt=%h expected=%h",VarTxt_128_kt,VarTxt_128_ct[k],pt,VarTxt_128_pt[k]);
			if (pt != VarTxt_128_pt[k])
			begin
				$display("***Mismatch");
				VarTxt_128_failed = 1;
			end
		end
		
		$display("VarTxt Known Answer Test finished : %s", (VarTxt_128_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);
		
		// VarKey Known Answer Test. AESAVS appendix E.1.
		
		$display("\nVarKey Known Answer Test");
		for (int k=0; k<`VARKEY_128_VEC_SIZE; k++)
		begin
			set_kt(VarKey_128_kt[k]);
			wait(ct_rdy);
			set_ct(VarKey_128_ct[k]);
			wait(pt_vld);
			$display("kt=%h ct=%h pt=%h expected=%h",VarKey_128_kt[k],VarKey_128_ct[k],pt,VarKey_128_pt);
			if (pt != VarKey_128_pt)
			begin
				$display("***Mismatch");
				VarKey_128_failed = 1;
			end
		end
		
		$display("VarKey Known Answer Test finished : %s", (VarKey_128_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);

		// Random vector test against golden model.
		
		$display("\nRandom Vector Test");
		for (int k=0; k<1000; k++)
		begin
			tmp_ct = rand128();
			tmp_kt = rand128();
			ref_model.KeyExpand(tmp_kt);
			ref_model.LoadCt(tmp_ct);
			ref_model.run(0);
		
			wait (kt_rdy);
			set_kt(tmp_kt);
			wait (ct_rdy);
			set_ct(tmp_ct);
			wait (pt_vld);
			$display("kt=%h ct=%h pt=%h expected=%h",tmp_kt,tmp_ct,pt,ref_model.GetState());
			if (pt != ref_model.GetState())
			begin
				$display("***Mismatch");
				RandVec_128_failed = 1;
			failed = 1;
			end
		end
		
		$display("Random Vector Test finished : %s", (RandVec_128_failed)? "FAILED" : "PASSED");
		`WAIT_N_CLK(2);
		
		$display("\nAll tests finished : %s", (failed)? "FAILED" : "OK");
		#10;
		$finish;
	end

endmodule
