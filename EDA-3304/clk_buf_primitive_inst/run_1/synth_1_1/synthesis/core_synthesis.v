/* Generated by Yosys 0.44 (git sha1 7a4a3768c, g++ 11.2.1 -fPIC -O3) */

module clk_buf_primitive_inst(clock_input, ibuf_enable, clock_output);
  input clock_input;
  output clock_output;
  input ibuf_enable;
  wire _0_;
  wire _1_;
  wire clock_input;
  wire clock_output;
  wire ibuf_enable;
  wire wire1;
  wire wire2;
  wire wire_out_clk;
  DFFRE _2_ (
    .C(wire1),
    .D(wire2),
    .E(1'b1),
    .Q(wire_out_clk),
    .R(1'b1)
  );
  O_FAB _3_ (
    .I(wire_out_clk),
    .O(_0_)
  );
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) _4_ (
    .EN(1'b1),
    .I(clock_input),
    .O(wire2)
  );
  I_BUF #(
    .WEAK_KEEPER("NONE")
  ) _5_ (
    .EN(1'b1),
    .I(ibuf_enable),
    .O(_1_)
  );
  O_BUFT _6_ (
    .I(_0_),
    .O(clock_output),
    .T(1'b1)
  );
  CLK_BUF clk_buf_inst (
    .I(wire2),
    .O(wire1)
  );
endmodule
