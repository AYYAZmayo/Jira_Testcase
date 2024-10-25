//Verilog generated by VPR  from post-place-and-route implementation
module full_adder (
    input \a ,
    input \b ,
    input \ci ,
    output \s ,
    output \co 
);

    //Wires
    wire \a_output_0_0 ;
    wire \b_output_0_0 ;
    wire \ci_output_0_0 ;
    wire \lut_s_output_0_0 ;
    wire \lut_co_output_0_0 ;
    wire \lut_co_input_0_1 ;
    wire \lut_s_input_0_1 ;
    wire \lut_co_input_0_4 ;
    wire \lut_s_input_0_4 ;
    wire \lut_co_input_0_0 ;
    wire \lut_s_input_0_0 ;
    wire \s_input_0_0 ;
    wire \co_input_0_0 ;

    //IO assignments
    assign \s  = \s_input_0_0 ;
    assign \co  = \co_input_0_0 ;
    assign \a_output_0_0  = \a ;
    assign \b_output_0_0  = \b ;
    assign \ci_output_0_0  = \ci ;

    //Interconnect
    fpga_interconnect \routing_segment_a_output_0_0_to_lut_co_input_0_1  (
        .datain(\a_output_0_0 ),
        .dataout(\lut_co_input_0_1 )
    );

    fpga_interconnect \routing_segment_a_output_0_0_to_lut_s_input_0_1  (
        .datain(\a_output_0_0 ),
        .dataout(\lut_s_input_0_1 )
    );

    fpga_interconnect \routing_segment_b_output_0_0_to_lut_co_input_0_4  (
        .datain(\b_output_0_0 ),
        .dataout(\lut_co_input_0_4 )
    );

    fpga_interconnect \routing_segment_b_output_0_0_to_lut_s_input_0_4  (
        .datain(\b_output_0_0 ),
        .dataout(\lut_s_input_0_4 )
    );

    fpga_interconnect \routing_segment_ci_output_0_0_to_lut_co_input_0_0  (
        .datain(\ci_output_0_0 ),
        .dataout(\lut_co_input_0_0 )
    );

    fpga_interconnect \routing_segment_ci_output_0_0_to_lut_s_input_0_0  (
        .datain(\ci_output_0_0 ),
        .dataout(\lut_s_input_0_0 )
    );

    fpga_interconnect \routing_segment_lut_s_output_0_0_to_s_input_0_0  (
        .datain(\lut_s_output_0_0 ),
        .dataout(\s_input_0_0 )
    );

    fpga_interconnect \routing_segment_lut_co_output_0_0_to_co_input_0_0  (
        .datain(\lut_co_output_0_0 ),
        .dataout(\co_input_0_0 )
    );


    //Cell instances
    LUT_K #(
        .K(5),
        .LUT_MASK(32'b00000000000011100000000000001000)
    ) \lut_co  (
        .in({
            \lut_co_input_0_4 ,
            1'b0,
            1'b0,
            \lut_co_input_0_1 ,
            \lut_co_input_0_0 
         }),
        .out(\lut_co_output_0_0 )
    );

    LUT_K #(
        .K(5),
        .LUT_MASK(32'b00000000000010010000000000000110)
    ) \lut_s  (
        .in({
            \lut_s_input_0_4 ,
            1'b0,
            1'b0,
            \lut_s_input_0_1 ,
            \lut_s_input_0_0 
         }),
        .out(\lut_s_output_0_0 )
    );


endmodule
