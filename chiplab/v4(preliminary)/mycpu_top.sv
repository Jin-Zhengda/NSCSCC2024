`timescale 1ns / 1ps
`include "pipeline_types.sv"
`include "interface.sv"

module mycpu_top (
    input           aclk,
    input           aresetn,
    input    [ 7:0] ext_int, 
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

    output [31:0] debug_wb_pc,
    output [ 3:0] debug_wb_rf_we,
    output [ 4:0] debug_wb_rf_wnum,
    output [31:0] debug_wb_rf_wdata
    
    `ifdef DIFF
    ,

    output [31:0] debug0_wb_pc,
    output [ 3:0] debug0_wb_rf_wen,
    output [ 4:0] debug0_wb_rf_wnum,
    output [31:0] debug0_wb_rf_wdata,
    output [31:0] debug0_wb_inst,
    
    output [31:0] debug1_wb_pc,
    output [ 3:0] debug1_wb_rf_wen,
    output [ 4:0] debug1_wb_rf_wnum,
    output [31:0] debug1_wb_rf_wdata,
    output [31:0] debug1_wb_inst
    `endif
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

    wire data_bvalid_o;

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

    wire iucache_ren_i;
    wire[31:0] iucache_addr_i;
    wire iucache_rvalid_o;
    wire[31:0] iucache_rdata_o;

    wire ducache_ren_i;
    wire[31:0] ducache_araddr_i;
    wire ducache_rvalid_o;
    wire[31:0] ducache_rdata_o;

    wire ducache_wen_i;
    wire[31:0] ducache_wdata_i;
    wire[31:0] ducache_awaddr_i;
    wire[3:0] ducache_strb;
    wire ducache_bvalid_o;
    wire[3:0] axi_wsel_o;

    `ifdef DIFF
    // difftest
    reg             cmt0_valid        ;
    reg             cmt0_cnt_inst     ;
    reg     [63:0]  cmt0_timer_64     ;
    reg     [ 7:0]  cmt0_inst_ld_en   ;
    reg     [31:0]  cmt0_ld_paddr     ;
    reg     [31:0]  cmt0_ld_vaddr     ;
    reg     [ 7:0]  cmt0_inst_st_en   ;
    reg     [31:0]  cmt0_st_paddr     ;
    reg     [31:0]  cmt0_st_vaddr     ;
    reg     [31:0]  cmt0_st_data      ;
    reg             cmt0_csr_rstat_en ;
    reg     [31:0]  cmt0_csr_data     ;

    reg             cmt1_valid        ;
    reg             cmt1_cnt_inst     ;
    reg     [63:0]  cmt1_timer_64     ;
    reg     [ 7:0]  cmt1_inst_ld_en   ;
    reg     [31:0]  cmt1_ld_paddr     ;
    reg     [31:0]  cmt1_ld_vaddr     ;
    reg     [ 7:0]  cmt1_inst_st_en   ;
    reg     [31:0]  cmt1_st_paddr     ;
    reg     [31:0]  cmt1_st_vaddr     ;
    reg     [31:0]  cmt1_st_data      ;
    reg             cmt1_csr_rstat_en ;
    reg     [31:0]  cmt1_csr_data     ;
 
    reg     [ 3:0]  cmt0_wen          ;
    reg     [ 7:0]  cmt0_wdest        ;
    reg     [31:0]  cmt0_wdata        ;
    reg     [31:0]  cmt0_pc           ;
    reg     [31:0]  cmt0_inst         ;
    reg             cmt0_excp_flush   ;
    reg             cmt0_ertn         ;
    reg     [5:0]   cmt0_csr_ecode    ;
    reg             cmt0_tlbfill_en   ;

    reg     [ 3:0]  cmt1_wen          ;
    reg     [ 7:0]  cmt1_wdest        ;
    reg     [31:0]  cmt1_wdata        ;
    reg     [31:0]  cmt1_pc           ;
    reg     [31:0]  cmt1_inst         ;
    reg             cmt1_excp_flush   ;
    reg             cmt1_ertn         ;
    reg     [5:0]   cmt1_csr_ecode    ;
    reg             cmt1_tlbfill_en   ;
    reg     [4:0]   cmt_rand_index    ;

    // to difftest debug
    reg             trap                  ;
    reg     [ 7:0]  trap_code             ;
    reg     [63:0]  cycleCnt              ;
    reg     [63:0]  instrCnt              ;
 
    // from regfile 
    wire    [31:0]  regs_diff[0:31]       ;
    diff_t  [1:0]   diff                  ;
    wire    [63:0]  cnt                   ;
  
    // from csr  
    wire    [31:0]  csr_crmd_diff_0       ;
    wire    [31:0]  csr_prmd_diff_0       ;
    wire    [31:0]  csr_ectl_diff_0       ;
    wire    [31:0]  csr_estat_diff_0      ;
    wire    [31:0]  csr_era_diff_0        ;
    wire    [31:0]  csr_badv_diff_0       ;
    wire	[31:0]  csr_eentry_diff_0     ;
    wire 	[31:0]  csr_tlbidx_diff_0     ;
    wire 	[31:0]  csr_tlbehi_diff_0     ;
    wire 	[31:0]  csr_tlbelo0_diff_0    ;
    wire 	[31:0]  csr_tlbelo1_diff_0    ;
    wire 	[31:0]  csr_asid_diff_0       ;
    wire 	[31:0]  csr_save0_diff_0      ;
    wire 	[31:0]  csr_save1_diff_0      ;
    wire 	[31:0]  csr_save2_diff_0      ;
    wire 	[31:0]  csr_save3_diff_0      ;
    wire 	[31:0]  csr_tid_diff_0        ;
    wire 	[31:0]  csr_tcfg_diff_0       ;
    wire 	[31:0]  csr_tval_diff_0       ;
    wire 	[31:0]  csr_ticlr_diff_0      ;
    wire 	[31:0]  csr_llbctl_diff_0     ;
    wire 	[31:0]  csr_tlbrentry_diff_0  ;
    wire 	[31:0]  csr_dmw0_diff_0       ;
    wire 	[31:0]  csr_dmw1_diff_0       ;
    wire 	[31:0]  csr_pgdl_diff_0       ;
    wire 	[31:0]  csr_pgdh_diff_0       ;
    `endif 

    logic [7:0] flush;
    logic [7:0] pause;
    logic bpu_flush;
    logic pause_decoder;

    mem_dcache mem_dcache_io ();
    pc_icache pc_icache_io ();
    frontend_backend frontend_backend_io ();
    icache_transaddr icache_transaddr_io ();
    dcache_transaddr dcache_transaddr_io ();  
    dispatch_regfile dispatch_regfile_io ();
    ex_tlb ex_tlb_io ();
    csr_tlb csr_tlb_io ();

    logic [1:0] pre_is_branch;
    logic [1:0] pre_is_branch_taken;
    bus32_t [1:0] pre_branch_addr;

    logic buffer_full;

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign pre_is_branch_taken[i] = frontend_backend_io.branch_info[i].pre_taken_or_not;
            assign pre_branch_addr[i] = frontend_backend_io.branch_info[i].pre_branch_addr;
        end
    endgenerate

    backend_top u_backend_top (
        .clk(aclk),
        .rst,

        .is_hwi(ext_int),

        .pc  (frontend_backend_io.inst_and_pc_o.pc_o),
        .inst(frontend_backend_io.inst_and_pc_o.inst_o),
        .valid(frontend_backend_io.inst_and_pc_o.valid),

        .pre_is_branch_taken,
        .pre_branch_addr,

        .is_exception(frontend_backend_io.inst_and_pc_o.is_exception),
        .exception_cause(frontend_backend_io.inst_and_pc_o.exception_cause),
        .pause_buffer(buffer_full),
        .bpu_flush,
        .pause_decoder,

        .is_interrupt(frontend_backend_io.is_interrupt),
        .new_pc(frontend_backend_io.new_pc),

        .update_info(frontend_backend_io.update_info),

        .dcache_master(mem_dcache_io.master),

        .csr_tlb_master(csr_tlb_io.master),

        .flush(flush),
        .pause(pause)

        `ifdef DIFF
        ,

        .diff,
        .cnt,

        .regs_diff,

        .csr_crmd_diff      (csr_crmd_diff_0    ),
        .csr_prmd_diff      (csr_prmd_diff_0    ),
        .csr_ectl_diff      (csr_ectl_diff_0    ),
        .csr_estat_diff     (csr_estat_diff_0   ),
        .csr_era_diff       (csr_era_diff_0     ),
        .csr_badv_diff      (csr_badv_diff_0    ),
        .csr_eentry_diff    (csr_eentry_diff_0  ),
        .csr_tlbidx_diff    (csr_tlbidx_diff_0  ),
        .csr_tlbehi_diff    (csr_tlbehi_diff_0  ),
        .csr_tlbelo0_diff   (csr_tlbelo0_diff_0 ),
        .csr_tlbelo1_diff   (csr_tlbelo1_diff_0 ),
        .csr_asid_diff      (csr_asid_diff_0    ),
        .csr_save0_diff     (csr_save0_diff_0   ),
        .csr_save1_diff     (csr_save1_diff_0   ),
        .csr_save2_diff     (csr_save2_diff_0   ),
        .csr_save3_diff     (csr_save3_diff_0   ),
        .csr_tid_diff       (csr_tid_diff_0     ),
        .csr_tcfg_diff      (csr_tcfg_diff_0    ),
        .csr_tval_diff      (csr_tval_diff_0    ),
        .csr_ticlr_diff     (csr_ticlr_diff_0   ),
        .csr_llbctl_diff    (csr_llbctl_diff_0  ),
        .csr_tlbrentry_diff (csr_tlbrentry_diff_0),
        .csr_dmw0_diff      (csr_dmw0_diff_0    ),
        .csr_dmw1_diff      (csr_dmw1_diff_0    ),
        .csr_pgdl_diff      (csr_pgdl_diff_0    ),
        .csr_pgdh_diff      (csr_pgdh_diff_0    )
        `endif 
    );

    assign frontend_backend_io.flush = {flush[2], flush[0]};
    assign frontend_backend_io.pause = {pause[2], pause[0]};

    logic iuncache;
    frontend_top_d u_frontend_top_d (
        .clk(aclk),
        .rst,

        .pi_master(pc_icache_io.master),
        .fb_master(frontend_backend_io.master),
        .buffer_full(buffer_full),
        .bpu_flush,
        .pause_decoder,

        .iuncache(iuncache)
    );

    trans_addr u_trans_addr(
        .clk(aclk),
        .rst(rst),
        .icache2transaddr(icache_transaddr_io.slave),
        .dcache2transaddr(dcache_transaddr_io.slave),
        .csr2tlb(csr_tlb_io.slave),
        .iuncache(iuncache)
    );

    icache u_icache (
        .clk(aclk),
        .reset(rst),
        .pause_icache(pause[1]),
        .branch_flush(flush[1]),

        .pc2icache(pc_icache_io.slave),
        .icache2transaddr(icache_transaddr_io.master),

        .rd_req(icache_rd_req),
        .rd_addr(icache_rd_addr),
        .ret_valid(icache_ret_valid),
        .ret_data(icache_ret_data),

        .icacop_op_en(icache_cacop),
        .icacop_op_mode(0),
        .icacop_addr(0),

        .iucache_ren_i(iucache_ren_i),
        .iucache_addr_i(iucache_addr_i),
        .iucache_rvalid_o(iucache_rvalid_o),
        .iucache_rdata_o(iucache_rdata_o)

    );

    dcache u_dcache (
        .clk(aclk),
        .reset(rst),
        .mem2dcache(mem_dcache_io.slave),
        .dcache_inst(0),
        .dcache2transaddr(dcache_transaddr_io.master),

        .rd_req  (dcache_rd_req),
        .rd_type (dcache_rd_type),
        .rd_addr (dcache_rd_addr),
        .wr_req  (dcache_wr_req),
        .wr_addr (dcache_wr_addr),
        .wr_wstrb(dcache_wr_wstrb),
        .wr_data (dcache_wr_data),

        .wr_rdy(1'b1),
        .rd_rdy(1'b1),
        .ret_data(dcache_ret_data),
        .ret_valid(dcache_ret_valid),
        .data_bvalid_o(data_bvalid_o),

        .ducache_ren_i(ducache_ren_i),
        .ducache_araddr_i(ducache_araddr_i),
        .ducache_rvalid_o(ducache_rvalid_o),
        .ducache_rdata_o(ducache_rdata_o),

        .ducache_wen_i(ducache_wen_i),
        .ducache_wdata_i(ducache_wdata_i),
        .ducache_awaddr_i(ducache_awaddr_i),
        .ducache_strb(ducache_strb),  //改了个名
        .ducache_bvalid_o(ducache_bvalid_o)
    );

    cache_axi u_cache_axi (
        .clk(aclk),      
        .rst(rst),      // 高有�???


        .cache_wsel_i(ducache_strb),
        
        // ICache: Read Channel
        .inst_ren_i(icache_rd_req),         // icache_rd_req
        .inst_araddr_i(icache_rd_addr),     // icache_rd_addr
        .inst_rvalid_o(icache_ret_valid),   // icache_ret_valid 读完8�???32位数据之后才给高有效信号
        .inst_rdata_o(icache_ret_data),     // icache_ret_data
        
        // DCache: Read Channel
        .data_ren_i(dcache_rd_req),         // dcache_rd_req
        .data_araddr_i(dcache_rd_addr),     // dcache_rd_addr
        .data_rvalid_o(dcache_ret_valid),   // dcache_ret_valid 写完8�???32位信号之后才给高有效信号
        .data_rdata_o(dcache_ret_data),     // dcache_ret_data
        
        // DCache: Write Channel
        //.wr_rdy(wr_rdy),
        .data_wen_i(dcache_wr_req),         // dcache_wr_req
        .data_wdata_i(dcache_wr_data),      // dcache_wr_data
        .data_awaddr_i(dcache_wr_addr),     // dcache_wr_addr
        .data_bvalid_o(data_bvalid_o),      // 在顶层模块直接定�???     wire   data_bvalid_o; 模块内会给它赋�?�并输出
        
        //I-uncached Read channel
        .iucache_ren_i(iucache_ren_i),
        .iucache_addr_i(iucache_addr_i),
        .iucache_rvalid_o(iucache_rvalid_o),
        .iucache_rdata_o(iucache_rdata_o), 

        //D-uncache: Read Channel
        .ducache_ren_i(ducache_ren_i),
        .ducache_araddr_i(ducache_araddr_i),
        .ducache_rvalid_o(ducache_rvalid_o),   
        .ducache_rdata_o(ducache_rdata_o),

        //D-uncache: Write Channel
        .ducache_wen_i(ducache_wen_i),
        .ducache_wdata_i(ducache_wdata_i),
        .ducache_awaddr_i(ducache_awaddr_i),
        .ducache_bvalid_o(ducache_bvalid_o),


        // AXI Communicate
        .axi_ce_o(axi_ce_o),

        .axi_wsel_o(axi_wsel_o),
        
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
        .resetn(aresetn),     // 低有�???
        // input                   wire [5:0]             stall,
        // output                  wire                   stallreq, // Stall请求

        // Cache接口
        .cache_ce(axi_ce_o),   // axi_ce_o
        .cache_wen(axi_wen_o),  // axi_wen_o
        .cache_ren(axi_ren_o),  // axi_ren_o
        .cache_wsel(axi_wsel_o),        // wstrb
        .cache_raddr(axi_raddr_o),       // axi_raddr_o
        .cache_waddr(axi_waddr_o),       // axi_waddr_o
        .cache_wdata(axi_wdata_o),       // axi_wdata_o
        .cache_rready(axi_rready_o), // Cache读准备好      axi_rready_o
        .cache_wvalid(axi_wvalid_o), // Cache写数据准备好  axi_wvalid_o
        .cache_wlast(axi_wlast_o),  // Cache写最后一个数�??? axi_wlast_o
        .wdata_resp_o(wdata_resp_i), // 写响应信号，每个beat发一次，成功则可以传下一数据   wdata_resp_i

        // AXI接口
        .cache_burst_type(cache_burst_type),          // 固定为增量突发（地址递增的突发）�???2'b01
        .cache_burst_size(cache_burst_size),          // 固定为四个字节， 3'b010
        .cacher_burst_length(axi_rlen_o),       // 固定�???8�??? 8'b00000111 axi_rlen_o   单位到底是transfer还是byte啊，注意这个点，我也不太确定，大概率是transfer
        .cachew_burst_length(axi_wlen_o),       // 固定�???8�??? 8'b00000111 axi_wlen_o   A(W/R)LEN 表示传输的突发长度（burst length），其�?�为实际传输数据的数量减 1
                                                            // wire [1:0]   cache_burst_type;            顶层模块直接给这两个值赋定�?�就�???
                                                            // wire [2:0]    burst_size;
                                                            // assign cache_burst_type = 2'b01;
                                                            // assign burst_size = 3'b010;
        // AXI读接�???
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
        // AXI读返回接�???
        .rid(rid),
        .rdata(rdata),
        .rresp(rresp),
        .rlast(rlast),
        .rvalid(rvalid),
        .rready(rready),

        .rdata_o(rdata_i),         // rdata_i
        .rdata_valid_o(rdata_valid_i),   // rdata_valid_i

        // AXI写接�???
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
        // AXI写数据接�???
        .wid(wid),
        .wdata(wdata),
        .wstrb(wstrb),
        .wlast(wlast),
        .wvalid(wvalid),
        .wready(wready),
        // AXI写响应接�???
        .bid(bid),
        .bresp(bresp),
        .bvalid(bvalid),
        .bready(bready)
    );



    `ifdef DIFF
    always @(posedge aclk) begin
        if (rst) begin
            {cmt0_valid, cmt0_cnt_inst, cmt0_timer_64, cmt0_inst_ld_en, cmt0_ld_paddr, cmt0_ld_vaddr, cmt0_inst_st_en, cmt0_st_paddr, cmt0_st_vaddr, cmt0_st_data, cmt0_csr_rstat_en, cmt0_csr_data} <= 0;
            {cmt0_wen, cmt0_wdest, cmt0_wdata, cmt0_pc, cmt0_inst} <= 0;
            {trap, trap_code, cycleCnt, instrCnt} <= 0;
        end
        else begin
            cmt0_valid       <= diff[0].inst_valid;
            cmt0_cnt_inst    <= diff[0].cnt_inst;
            cmt0_timer_64    <= cnt;
            cmt0_inst_ld_en  <= diff[0].inst_ld_en;
            cmt0_ld_paddr    <= diff[0].ld_paddr;
            cmt0_ld_vaddr    <= diff[0].ld_vaddr;
            cmt0_inst_st_en  <= diff[0].inst_st_en;
            cmt0_st_paddr    <= diff[0].st_paddr;
            cmt0_st_vaddr    <= diff[0].st_vaddr;
            cmt0_st_data     <= diff[0].st_data;
            cmt0_csr_rstat_en<= diff[0].csr_rstat_en;
            cmt0_csr_data    <= diff[0].csr_data;

            cmt0_wen         <= diff[0].debug_wb_rf_wen;
            cmt0_wdest       <= {3'd0, diff[0].debug_wb_rf_wnum};

            cmt0_wdata       <= diff[0].debug_wb_rf_wdata;
            cmt0_pc          <= diff[0].debug_wb_pc;
            cmt0_inst        <= diff[0].debug_wb_inst;

            cmt0_excp_flush  <= diff[0].excp_flush;
            cmt0_ertn        <= diff[0].ertn_flush;
            cmt0_csr_ecode   <= diff[0].ecode;
            cmt0_tlbfill_en  <= diff[0].tlbfill_en;   

            cmt1_valid       <= diff[1].inst_valid;
            cmt1_cnt_inst    <= diff[1].cnt_inst;
            cmt1_timer_64    <= cnt;
            cmt1_inst_ld_en  <= diff[1].inst_ld_en;
            cmt1_ld_paddr    <= diff[1].ld_paddr;
            cmt1_ld_vaddr    <= diff[1].ld_vaddr;
            cmt1_inst_st_en  <= diff[1].inst_st_en;
            cmt1_st_paddr    <= diff[1].st_paddr;
            cmt1_st_vaddr    <= diff[1].st_vaddr;
            cmt1_st_data     <= diff[1].st_data;
            cmt1_csr_rstat_en<= diff[1].csr_rstat_en;
            cmt1_csr_data    <= diff[1].csr_data;

            cmt1_wen         <= diff[1].debug_wb_rf_wen;
            cmt1_wdest       <= {3'd0, diff[1].debug_wb_rf_wnum};

            cmt1_wdata       <= diff[1].debug_wb_rf_wdata;
            cmt1_pc          <= diff[1].debug_wb_pc;
            cmt1_inst        <= diff[1].debug_wb_inst;

            cmt1_excp_flush  <= diff[1].excp_flush;
            cmt1_ertn        <= diff[1].ertn_flush;
            cmt1_csr_ecode   <= diff[1].ecode;
            cmt1_tlbfill_en  <= diff[1].tlbfill_en;
            cmt_rand_index   <= cnt[4:0];  
        end
          
    end

    assign debug0_wb_inst = diff[0].debug_wb_inst;
    assign debug0_wb_pc = diff[0].debug_wb_pc;
    assign debug0_wb_rf_wen = diff[0].debug_wb_rf_wen;
    assign debug0_wb_rf_wnum = diff[0].debug_wb_rf_wnum;
    assign debug0_wb_rf_wdata = diff[0].debug_wb_rf_wdata;

    assign debug1_wb_inst = diff[1].debug_wb_inst;
    assign debug1_wb_pc = diff[1].debug_wb_pc;
    assign debug1_wb_rf_wen = diff[1].debug_wb_rf_wen;
    assign debug1_wb_rf_wnum = diff[1].debug_wb_rf_wnum;
    assign debug1_wb_rf_wdata = diff[1].debug_wb_rf_wdata;

    assign debug_wb_pc       = debug0_wb_pc      | debug1_wb_pc      ;
    assign debug_wb_rf_we    = debug0_wb_rf_wen  | debug1_wb_rf_wen  ;
    assign debug_wb_rf_wnum  = debug0_wb_rf_wnum | debug1_wb_rf_wnum ;
    assign debug_wb_rf_wdata = debug0_wb_rf_wdata| debug1_wb_rf_wdata;



    logic [63:0] inst_num;
    always_ff @( posedge aclk ) begin
        if (rst) begin
            inst_num <= 0;
        end else if (diff[0].inst_valid && diff[1].inst_valid) begin
            inst_num <= inst_num + 2;
        end else if (diff[0].inst_valid || diff[1].inst_valid) begin
            inst_num <= inst_num + 1;
        end else begin
            inst_num <= inst_num;
        end
    end

    always @(posedge aclk) begin
        if (rst) begin
            {trap, trap_code, cycleCnt, instrCnt} <= 0;
        end else begin
            trap            <= 0                        ;
            trap_code       <= 0                        ;
            cycleCnt        <= cycleCnt + 1             ;
            instrCnt        <= instrCnt;
        end
    end

    logic excp_flush;
    bus32_t excp_pc;
    bus32_t excp_inst;
    
    always_comb begin
        if (cmt0_excp_flush) begin
            excp_flush = cmt0_excp_flush;
            excp_pc = cmt0_pc;
            excp_inst = cmt0_inst;
        end else begin
            excp_flush = cmt1_excp_flush;
            excp_pc = cmt1_pc;
            excp_inst = cmt1_inst;
        end
    end
    

//    DifftestInstrCommit DifftestInstrCommit_0(
//        .clock              (aclk           ),
//        .coreid             (0              ),
//        .index              (0     ),
//        .valid              (cmt0_valid   ),
//        .pc                 (cmt0_pc      ),
//        .instr              (cmt0_inst    ),
//        .skip               (0              ),
//        .is_TLBFILL         (cmt0_tlbfill_en),
//        .TLBFILL_index      (cmt_rand_index ),
//        .is_CNTinst         (cmt0_cnt_inst),
//        .timer_64_value     (cmt0_timer_64),
//        .wen                (cmt0_wen     ),
//        .wdest              (cmt0_wdest   ),
//        .wdata              (cmt0_wdata   ),
//        .csr_rstat          (cmt0_csr_rstat_en),
//        .csr_data           (cmt0_csr_data)
//    );

//    DifftestInstrCommit DifftestInstrCommit_1(
//        .clock              (aclk           ),
//        .coreid             (0              ),
//        .index              (1    ),
//        .valid              (cmt1_valid   ),
//        .pc                 (cmt1_pc      ),
//        .instr              (cmt1_inst    ),
//        .skip               (0              ),
//        .is_TLBFILL         (cmt1_tlbfill_en),
//        .TLBFILL_index      (cmt_rand_index ),
//        .is_CNTinst         (cmt1_cnt_inst),
//        .timer_64_value     (cmt1_timer_64),
//        .wen                (cmt1_wen     ),
//        .wdest              (cmt1_wdest   ),
//        .wdata              (cmt1_wdata   ),
//        .csr_rstat          (cmt1_csr_rstat_en),
//        .csr_data           (cmt1_csr_data)
//    );



//    DifftestExcpEvent DifftestExcpEvent(
//        .clock              (aclk           ),
//        .coreid             (0              ),
//        .excp_valid         (excp_flush     ),
//        .eret               (cmt0_ertn      ),
//        .intrNo             (csr_estat_diff_0[12:2]),
//        .cause              (cmt0_csr_ecode ),
//        .exceptionPC        (excp_pc        ),
//        .exceptionInst      (excp_inst      )
//    );

//    DifftestTrapEvent DifftestTrapEvent(
//        .clock              (aclk           ),
//        .coreid             (0              ),
//        .valid              (trap           ),
//        .code               (trap_code      ),
//        .pc                 (cmt0_pc        ),
//        .cycleCnt           (cycleCnt       ),
//        .instrCnt           (instrCnt       )
//    );
     
//    DifftestStoreEvent DifftestStoreEvent0(
//        .clock              (aclk             ),
//        .coreid             (0                ),
//        .index              (0                ),
//        .valid              (cmt0_inst_st_en),
//        .storePAddr         (cmt0_st_paddr  ),
//        .storeVAddr         (cmt0_st_vaddr  ),
//        .storeData          (cmt0_st_data   )
//    );

//    DifftestStoreEvent DifftestStoreEvent1(
//        .clock              (aclk             ),
//        .coreid             (0                ),
//        .index              (1                ),
//        .valid              (cmt1_inst_st_en),
//        .storePAddr         (cmt1_st_paddr  ),
//        .storeVAddr         (cmt1_st_vaddr  ),
//        .storeData          (cmt1_st_data   )
//    );

//    DifftestLoadEvent DifftestLoadEvent0(
//        .clock              (aclk             ),
//        .coreid             (0                ),
//        .index              (0                ),
//        .valid              (cmt0_inst_ld_en),
//        .paddr              (cmt0_ld_paddr  ),
//        .vaddr              (cmt0_ld_vaddr  )
//    );

//    DifftestLoadEvent DifftestLoadEvent1(
//        .clock              (aclk             ),
//        .coreid             (0                ),
//        .index              (1                ),
//        .valid              (cmt1_inst_ld_en),
//        .paddr              (cmt1_ld_paddr  ),
//        .vaddr              (cmt1_ld_vaddr  )
//    );

//    DifftestCSRRegState DifftestCSRRegState(
//        .clock              (aclk               ),
//        .coreid             (0                  ),
//        .crmd               (csr_crmd_diff_0    ),
//        .prmd               (csr_prmd_diff_0    ),
//        .euen               (0                  ),
//        .ecfg               (csr_ectl_diff_0    ),
//        .estat              (csr_estat_diff_0   ),
//        .era                (csr_era_diff_0     ),
//        .badv               (csr_badv_diff_0    ),
//        .eentry             (csr_eentry_diff_0  ),
//        .tlbidx             (csr_tlbidx_diff_0  ),
//        .tlbehi             (csr_tlbehi_diff_0  ),
//        .tlbelo0            (csr_tlbelo0_diff_0 ),
//        .tlbelo1            (csr_tlbelo1_diff_0 ),
//        .asid               (csr_asid_diff_0    ),
//        .pgdl               (csr_pgdl_diff_0    ),
//        .pgdh               (csr_pgdh_diff_0    ),
//        .save0              (csr_save0_diff_0   ),
//        .save1              (csr_save1_diff_0   ),
//        .save2              (csr_save2_diff_0   ),
//        .save3              (csr_save3_diff_0   ),
//        .tid                (csr_tid_diff_0     ),
//        .tcfg               (csr_tcfg_diff_0    ),
//        .tval               (csr_tval_diff_0    ),
//        .ticlr              (csr_ticlr_diff_0   ),
//        .llbctl             (csr_llbctl_diff_0  ),
//        .tlbrentry          (csr_tlbrentry_diff_0),
//        .dmw0               (csr_dmw0_diff_0    ),
//        .dmw1               (csr_dmw1_diff_0    )
//    );

//    DifftestGRegState DifftestGRegState(
//        .clock              (aclk       ),
//        .coreid             (0          ),
//        .gpr_0              (0          ),
//        .gpr_1              (regs_diff[1]   ),
//        .gpr_2              (regs_diff[2]   ),
//        .gpr_3              (regs_diff[3]   ),
//        .gpr_4              (regs_diff[4]   ),
//        .gpr_5              (regs_diff[5]   ),
//        .gpr_6              (regs_diff[6]   ),
//        .gpr_7              (regs_diff[7]   ),
//        .gpr_8              (regs_diff[8]   ),
//        .gpr_9              (regs_diff[9]   ),
//        .gpr_10             (regs_diff[10]   ),
//        .gpr_11             (regs_diff[11]   ),
//        .gpr_12             (regs_diff[12]   ),
//        .gpr_13             (regs_diff[13]   ),
//        .gpr_14             (regs_diff[14]   ),
//        .gpr_15             (regs_diff[15]   ),
//        .gpr_16             (regs_diff[16]   ),
//        .gpr_17             (regs_diff[17]   ),
//        .gpr_18             (regs_diff[18]   ),
//        .gpr_19             (regs_diff[19]   ),
//        .gpr_20             (regs_diff[20]   ),
//        .gpr_21             (regs_diff[21]   ),
//        .gpr_22             (regs_diff[22]   ),
//        .gpr_23             (regs_diff[23]   ),
//        .gpr_24             (regs_diff[24]   ),
//        .gpr_25             (regs_diff[25]   ),
//        .gpr_26             (regs_diff[26]   ),
//        .gpr_27             (regs_diff[27]   ),
//        .gpr_28             (regs_diff[28]   ),
//        .gpr_29             (regs_diff[29]   ),
//        .gpr_30             (regs_diff[30]   ),
//        .gpr_31             (regs_diff[31]   )
//    );
    `endif

endmodule
