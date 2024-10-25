module soc_fpga_intf_axi_m0 (

    input  [31:0] M0_ARADDR,
    input  [1:0]  M0_ARBURST,
    input  [3:0]  M0_ARCACHE,
    input  [3:0]  M0_ARID,
    input  [2:0]  M0_ARLEN,
    input         M0_ARLOCK,
    input  [2:0]  M0_ARPROT,
    output        M0_ARREADY,
    input  [2:0]  M0_ARSIZE,
    input         M0_ARVALID,
    input  [31:0] M0_AWADDR,
    input  [1:0]  M0_AWBURST,
    input  [3:0]  M0_AWCACHE,
    input  [3:0]  M0_AWID,
    input  [2:0]  M0_AWLEN,
    input         M0_AWLOCK,
    input  [2:0]  M0_AWPROT,
    output        M0_AWREADY,
    input  [2:0]  M0_AWSIZE,
    input         M0_AWVALID,
    output [3:0]  M0_BID,
    input         M0_BREADY,
    output [1:0]  M0_BRESP,
    output        M0_BVALID,
    output [63:0] M0_RDATA,
    output [3:0]  M0_RID,
    output        M0_RLAST,
    input         M0_RREADY,
    output [1:0]  M0_RRESP,
    output        M0_RVALID,
    input  [63:0] M0_WDATA,
    input         M0_WLAST,
    output        M0_WREADY,
    input  [7:0]  M0_WSTRB,
    input         M0_WVALID,
    input         M0_ACLK,
    output        M0_ARESETN_I 
);

SOC_FPGA_INTF_AXI_M0 inst (
    .M0_ARADDR(M0_ARADDR),
    .M0_ARBURST(M0_ARBURST),
    .M0_ARCACHE(M0_ARCACHE),
    .M0_ARID(M0_ARID),
    .M0_ARLEN(M0_ARLEN),
    .M0_ARLOCK(M0_ARLOCK),
    .M0_ARPROT(M0_ARPROT),
    .M0_ARREADY(M0_ARREADY),
    .M0_ARSIZE(M0_ARSIZE),
    .M0_ARVALID(M0_ARVALID),
    .M0_AWADDR(M0_AWADDR),
    .M0_AWBURST(M0_AWBURST),
    .M0_AWCACHE(M0_AWCACHE),
    .M0_AWID(M0_AWID),
    .M0_AWLEN(M0_AWLEN),
    .M0_AWLOCK(M0_AWLOCK),
    .M0_AWPROT(M0_AWPROT),
    .M0_AWREADY(M0_AWREADY),
    .M0_AWSIZE(M0_AWSIZE),
    .M0_AWVALID(M0_AWVALID),
    .M0_BID(M0_BID),
    .M0_BREADY(M0_BREADY),
    .M0_BRESP(M0_BRESP),
    .M0_BVALID(M0_BVALID),
    .M0_RDATA(M0_RDATA),
    .M0_RID(M0_RID),
    .M0_RLAST(M0_RLAST),
    .M0_RREADY(M0_RREADY),
    .M0_RRESP(M0_RRESP),
    .M0_RVALID(M0_RVALID),
    .M0_WDATA(M0_WDATA),
    .M0_WLAST(M0_WLAST),
    .M0_WREADY(M0_WREADY),
    .M0_WSTRB(M0_WSTRB),
    .M0_WVALID(M0_WVALID),
    .M0_ACLK(M0_ACLK),
    .M0_ARESETN_I(M0_ARESETN_I)
);

endmodule 
