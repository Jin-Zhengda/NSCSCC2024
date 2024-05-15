module ram (
    input  logic       aclk,
    input  logic       aresetn,
    input  logic[ 7:0] intrpt,
    //AXI interface 
    //read reqest
    input  logic[ 3:0] arid,
    input  logic[31:0] araddr,
    input  logic[ 7:0] arlen,
    input  logic[ 2:0] arsize,
    input  logic[ 1:0] arburst,
    input  logic[ 1:0] arlock,
    input  logic[ 3:0] arcache,
    input  logic[ 2:0] arprot,
    input  logic       arvalid,
    output logic       arready,
    //read back
    output logic[ 3:0] rid,
    output logic[31:0] rdata,
    output logic[ 1:0] rresp,
    output logic       rlast,
    output logic       rvalid,
    input  logic       rready,
    //write request
    input  logic[ 3:0] awid,
    input  logic[31:0] awaddr,
    input  logic[ 7:0] awlen,
    input  logic[ 2:0] awsize,
    input  logic[ 1:0] awburst,
    input  logic[ 1:0] awlock,
    input  logic[ 3:0] awcache,
    input  logic[ 2:0] awprot,
    input  logic       awvalid,
    output logic       awready,
    //write data
    input  logic[ 3:0] wid,
    input  logic[31:0] wdata,
    input  logic[ 3:0] wstrb,
    input  logic       wlast,
    input  logic       wvalid,
    output logic       wready,
    //write back
    output logic[ 3:0] bid,
    output logic[ 1:0] bresp,
    output logic       bvalid,
    input  logic       bready
);

    logic[7: 0] ram0[0: 1023];
    logic[7: 0] ram1[0: 1023];
    logic[7: 0] ram2[0: 1023];
    logic[7: 0] ram3[0: 1023];

    logic[9: 0] data_addr1;
    logic[9: 0] data_addr2;

    assign data_addr1 = araddr[11: 2];
    assign data_addr2 = awaddr[11: 2];

    always_ff @(posedge aclk) begin
        if (wvalid) begin
            if (wstrb[3]) begin
                ram3[data_addr2] <= wdata[31: 24];
            end
            if (wstrb[2]) begin
                ram2[data_addr2] <= wdata[23: 16];
            end
            if (wstrb[1]) begin
                ram1[data_addr2] <= wdata[15: 8];
            end
            if (wstrb[0]) begin
                ram0[data_addr2] <= wdata[7: 0];
            end
            awready <= 1'b1;
        end
        else begin
            awready <= 1'b0;
        end
    end

    always_ff @( posedge aclk ) begin
        if (arvalid) begin
            rdata <= {ram3[data_addr1], ram2[data_addr1], ram1[data_addr1], ram0[data_addr1]};
            arready <= 1'b1;
        end 
        else begin
            rdata <= 32'b0;
            arready <= 1'b0;
        end
    end
endmodule
