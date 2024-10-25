module rom_post_route_tb;
  bit clk;
reg we;
reg [8:0] address;
reg [7:0] di;
  wire [7:0] data,data_netlist;

  integer mismatch=0;
  integer i=0;
  
  rom golden (.clk(clk),.address(address),.data(data));
  rom_post_route netlist (.clk(clk),
                          .address(address),
                          // [9],
                          // address[8],
                          // address[7],
                          // address[6],
                          // address[5],
                          // address[4],
                          // address[3],
                          // address[2],
                          // address[1],
                          // address[0],
                          // data_netlist[7],
                          // data_netlist[6],
                          // data_netlist[5],
                          // data_netlist[4],
                          // data_netlist[3],
                          // data_netlist[2],
                          // data_netlist[1],
                          .data(data_netlist)
                          );

  always #1 clk = !clk;
  
  initial begin
    {clk, we, address, di} = 0;
    for (i = 0; i <512; i = i+1 )begin
      @(negedge clk); 
      address = i;
      compare();
    end
	  
  	if(mismatch == 0)
      $display("\n**** All Comparison Matched ***\nSimulation Passed");
    else
      $display("%0d comparison(s) mismatched\nError: Simulation Failed", mismatch);
    $finish;
  end

  task compare();
  $display("*** Comparing ***");
   if(data !== data_netlist) begin
     $display("Data Mismatch. Golden: %0d, Netlist: %0d, Time: %0t", data, data_netlist, $time);
     mismatch = mismatch+1;
  end
   else
       $display("Data Matched. Golden: %0d, Netlist: %0d, Time: %0t", data, data_netlist, $time);
  endtask
  
  initial begin
    $dumpfile("tb.vcd");
    $dumpvars;
end

endmodule
