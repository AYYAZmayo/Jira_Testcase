
module co_sim_ram_simple_dp_synch_rf_1024x32;

    reg clk, we,re;
    reg [9:0] read_addr, write_addr;
    reg [31:0] din;
    wire [31:0] dout, dout_net;

    integer mismatch=0;
    reg [6:0]cycle, i;

    ram_simple_dp_synch_rf_1024x32 golden(.*);
    ram_simple_dp_synch_rf_1024x32_post_synth netlist(.*, .dout(dout_net));


    always #10 clk = ~clk;

    initial begin
    {clk, we, re, read_addr, write_addr, din, cycle, i} = 0;


    repeat (1) @ (negedge clk);
    for (integer i=0; i<1024; i=i+1)begin
        repeat (1) @ (negedge clk)
        read_addr <= i; write_addr <= i; we <=1'b1; re<=1'b0; din<= $random;
        cycle = cycle +1;
        #1;
        compare(cycle);

    end

    for (integer i=0; i<1024; i=i+1)begin
        repeat (1) @ (negedge clk)
        read_addr <= i; write_addr <= i; we <=0; re<=1'b1;
        cycle = cycle +1;
        #1;
        compare(cycle);

    end

    for (integer i=0; i<1024; i=i+1)begin
        repeat (1) @ (negedge clk)
        read_addr <= $random; write_addr <= i; we <=1'b1; re<=1'b0; din<= $random;
        cycle = cycle +1;
        #1;
        compare(cycle);

    end

    for (integer i=0; i<1024; i=i+1)begin
        repeat (1) @ (negedge clk)
        read_addr <= i; we <=0; re<=1'b1;
        cycle = cycle +1;
        #1;
        compare(cycle);

    end
    if(mismatch == 0)
        $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
        $display("%0d comparison(s) mismatched\nSimulation Failed", mismatch);
    

    repeat (10) @(negedge clk); $finish;
    end

    task compare(input integer cycle);
    //$display("\n Comparison at cycle %0d", cycle);
    if(dout !== dout_net) begin
        $display("dout mismatch. Golden: %0h, Netlist: %0h, Time: %0t", dout, dout_net,$time);
        mismatch = mismatch+1;
    end
    
    endtask


    initial begin
        $dumpfile("tb.vcd");
        $dumpvars;
    end
endmodule