`timescale 1ns/1ps

module soc (
    input logic clk,
    input logic rst
);
    logic rstn;
    assign rstn = ~rst;

    logic   [ 3:0] arid;
    logic   [31:0] araddr;
    logic   [ 7:0] arlen;
    logic   [ 2:0] arsize;
    logic   [ 1:0] arburst;
    logic   [ 1:0] arlock;
    logic   [ 3:0] arcache;
    logic   [ 2:0] arprot;
    logic          arvalid;
    logic           arready;
    //read back
    logic    [ 3:0] rid;
    logic    [31:0] rdata;
    logic    [ 1:0] rresp;
    logic           rlast;
    logic           rvalid;
    logic          rready;
    //write request
    logic   [ 3:0] awid;
    logic   [31:0] awaddr;
    logic   [ 7:0] awlen;
    logic   [ 2:0] awsize;
    logic   [ 1:0] awburst;
    logic   [ 1:0] awlock;
    logic   [ 3:0] awcache;
    logic   [ 2:0] awprot;
    logic          awvalid;
    logic           awready;
    //write data
    logic   [ 3:0] wid;
    logic   [31:0] wdata;
    logic   [ 3:0] wstrb;
    logic          wlast;
    logic          wvalid;
    logic           wready;
    //write back
    logic    [ 3:0] bid;
    logic    [ 1:0] bresp;
    logic           bvalid;
    logic          bready;

    core_top u_core_top (
        .aclk(clk),
        .aresetn(rstn),
        .intrpt(8'b0),

        .arid,
        .araddr,
        .arlen,
        .arsize,
        .arburst,
        .arlock,
        .arcache,
        .arprot,
        .arvalid,
        .arready,

        .rid,
        .rdata,
        .rresp,
        .rlast,
        .rvalid,
        .rready,

        .awid,
        .awaddr,
        .awlen,
        .awsize,
        .awburst,
        .awlock,
        .awcache,
        .awprot,
        .awvalid,
        .awready,

        .wid,
        .wdata,
        .wstrb,
        .wlast,
        .wvalid,
        .wready,

        .bid,
        .bresp,
        .bvalid,
        .bready
    );

    inst_rom u_inst_rom (
        .clk,
        .rst,
        
        .rom_inst_en(),
        .rom_inst_addr(),

        .rom_inst(),
        .rom_inst_valid()
    );

    data_ram u_data_ram (
        .clk,
        .ram_en(),
        
        .write_en(),
        .read_addr(),
        .write_addr(),
        .select(),
        .data_i(),
        .read_en(),

        .data_o(),
        .data_valid()
    );
    
endmodule