system_cache_0 your_instance_name (
  .ACLK(ACLK),                        // input wire ACLK
  .ARESETN(ARESETN),                  // input wire ARESETN
  .Initializing(Initializing),        // output wire Initializing
  .S0_AXI_AWID(S0_AXI_AWID),          // input wire [0 : 0] S0_AXI_AWID
  .S0_AXI_AWADDR(S0_AXI_AWADDR),      // input wire [31 : 0] S0_AXI_AWADDR
  .S0_AXI_AWLEN(S0_AXI_AWLEN),        // input wire [7 : 0] S0_AXI_AWLEN
  .S0_AXI_AWSIZE(S0_AXI_AWSIZE),      // input wire [2 : 0] S0_AXI_AWSIZE
  .S0_AXI_AWBURST(S0_AXI_AWBURST),    // input wire [1 : 0] S0_AXI_AWBURST
  .S0_AXI_AWLOCK(S0_AXI_AWLOCK),      // input wire S0_AXI_AWLOCK
  .S0_AXI_AWCACHE(S0_AXI_AWCACHE),    // input wire [3 : 0] S0_AXI_AWCACHE
  .S0_AXI_AWPROT(S0_AXI_AWPROT),      // input wire [2 : 0] S0_AXI_AWPROT
  .S0_AXI_AWQOS(S0_AXI_AWQOS),        // input wire [3 : 0] S0_AXI_AWQOS
  .S0_AXI_AWVALID(S0_AXI_AWVALID),    // input wire S0_AXI_AWVALID
  .S0_AXI_AWREADY(S0_AXI_AWREADY),    // output wire S0_AXI_AWREADY
  .S0_AXI_AWUSER(S0_AXI_AWUSER),      // input wire [0 : 0] S0_AXI_AWUSER
  .S0_AXI_WDATA(S0_AXI_WDATA),        // input wire [31 : 0] S0_AXI_WDATA
  .S0_AXI_WSTRB(S0_AXI_WSTRB),        // input wire [3 : 0] S0_AXI_WSTRB
  .S0_AXI_WLAST(S0_AXI_WLAST),        // input wire S0_AXI_WLAST
  .S0_AXI_WVALID(S0_AXI_WVALID),      // input wire S0_AXI_WVALID
  .S0_AXI_WREADY(S0_AXI_WREADY),      // output wire S0_AXI_WREADY
  .S0_AXI_BRESP(S0_AXI_BRESP),        // output wire [1 : 0] S0_AXI_BRESP
  .S0_AXI_BID(S0_AXI_BID),            // output wire [0 : 0] S0_AXI_BID
  .S0_AXI_BVALID(S0_AXI_BVALID),      // output wire S0_AXI_BVALID
  .S0_AXI_BREADY(S0_AXI_BREADY),      // input wire S0_AXI_BREADY
  .S0_AXI_ARID(S0_AXI_ARID),          // input wire [0 : 0] S0_AXI_ARID
  .S0_AXI_ARADDR(S0_AXI_ARADDR),      // input wire [31 : 0] S0_AXI_ARADDR
  .S0_AXI_ARLEN(S0_AXI_ARLEN),        // input wire [7 : 0] S0_AXI_ARLEN
  .S0_AXI_ARSIZE(S0_AXI_ARSIZE),      // input wire [2 : 0] S0_AXI_ARSIZE
  .S0_AXI_ARBURST(S0_AXI_ARBURST),    // input wire [1 : 0] S0_AXI_ARBURST
  .S0_AXI_ARLOCK(S0_AXI_ARLOCK),      // input wire S0_AXI_ARLOCK
  .S0_AXI_ARCACHE(S0_AXI_ARCACHE),    // input wire [3 : 0] S0_AXI_ARCACHE
  .S0_AXI_ARPROT(S0_AXI_ARPROT),      // input wire [2 : 0] S0_AXI_ARPROT
  .S0_AXI_ARQOS(S0_AXI_ARQOS),        // input wire [3 : 0] S0_AXI_ARQOS
  .S0_AXI_ARVALID(S0_AXI_ARVALID),    // input wire S0_AXI_ARVALID
  .S0_AXI_ARREADY(S0_AXI_ARREADY),    // output wire S0_AXI_ARREADY
  .S0_AXI_ARUSER(S0_AXI_ARUSER),      // input wire [0 : 0] S0_AXI_ARUSER
  .S0_AXI_RID(S0_AXI_RID),            // output wire [0 : 0] S0_AXI_RID
  .S0_AXI_RDATA(S0_AXI_RDATA),        // output wire [31 : 0] S0_AXI_RDATA
  .S0_AXI_RRESP(S0_AXI_RRESP),        // output wire [1 : 0] S0_AXI_RRESP
  .S0_AXI_RLAST(S0_AXI_RLAST),        // output wire S0_AXI_RLAST
  .S0_AXI_RVALID(S0_AXI_RVALID),      // output wire S0_AXI_RVALID
  .S0_AXI_RREADY(S0_AXI_RREADY),      // input wire S0_AXI_RREADY
  
  .M0_AXI_AWID(M0_AXI_AWID),          // output wire [0 : 0] M0_AXI_AWID
  .M0_AXI_AWADDR(M0_AXI_AWADDR),      // output wire [31 : 0] M0_AXI_AWADDR
  .M0_AXI_AWLEN(M0_AXI_AWLEN),        // output wire [7 : 0] M0_AXI_AWLEN
  .M0_AXI_AWSIZE(M0_AXI_AWSIZE),      // output wire [2 : 0] M0_AXI_AWSIZE
  .M0_AXI_AWBURST(M0_AXI_AWBURST),    // output wire [1 : 0] M0_AXI_AWBURST
  .M0_AXI_AWLOCK(M0_AXI_AWLOCK),      // output wire M0_AXI_AWLOCK
  .M0_AXI_AWCACHE(M0_AXI_AWCACHE),    // output wire [3 : 0] M0_AXI_AWCACHE
  .M0_AXI_AWPROT(M0_AXI_AWPROT),      // output wire [2 : 0] M0_AXI_AWPROT
  .M0_AXI_AWQOS(M0_AXI_AWQOS),        // output wire [3 : 0] M0_AXI_AWQOS
  .M0_AXI_AWVALID(M0_AXI_AWVALID),    // output wire M0_AXI_AWVALID
  .M0_AXI_AWREADY(M0_AXI_AWREADY),    // input wire M0_AXI_AWREADY
  .M0_AXI_AWDOMAIN(M0_AXI_AWDOMAIN),  // output wire [1 : 0] M0_AXI_AWDOMAIN
  .M0_AXI_AWSNOOP(M0_AXI_AWSNOOP),    // output wire [2 : 0] M0_AXI_AWSNOOP
  .M0_AXI_AWBAR(M0_AXI_AWBAR),        // output wire [1 : 0] M0_AXI_AWBAR
  .M0_AXI_WDATA(M0_AXI_WDATA),        // output wire [127 : 0] M0_AXI_WDATA
  .M0_AXI_WSTRB(M0_AXI_WSTRB),        // output wire [15 : 0] M0_AXI_WSTRB
  .M0_AXI_WLAST(M0_AXI_WLAST),        // output wire M0_AXI_WLAST
  .M0_AXI_WVALID(M0_AXI_WVALID),      // output wire M0_AXI_WVALID
  .M0_AXI_WREADY(M0_AXI_WREADY),      // input wire M0_AXI_WREADY
  .M0_AXI_BRESP(M0_AXI_BRESP),        // input wire [1 : 0] M0_AXI_BRESP
  .M0_AXI_BID(M0_AXI_BID),            // input wire [0 : 0] M0_AXI_BID
  .M0_AXI_BVALID(M0_AXI_BVALID),      // input wire M0_AXI_BVALID
  .M0_AXI_BREADY(M0_AXI_BREADY),      // output wire M0_AXI_BREADY
  .M0_AXI_WACK(M0_AXI_WACK),          // output wire M0_AXI_WACK
  .M0_AXI_ARID(M0_AXI_ARID),          // output wire [0 : 0] M0_AXI_ARID
  .M0_AXI_ARADDR(M0_AXI_ARADDR),      // output wire [31 : 0] M0_AXI_ARADDR
  .M0_AXI_ARLEN(M0_AXI_ARLEN),        // output wire [7 : 0] M0_AXI_ARLEN
  .M0_AXI_ARSIZE(M0_AXI_ARSIZE),      // output wire [2 : 0] M0_AXI_ARSIZE
  .M0_AXI_ARBURST(M0_AXI_ARBURST),    // output wire [1 : 0] M0_AXI_ARBURST
  .M0_AXI_ARLOCK(M0_AXI_ARLOCK),      // output wire M0_AXI_ARLOCK
  .M0_AXI_ARCACHE(M0_AXI_ARCACHE),    // output wire [3 : 0] M0_AXI_ARCACHE
  .M0_AXI_ARPROT(M0_AXI_ARPROT),      // output wire [2 : 0] M0_AXI_ARPROT
  .M0_AXI_ARQOS(M0_AXI_ARQOS),        // output wire [3 : 0] M0_AXI_ARQOS
  .M0_AXI_ARVALID(M0_AXI_ARVALID),    // output wire M0_AXI_ARVALID
  .M0_AXI_ARREADY(M0_AXI_ARREADY),    // input wire M0_AXI_ARREADY
  .M0_AXI_ARDOMAIN(M0_AXI_ARDOMAIN),  // output wire [1 : 0] M0_AXI_ARDOMAIN
  .M0_AXI_ARSNOOP(M0_AXI_ARSNOOP),    // output wire [3 : 0] M0_AXI_ARSNOOP
  .M0_AXI_ARBAR(M0_AXI_ARBAR),        // output wire [1 : 0] M0_AXI_ARBAR
  .M0_AXI_RID(M0_AXI_RID),            // input wire [0 : 0] M0_AXI_RID
  .M0_AXI_RDATA(M0_AXI_RDATA),        // input wire [127 : 0] M0_AXI_RDATA
  .M0_AXI_RRESP(M0_AXI_RRESP),        // input wire [3 : 0] M0_AXI_RRESP
  .M0_AXI_RLAST(M0_AXI_RLAST),        // input wire M0_AXI_RLAST
  .M0_AXI_RVALID(M0_AXI_RVALID),      // input wire M0_AXI_RVALID
  .M0_AXI_RREADY(M0_AXI_RREADY),      // output wire M0_AXI_RREADY
  .M0_AXI_RACK(M0_AXI_RACK),          // output wire M0_AXI_RACK
  .M0_AXI_ACVALID(M0_AXI_ACVALID),    // input wire M0_AXI_ACVALID
  .M0_AXI_ACADDR(M0_AXI_ACADDR),      // input wire [31 : 0] M0_AXI_ACADDR
  .M0_AXI_ACSNOOP(M0_AXI_ACSNOOP),    // input wire [3 : 0] M0_AXI_ACSNOOP
  .M0_AXI_ACPROT(M0_AXI_ACPROT),      // input wire [2 : 0] M0_AXI_ACPROT
  .M0_AXI_ACREADY(M0_AXI_ACREADY),    // output wire M0_AXI_ACREADY
  .M0_AXI_CRVALID(M0_AXI_CRVALID),    // output wire M0_AXI_CRVALID
  .M0_AXI_CRRESP(M0_AXI_CRRESP),      // output wire [4 : 0] M0_AXI_CRRESP
  .M0_AXI_CRREADY(M0_AXI_CRREADY),    // input wire M0_AXI_CRREADY
  .M0_AXI_CDVALID(M0_AXI_CDVALID),    // output wire M0_AXI_CDVALID
  .M0_AXI_CDDATA(M0_AXI_CDDATA),      // output wire [127 : 0] M0_AXI_CDDATA
  .M0_AXI_CDLAST(M0_AXI_CDLAST),      // output wire M0_AXI_CDLAST
  .M0_AXI_CDREADY(M0_AXI_CDREADY)     // input wire M0_AXI_CDREADY
);