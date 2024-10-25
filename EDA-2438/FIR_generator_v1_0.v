// -----------------------------------------------------------------------------
// Auto-Generated by:        __   _ __      _  __
//                          / /  (_) /____ | |/_/
//                         / /__/ / __/ -_)>  <
//                        /____/_/\__/\__/_/|_|
//                     Build your hardware, easily!
//                   https://github.com/enjoy-digital/litex
//
// Filename   : FIR_generator_v1_0.v
// Device     : gemini
// LiteX sha1 : a6d9955c
// Date       : 2024-01-25 17:17:57
//------------------------------------------------------------------------------
// This file is Copyright (c) 2022 RapidSilicon
//--------------------------------------------------------------------------------

`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Module
//------------------------------------------------------------------------------

module FIR_generator #(
	parameter IP_TYPE 		= "FIRGEN",
	parameter IP_VERSION 	= 32'h1, 
	parameter IP_ID 		= 32'h5915479
)
(
    input  wire   [17:0] data_in,
    output reg    [26:0] data_out,
    output wire          ready,
    input  wire          clk,
    input  wire          rst
);


//------------------------------------------------------------------------------
// Signals
//------------------------------------------------------------------------------

wire          sys_clk;
wire          sys_rst;
wire          fast_clk;
wire          fast_rst;
wire   [17:0] data_in_1;
wire   [26:0] data_out_1;
reg     [2:0] count = 3'd0;
wire          ready_1;
reg    [19:0] sel_coeff = 20'd0;
reg    [19:0] COEFF_0 = 20'd40;
reg    [19:0] COEFF_1 = 20'd68;
reg    [19:0] COEFF_2 = 20'd46;
reg    [19:0] COEFF_3 = 20'd31;
reg    [19:0] COEFF_4 = 20'd97;
reg    [19:0] COEFF_5 = 20'd64;
wire    [2:0] feedback;
wire   [37:0] dsp_out;
reg    [17:0] shift_reg0 = 18'd0;
reg    [17:0] shift_reg1 = 18'd0;
reg    [17:0] shift_reg2 = 18'd0;
reg    [17:0] shift_reg3 = 18'd0;
reg    [17:0] shift_reg4 = 18'd0;
reg    [17:0] shift_reg5 = 18'd0;
reg           ready_flop = 1'd0;
reg    [17:0] dsp_in = 18'd0;
wire   [26:0] dout_reg;

//------------------------------------------------------------------------------
// Combinatorial Logic
//------------------------------------------------------------------------------

assign data_in_1 = data_in;
assign ready = ready_1;
assign sys_clk = clk;
assign sys_rst = rst;
always @(*) begin
    sel_coeff <= 20'd0;
    if ((count == 1'd0)) begin
        sel_coeff <= COEFF_5;
    end
    if ((count == 1'd1)) begin
        sel_coeff <= COEFF_0;
    end
    if ((count == 2'd2)) begin
        sel_coeff <= COEFF_1;
    end
    if ((count == 2'd3)) begin
        sel_coeff <= COEFF_2;
    end
    if ((count == 3'd4)) begin
        sel_coeff <= COEFF_3;
    end
    if ((count == 3'd5)) begin
        sel_coeff <= COEFF_4;
    end
end
assign data_out_1 = ((feedback == 1'd1) ? dsp_out[26:0] : dout_reg);
assign dout_reg = data_out_1;
assign fast_rst = sys_rst;
always @(*) begin
    dsp_in <= 18'd0;
    if (ready_1) begin
        if ((count == 1'd0)) begin
            dsp_in <= shift_reg5;
        end
    end
    if (ready_1) begin
        if ((count == 1'd1)) begin
            dsp_in <= shift_reg0;
        end
    end
    if (ready_1) begin
        if ((count == 2'd2)) begin
            dsp_in <= shift_reg1;
        end
    end
    if (ready_1) begin
        if ((count == 2'd3)) begin
            dsp_in <= shift_reg2;
        end
    end
    if (ready_1) begin
        if ((count == 3'd4)) begin
            dsp_in <= shift_reg3;
        end
    end
    if (ready_1) begin
        if ((count == 3'd5)) begin
            dsp_in <= shift_reg4;
        end
    end
end
assign feedback = ((count == 1'd0) ? 3'd1 : 3'd0);


//------------------------------------------------------------------------------
// Synchronous Logic
//------------------------------------------------------------------------------

always @(posedge fast_clk) begin
    if (ready_flop) begin
        count <= (count - 1'd1);
        if ((count == 1'd0)) begin
            count <= 3'd5;
        end
    end
    if (fast_rst) begin
        count <= 3'd0;
    end
end

always @(posedge sys_clk) begin
    data_out <= data_out_1;
    ready_flop <= ready_1;
    if (ready_1) begin
        shift_reg0 <= data_in_1;
    end
    if (ready_1) begin
        shift_reg1 <= shift_reg0;
    end
    if (ready_1) begin
        shift_reg2 <= shift_reg1;
    end
    if (ready_1) begin
        shift_reg3 <= shift_reg2;
    end
    if (ready_1) begin
        shift_reg4 <= shift_reg3;
    end
    if (ready_1) begin
        shift_reg5 <= shift_reg4;
    end
    if (sys_rst) begin
        shift_reg0 <= 18'd0;
        shift_reg1 <= 18'd0;
        shift_reg2 <= 18'd0;
        shift_reg3 <= 18'd0;
        shift_reg4 <= 18'd0;
        shift_reg5 <= 18'd0;
        ready_flop <= 1'd0;
        data_out <= 27'd0;
    end
end


//------------------------------------------------------------------------------
// Specialized Logic
//------------------------------------------------------------------------------

DSP38 #(
	.DSP_MODE("MULTIPLY_ACCUMULATE"),
	.INPUT_REG_EN("FALSE"),
	.OUTPUT_REG_EN("FALSE")
) DSP38 (
	.A(sel_coeff),
	.B(dsp_in),
	.CLK(fast_clk),
	.FEEDBACK(feedback),
	.LOAD_ACC(1'd1),
	.RESET(sys_rst),
	.ROUND(1'd0),
	.SATURATE(1'd1),
	.SHIFT_RIGHT(6'd0),
	.SUBTRACT(1'd0),
	.UNSIGNED_A(1'd1),
	.UNSIGNED_B(1'd1),
	.Z(dsp_out)
);

PLL #(
	.PLL_DIV(2'd3),
	.PLL_MULT(5'd18)
) PLL (
	.CLK_IN(sys_clk),
	.PLL_EN((~sys_rst)),
	.LOCK(ready_1),
	.SERDES_FAST_CLK(fast_clk)
);

endmodule

// -----------------------------------------------------------------------------
//  Auto-Generated by LiteX on 2024-01-25 17:17:57.
//------------------------------------------------------------------------------
