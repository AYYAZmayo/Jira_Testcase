// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0

// This file is auto-generated.





// This is to prevent AscentLint warnings in the generated
// abstract prim wrapper. These warnings occur due to the .*
// use. TODO: we may want to move these inline waivers
// into a separate, generated waiver file for consistency.
//ri lint_check_off OUTPUT_NOT_DRIVEN INPUT_NOT_READ
module prim_flop_en

#(

  parameter int               Width      = 1,
  parameter logic [Width-1:0] ResetValue = 0

) (
  input                    clk_i,
  input                    rst_ni,
  input                    en_i,
  input        [Width-1:0] d_i,
  output logic [Width-1:0] q_o
);
  parameter prim_pkg::impl_e Impl = prim_pkg::ImplGeneric;

if (Impl == prim_pkg::ImplXilinx) begin : gen_xilinx
    prim_xilinx_flop_en #(
      .ResetValue(ResetValue),
      .Width(Width)
    ) u_impl_xilinx (
      .*
    );
end else begin : gen_generic
    prim_generic_flop_en #(
      .ResetValue(ResetValue),
      .Width(Width)
    ) u_impl_generic (
      .*
    );
end

endmodule
//ri lint_check_on OUTPUT_NOT_DRIVEN INPUT_NOT_READ 
