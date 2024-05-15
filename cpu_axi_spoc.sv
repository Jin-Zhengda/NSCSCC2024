module cpu_axi_spoc (
    input logic aclk,
    input logic aresetn,
    input logic [7:0] intrpt
);

    //AXI interface 
    //read reqest
    logic [ 3:0] arid;
    logic [31:0] araddr;
    logic [ 7:0] arlen;
    logic [ 2:0] arsize;
    logic [ 1:0] arburst;
    logic [ 1:0] arlock;
    logic [ 3:0] arcache;
    logic [ 2:0] arprot;
    logic        arvalid;
    logic        arready;
    //read back
    logic [ 3:0] rid;
    logic [31:0] rdata;
    logic [ 1:0] rresp;
    logic        rlast;
    logic        rvalid;
    logic        rready;
    //write request
    logic [ 3:0] awid;
    logic [31:0] awaddr;
    logic [ 7:0] awlen;
    logic [ 2:0] awsize;
    logic [ 1:0] awburst;
    logic [ 1:0] awlock;
    logic [ 3:0] awcache;
    logic [ 2:0] awprot;
    logic        awvalid;
    logic        awready;
    //write data
    logic [ 3:0] wid;
    logic [31:0] wdata;
    logic [ 3:0] wstrb;
    logic        wlast;
    logic        wvalid;
    logic        wready;
    //write back
    logic [ 3:0] bid;
    logic [ 1:0] bresp;
    logic        bvalid;
    logic        bready;


    cpu_axi cpu_axi_inst (.*);

    ram u_ram(.*);

endmodule
