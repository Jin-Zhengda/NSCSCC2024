`timescale 1ns / 1ps

module mycpu_top (
    input           aclk,
    input           aresetn,
    input    [ 7:0] intrpt, 
    //AXI interface 
    //read reqest
    output   [ 3:0] arid,
    output   [31:0] araddr,
    output   [ 7:0] arlen,
    output   [ 2:0] arsize,
    output   [ 1:0] arburst,
    output   [ 1:0] arlock,
    output   [ 3:0] arcache,
    output   [ 2:0] arprot,
    output          arvalid,
    input           arready,
    //read back
    input    [ 3:0] rid,
    input    [31:0] rdata,
    input    [ 1:0] rresp,
    input           rlast,
    input           rvalid,
    output          rready,
    //write request
    output   [ 3:0] awid,
    output   [31:0] awaddr,
    output   [ 7:0] awlen,
    output   [ 2:0] awsize,
    output   [ 1:0] awburst,
    output   [ 1:0] awlock,
    output   [ 3:0] awcache,
    output   [ 2:0] awprot,
    output          awvalid,
    input           awready,
    //write data
    output   [ 3:0] wid,
    output   [31:0] wdata,
    output   [ 3:0] wstrb,
    output          wlast,
    output          wvalid,
    input           wready,
    //write back
    input    [ 3:0] bid,
    input    [ 1:0] bresp,
    input           bvalid,
    output          bready,
    //debug info
    output [31:0] debug0_wb_pc,
    output [ 3:0] debug0_wb_rf_wen,
    output [ 4:0] debug0_wb_rf_wnum,
    output [31:0] debug0_wb_rf_wdata
    // #ifdef CPU_2CMT
    
    // output [31:0] debug1_wb_pc,
    // output [ 3:0] debug1_wb_rf_wen,
    // output [ 4:0] debug1_wb_rf_wnum,
    // output [31:0] debug1_wb_rf_wdata
    // #endif
);
    wire rst;
    assign rst = ~aresetn;

    wire icache_rd_req;
    wire[31:0] icache_rd_addr;
    wire icache_ret_valid;
    wire[255:0] icache_ret_data;
    
    wire dcache_rd_req;
    wire[31:0] dcache_rd_addr;
    wire dcache_ret_valid;
    wire[255:0] dcache_ret_data;

    wire dcache_wr_req;
    wire[3:0] dcache_wr_wstrb;
    wire[255:0] dcache_wr_data;
    wire[31:0] dcache_wr_addr;

    wire   data_bvalid_o;

    wire axi_ce_o;
    wire axi_wen_o;
    wire axi_ren_o;
    wire[31:0] axi_raddr_o;
    wire[31:0] axi_waddr_o;
    wire[31:0] axi_wdata_o;
    wire axi_rready_o;
    wire axi_wvalid_o;
    wire axi_wlast_o;
    wire wdata_resp_i;

    wire[1:0] cache_burst_type;
    assign cache_burst_type = 2'b01;
    wire[2:0] cache_burst_size;
    assign cache_burst_size = 3'b010;
    wire[7:0] cacher_burst_length;
    wire[7:0] cachew_burst_length;

    wire[31:0] rdata_i;
    wire rdata_valid_i;
    wire[7:0] axi_rlen_o;
    wire[7:0] axi_wlen_o;
    wire[2: 0] dcache_rd_type;



    cpu u_cpu (
        .clk(aclk),
        .rst(rst),
        
        
        .icache_ret_valid(icache_ret_valid),
        .icache_ret_data(icache_ret_data),
        .icache_rd_req(icache_rd_req),
        .icache_rd_addr(icache_rd_addr),

        .dcache_wr_rdy(1'b1),
        .dcache_rd_rdy(1'b1),
        .dcache_ret_valid(dcache_ret_valid),
        .dcache_ret_data(dcache_ret_data),

        .dcache_rd_req(dcache_rd_req),
        .dcache_rd_type(dcache_rd_type),
        .dcache_rd_addr(dcache_rd_addr),
        .dcache_wr_req(dcache_wr_req),
        .dcache_wr_addr(dcache_wr_addr),
        .dcache_wr_wstrb(dcache_wr_wstrb),
        .dcache_wr_data(dcache_wr_data)
    );

    cache_axi u_cache_axi (
        .clk(aclk),      
        .rst(rst),      // 高有效
        
        // ICache: Read Channel
        .inst_ren_i(icache_rd_req),       // rd_req
        .inst_araddr_i(icache_rd_addr),    // rd_addr
        .inst_rvalid_o(icache_ret_valid),    // ret_valid 读完8个32位数据之后才给高有效信号
        .inst_rdata_o(icache_ret_data),     // ret_data
        
        // DCache: Read Channel
        .data_ren_i(dcache_rd_req),       // rd_req
        .data_araddr_i(dcache_rd_addr),    // rd_addr
        .data_rvalid_o(dcache_ret_valid),    // ret_valid 写完8个32位信号之后才给高有效信号
        .data_rdata_o(dcache_ret_data),     // ret_data
        
        // DCache: Write Channel
        .data_wen_i(dcache_wr_req),       // wr_req
        .data_wdata_i(dcache_wr_data),     // wr_data
        .data_awaddr_i(dcache_wr_addr),    // wr_addr
        .data_bvalid_o(data_bvalid_o),    // 在顶层模块直接定义     wire   data_bvalid_o; 下面会给它赋值并输出
        
        // AXI Communicate
        .axi_ce_o(axi_ce_o),
        
        // AXI read
        .rdata_i(rdata_i),
        .rdata_valid_i(rdata_valid_i),
        .axi_ren_o(axi_ren_o),
        .axi_rready_o(axi_rready_o),
        .axi_raddr_o(axi_raddr_o),
        .axi_rlen_o(axi_rlen_o),

        // AXI write
        .wdata_resp_i(wdata_resp_i),
        .axi_wen_o(axi_wen_o),
        .axi_waddr_o(axi_waddr_o),
        .axi_wdata_o(axi_wdata_o),
        .axi_wvalid_o(axi_wvalid_o),
        .axi_wlast_o(axi_wlast_o),
        .axi_wlen_o(axi_wlen_o)
    );

    axi_interface u_axi_interface (
        .clk(aclk),
        .resetn(aresetn),     // 低有效
        .flush(1'b0),
        // input                   wire [5:0]             stall,
        // output                  wire                   stallreq, // Stall请求

        // Cache接口
        .cache_ce(axi_ce_o),   // axi_ce_o
        .cache_wen(axi_wen_o),  // axi_wen_o
        .cache_ren(axi_ren_o),  // axi_ren_o
        .cache_wsel(dcache_wr_wstrb),        // wstrb????? 或许接dcache的wr_wstrb?
        .cache_raddr(axi_raddr_o),       // axi_raddr_o
        .cache_waddr(axi_waddr_o),       // axi_waddr_o
        .cache_wdata(axi_waddr_o),       // axi_wdata_o
        .cache_rready(axi_rready_o), // Cache读准备好      axi_rready_o
        .cache_wvalid(axi_wvalid_o), // Cache写数据准备好  axi_wvalid_o
        .cache_wlast(axi_wlast_o),  // Cache写最后一个数据 axi_wlast_o
        .wdata_resp_o(wdata_resp_i), // 写响应信号，每个beat发一次，成功则可以传下一数据   wdata_resp_i

        // AXI接口
        .cache_burst_type(cache_burst_type),          // 固定为增量突发（地址递增的突发），2'b01
        .cache_burst_size(cache_burst_size),          // 固定为四个字节， 3'b010
        .cacher_burst_length(axi_rlen_o),       // 固定为8， 8'b00000111 axi_rlen_o   单位到底是transfer还是byte啊，注意这个点，我也不太确定，大概率是transfer
        .cachew_burst_length(axi_wlen_o),       // 固定为8， 8'b00000111 axi_wlen_o   A(W/R)LEN 表示传输的突发长度（burst length），其值为实际传输数据的数量减 1
                                                            // wire [1:0]   burst_type;            顶层模块直接给这两个值赋定值就行
                                                            // wire [2:0]    burst_size;
                                                            // assign burst_type = 2'b01;
                                                            // assign burst_size = 3'b010;
        // AXI读接口
        .arid(arid),
        .araddr(araddr),
        .arlen(arlen),
        .arsize(arsize),
        .arburst(arburst),
        .arlock(arlock),
        .arcache(arcache),
        .arprot(arprot),
        .arvalid(arvalid),
        .arready(arready),
        // AXI读返回接口
        .rid(rid),
        .rdata(rdata),
        .rresp(rresp),
        .rlast(rlast),
        .rvalid(rvalid),
        .rready(rready),

        .rdata_o(rdata_i),         // rdata_i
        .rdata_valid_o(rdata_valid_i),   // rdata_valid_i

        // AXI写接口
        .awid(awid),
        .awaddr(awaddr),
        .awlen(awlen),
        .awsize(awsize),
        .awburst(awburst),
        .awlock(awlock),
        .awcache(awcache),
        .awprot(awprot),
        .awvalid(awvalid),
        .awready(awready),
        // AXI写数据接口
        .wid(wid),
        .wdata(wdata),
        .wstrb(wstrb),
        .wlast(wlast),
        .wvalid(wvalid),
        .wready(wready),
        // AXI写响应接口
        .bid(bid),
        .bresp(bresp),
        .bvalid(bvalid),
        .bready(bready)
    );

endmodule
