`timescale 1ns / 1ps

module core_top (
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

    input break_point,
    input infor_flag,
    input [4: 0] reg_num,
    output ws_valid,
    output rf_rdata, 
    //debug info
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
    // wire[3:0] dcache_wr_wstrb;
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

    // difftest
    // wire    [1:0][31:0]  debug_wb_pc      ;
    // wire    [1:0][ 3:0]  debug_wb_rf_wen  ;
    // wire    [1:0][ 4:0]  debug_wb_rf_wnum ;
    // wire    [1:0][31:0]  debug_wb_rf_wdata;
    // wire    [1:0][31:0]  debug_wb_inst    ;
    // // from wb_stage
    // wire    [1:0]        inst_valid_diff  ;
    // wire    [1:0]        cnt_inst_diff    ;
    // wire    [1:0][63:0]  timer_64_diff    ;
    // wire    [1:0][ 7:0]  inst_ld_en_diff  ;
    // wire    [1:0][31:0]  ld_paddr_diff    ;
    // wire    [1:0][31:0]  ld_vaddr_diff    ;
    // wire    [1:0][ 7:0]  inst_st_en_diff  ;
    // wire    [1:0][31:0]  st_paddr_diff    ;
    // wire    [1:0][31:0]  st_vaddr_diff    ;
    // wire    [1:0][31:0]  st_data_diff     ;
    // wire    [1:0]        csr_rstat_en_diff;
    // wire    [1:0][31:0]  csr_data_diff    ;
    // wire    [1:0]        excp_flush       ;
    // wire    [1:0]        ertn_flush       ;
    // wire    [1:0][5: 0]  ecode            ;
    wire    [1:0]        tlbfill_en       ;
    wire    [ 4:0]  rand_index            ;

    reg     [1:0]        cmt_valid        ;
    reg     [1:0]        cmt_cnt_inst     ;
    reg     [1:0][63:0]  cmt_timer_64     ;
    reg     [1:0][ 7:0]  cmt_inst_ld_en   ;
    reg     [1:0][31:0]  cmt_ld_paddr     ;
    reg     [1:0][31:0]  cmt_ld_vaddr     ;
    reg     [1:0][ 7:0]  cmt_inst_st_en   ;
    reg     [1:0][31:0]  cmt_st_paddr     ;
    reg     [1:0][31:0]  cmt_st_vaddr     ;
    reg     [1:0][31:0]  cmt_st_data      ;
    reg     [1:0]        cmt_csr_rstat_en ;
    reg     [1:0][31:0]  cmt_csr_data     ;
 
    reg     [1:0]        cmt_wen          ;
    reg     [1:0][ 7:0]  cmt_wdest        ;
    reg     [1:0][31:0]  cmt_wdata        ;
    reg     [1:0][31:0]  cmt_pc           ;
    reg     [1:0][31:0]  cmt_inst         ;
  
    reg     [1:0]        cmt_excp_flush   ;
    reg     [1:0]        cmt_ertn         ;
    reg     [1:0][5:0]   cmt_csr_ecode    ;
    reg     [1:0]        cmt_tlbfill_en   ;
    reg     [4:0]   cmt_rand_index        ;

    // to difftest debug
    reg             trap                  ;
    reg     [ 7:0]  trap_code             ;
    reg     [63:0]  cycleCnt              ;
    reg     [63:0]  instrCnt              ;
 
    // from regfile 
    wire    [31:0]  regs[0:31]            ;
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


    logic [7:0] flush;
    logic [7:0] pause;
    cache_inst_t cache_inst;

    mem_dcache mem_dcache_io ();
    pc_icache pc_icache_io ();
    frontend_backend frontend_backend_io ();
    icache_transaddr icache_transaddr_io ();
    dispatch_regfile dispatch_regfile_io ();
    logic [1:0] reg_write_en;
    logic [1:0][4:0] reg_write_addr;
    logic [1:0][31:0] reg_write_data;


    logic [1:0] pre_is_branch;
    logic [1:0] pre_is_branch_taken;
    bus32_t [1:0] pre_branch_addr;

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign pre_is_branch[i] = frontend_backend_io.slave.branch_info[i].is_branch;
            assign pre_is_branch_taken[i] = frontend_backend_io.slave.branch_info[i].pre_taken_or_not;
            assign pre_branch_addr[i] = frontend_backend_io.slave.branch_info[i].pre_branch_addr;
        end
    endgenerate

    backend_top u_backend_top (
        .clk(aclk),
        .rst,

        .pc  (frontend_backend_io.slave.inst_and_pc_o.pc_o),
        .inst(frontend_backend_io.slave.inst_and_pc_o.inst_o),

        .pre_is_branch,
        .pre_is_branch_taken,
        .pre_branch_addr,

        .is_exception(frontend_backend_io.slave.inst_and_pc_o.is_exception),
        .exception_cause(frontend_backend_io.slave.inst_and_pc_o.exception_cause),

        .is_interrupt(frontend_backend_io.slave.is_interrupt),
        .new_pc(frontend_backend_io.slave.new_pc),

        .update_info(frontend_backend_io.slave.update_info),
        .send_inst_en(frontend_backend_io.slave.send_inst_en),

        .dcache_master(mem_dcache_io.master),
        .cache_inst(cache_inst),

        .flush(flush),
        .pause(pause),

        .dispatch_master(dispatch_regfile_io.master),
        .reg_write_en,
        .reg_write_addr,
        .reg_write_data,

        .diff,
        .cnt,

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
    );

    regfile u_regfile (
        .clk(aclk),
        .rst,

        .reg_write_en,
        .reg_write_addr,
        .reg_write_data,

        .slave(dispatch_regfile_io.slave)
    );

    assign frontend_backend_io.slave.flush = {flush[2], flush[0]};
    assign frontend_backend_io.slave.pause = {pause[2], pause[0]};

    frontend_top_d u_frontend_top_d (
        .clk(aclk),
        .rst,

        .pi_master(pc_icache_io.master),
        .fb_master(frontend_backend_io.master)
    );

    logic icache_cacop;
    logic dcache_cacop;
    assign icache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2:0] == 3'b0);
    assign dcache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2:0] == 3'b1);

    trans_addr u_trans_addr(
        .clk(aclk),
        .icache2transaddr(icache_transaddr_io.slave)
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
        .icacop_op_mode(cache_inst.cacop_code[4:3]),
        .icacop_addr(cache_inst.addr),

        .iucache_ren_i(iucache_ren_i),
        .iucache_addr_i(iucache_addr_i),
        .iucache_rvalid_o(iucache_rvalid_o),
        .iucache_rdata_o(iucache_rdata_o)

    );

    dcache u_dcache (
        .clk(aclk),
        .reset(rst),
        .mem2dcache(mem_dcache_io.slave),
        .dcache_uncache(mem_dcache_io.uncache_en),

        .rd_req  (dcache_rd_req),
        .rd_type (dcache_rd_type),
        .rd_addr (dcache_rd_addr),
        .wr_req  (dcache_wr_req),
        .wr_addr (dcache_wr_addr),
        .wr_wstrb(dcache_wr_wstrb),
        .wr_data (dcache_wr_data),

        .wr_rdy(dcache_wr_rdy),
        .rd_rdy(dcache_rd_rdy),
        .ret_data(dcache_ret_data),
        .ret_valid(dcache_ret_valid),

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
        .rst(rst),      // 高有效

        .cache_wsel_i(ducache_strb),
        
        // ICache: Read Channel
        .inst_ren_i(icache_rd_req),         // icache_rd_req
        .inst_araddr_i(icache_rd_addr),     // icache_rd_addr
        .inst_rvalid_o(icache_ret_valid),   // icache_ret_valid 读完8个32位数据之后才给高有效信号
        .inst_rdata_o(icache_ret_data),     // icache_ret_data
        
        // DCache: Read Channel
        .data_ren_i(dcache_rd_req),         // dcache_rd_req
        .data_araddr_i(dcache_rd_addr),     // dcache_rd_addr
        .data_rvalid_o(dcache_ret_valid),   // dcache_ret_valid 写完8个32位信号之后才给高有效信号
        .data_rdata_o(dcache_ret_data),     // dcache_ret_data
        
        // DCache: Write Channel
        .data_wen_i(dcache_wr_req),         // dcache_wr_req
        .data_wdata_i(dcache_wr_data),      // dcache_wr_data
        .data_awaddr_i(dcache_wr_addr),     // dcache_wr_addr
        .data_bvalid_o(data_bvalid_o),      // 在顶层模块直接定义     wire   data_bvalid_o; 模块内会给它赋值并输出
        
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
        .resetn(aresetn),     // 低有效
        .flush(1'b0),         // 给定值0，忽略该信号
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
        .cache_wlast(axi_wlast_o),  // Cache写最后一个数据 axi_wlast_o
        .wdata_resp_o(wdata_resp_i), // 写响应信号，每个beat发一次，成功则可以传下一数据   wdata_resp_i

        // AXI接口
        .cache_burst_type(cache_burst_type),          // 固定为增量突发（地址递增的突发），2'b01
        .cache_burst_size(cache_burst_size),          // 固定为四个字节， 3'b010
        .cacher_burst_length(axi_rlen_o),       // 固定为8， 8'b00000111 axi_rlen_o   单位到底是transfer还是byte啊，注意这个点，我也不太确定，大概率是transfer
        .cachew_burst_length(axi_wlen_o),       // 固定为8， 8'b00000111 axi_wlen_o   A(W/R)LEN 表示传输的突发长度（burst length），其值为实际传输数据的数量减 1
                                                            // wire [1:0]   cache_burst_type;            顶层模块直接给这两个值赋定值就行
                                                            // wire [2:0]    burst_size;
                                                            // assign cache_burst_type = 2'b01;
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

    always @(posedge aclk) begin
        cmt_valid       [0]<= diff[0].inst_valid;
        cmt_cnt_inst    [0]<= diff[0].cnt_inst;
        cmt_timer_64    [0]<= cnt;
        cmt_inst_ld_en  [0]<= diff[0].inst_ld_en;
        cmt_ld_paddr    [0]<= diff[0].ld_paddr;
        cmt_ld_vaddr    [0]<= diff[0].ld_vaddr;
        cmt_inst_st_en  [0]<= diff[0].inst_st_en;
        cmt_st_paddr    [0]<= diff[0].st_paddr;
        cmt_st_vaddr    [0]<= diff[0].st_vaddr;
        cmt_st_data     [0]<= mem_dcache_io.wdata;
        cmt_csr_rstat_en[0]<= diff[0].csr_rstat_en;
        cmt_csr_data    [0]<= diff[0].csr_data;

        cmt_wen         [0]<= diff[0].debug_wb_rf_wen;
        cmt_wdest       [0]<= {3'd0, diff[0].debug_wb_rf_wnum};

        cmt_wdata       [0]<= diff[0].debug_wb_rf_wdata;
        cmt_pc          [0]<= diff[0].debug_wb_pc;
        cmt_inst        [0]<= diff[0].debug_wb_inst;

        cmt_excp_flush  [0]<= diff[0].excp_flush;
        cmt_ertn        [0]<= diff[0].ertn_flush;
        cmt_csr_ecode   [0]<= diff[0].ecode;
        cmt_tlbfill_en  [0]<= tlbfill_en         [0];   

        cmt_valid       [1]<= diff[1].inst_valid;
        cmt_cnt_inst    [1]<= diff[1].cnt_inst;
        cmt_timer_64    [1]<= cnt;
        cmt_inst_ld_en  [1]<= diff[1].inst_ld_en;
        cmt_ld_paddr    [1]<= diff[1].ld_paddr;
        cmt_ld_vaddr    [1]<= diff[1].ld_vaddr;
        cmt_inst_st_en  [1]<= diff[1].inst_st_en;
        cmt_st_paddr    [1]<= diff[1].st_paddr;
        cmt_st_vaddr    [1]<= diff[1].st_vaddr;
        cmt_st_data     [1]<= mem_dcache_io.wdata;
        cmt_csr_rstat_en[1]<= diff[1].csr_rstat_en;
        cmt_csr_data    [1]<= diff[1].csr_data;

        cmt_wen         [1]<= diff[1].debug_wb_rf_wen;
        cmt_wdest       [1]<= {3'd0, diff[1].debug_wb_rf_wnum};

        cmt_wdata       [1]<= diff[1].debug_wb_rf_wdata;
        cmt_pc          [1]<= diff[1].debug_wb_pc;
        cmt_inst        [1]<= diff[1].debug_wb_inst;

        cmt_excp_flush  [1]<= diff[1].excp_flush;
        cmt_ertn        [1]<= diff[1].ertn_flush;
        cmt_csr_ecode   [1]<= diff[1].ecode;
        cmt_tlbfill_en  [1]<= tlbfill_en         [1];
        cmt_rand_index     <= rand_index            ;    
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
    

    DifftestInstrCommit DifftestInstrCommit_0(
        .clock              (aclk           ),
        .coreid             (0              ),
        .index              (0              ),
        .valid              (cmt_valid[0]   ),
        .pc                 (cmt_pc[0]      ),
        .instr              (cmt_inst[0]    ),
        .skip               (0              ),
        // .is_TLBFILL         (cmt_tlbfill_en[0]),
        .is_TLBFILL         (0),
        // .TLBFILL_index      (cmt_rand_index ),
        .TLBFILL_index      (0),
        .is_CNTinst         (cmt_cnt_inst[0]),
        .timer_64_value     (cmt_timer_64[0]),
        .wen                (cmt_wen     [0]),
        .wdest              (cmt_wdest   [0]),
        .wdata              (cmt_wdata   [0]),
        .csr_rstat          (cmt_csr_rstat_en[0]),
        .csr_data           (cmt_csr_data[0])
    );

    // DifftestInstrCommit DifftestInstrCommit_1(
    //     .clock              (aclk           ),
    //     .coreid             (0              ),
    //     .index              (1              ),
    //     .valid              (cmt_valid[1]   ),
    //     .pc                 (cmt_pc[1]      ),
    //     .instr              (cmt_inst[1]    ),
    //     .skip               (0              ),
    //     // .is_TLBFILL         (cmt_tlbfill_en[1]),
    //     .is_TLBFILL         (0),
    //     // .TLBFILL_index      (cmt_rand_index ),
    //     .TLBFILL_index      (0),
    //     .is_CNTinst         (cmt_cnt_inst[1]),
    //     .timer_64_value     (cmt_timer_64[1]),
    //     .wen                (cmt_wen     [1]),
    //     .wdest              (cmt_wdest   [1]),
    //     .wdata              (cmt_wdata   [1]),
    //     .csr_rstat          (cmt_csr_rstat_en[1]),
    //     .csr_data           (cmt_csr_data[1])
    // );


    DifftestExcpEvent DifftestExcpEvent(
        .clock              (aclk           ),
        .coreid             (0              ),
        .excp_valid         (cmt_excp_flush[0] | cmt_excp_flush[1]),
        .eret               (cmt_ertn      [0] | cmt_ertn      [1]),
        .intrNo             (csr_estat_diff_0[12:2]),
        .cause              (cmt_csr_ecode [0]),
        .exceptionPC        (cmt_pc        [0]),
        .exceptionInst      (cmt_inst      [0])
    );

    DifftestTrapEvent DifftestTrapEvent(
        .clock              (aclk           ),
        .coreid             (0              ),
        .valid              (trap           ),
        .code               (trap_code      ),
        .pc                 (cmt_pc[0]      ),
        .cycleCnt           (cycleCnt       ),
        .instrCnt           (instrCnt       )
    );

    DifftestStoreEvent DifftestStoreEvent0(
        .clock              (aclk             ),
        .coreid             (0                ),
        .index              (0                ),
        .valid              (cmt_inst_st_en[0]),
        .storePAddr         (cmt_st_paddr  [0]),
        .storeVAddr         (cmt_st_vaddr  [0]),
        .storeData          (cmt_st_data   [0])
    );

    // DifftestStoreEvent DifftestStoreEvent1(
    //     .clock              (aclk             ),
    //     .coreid             (0                ),
    //     .index              (1                ),
    //     .valid              (cmt_inst_st_en[1]),
    //     .storePAddr         (cmt_st_paddr  [1]),
    //     .storeVAddr         (cmt_st_vaddr  [1]),
    //     .storeData          (cmt_st_data   [1])
    // );

    DifftestLoadEvent DifftestLoadEvent0(
        .clock              (aclk             ),
        .coreid             (0                ),
        .index              (0                ),
        .valid              (cmt_inst_ld_en[0]),
        .paddr              (cmt_ld_paddr  [0]),
        .vaddr              (cmt_ld_vaddr  [0])
    );

    // DifftestLoadEvent DifftestLoadEvent1(
    //     .clock              (aclk             ),
    //     .coreid             (0                ),
    //     .index              (1                ),
    //     .valid              (cmt_inst_ld_en[1]),
    //     .paddr              (cmt_ld_paddr  [1]),
    //     .vaddr              (cmt_ld_vaddr  [1])
    // );

    DifftestCSRRegState DifftestCSRRegState(
        .clock              (aclk               ),
        .coreid             (0                  ),
        .crmd               (csr_crmd_diff_0    ),
        .prmd               (csr_prmd_diff_0    ),
        .euen               (0                  ),
        .ecfg               (csr_ectl_diff_0    ),
        .estat              (csr_estat_diff_0   ),
        .era                (csr_era_diff_0     ),
        .badv               (csr_badv_diff_0    ),
        .eentry             (csr_eentry_diff_0  ),
        .tlbidx             (csr_tlbidx_diff_0  ),
        .tlbehi             (csr_tlbehi_diff_0  ),
        .tlbelo0            (csr_tlbelo0_diff_0 ),
        .tlbelo1            (csr_tlbelo1_diff_0 ),
        .asid               (csr_asid_diff_0    ),
        .pgdl               (csr_pgdl_diff_0    ),
        .pgdh               (csr_pgdh_diff_0    ),
        .save0              (csr_save0_diff_0   ),
        .save1              (csr_save1_diff_0   ),
        .save2              (csr_save2_diff_0   ),
        .save3              (csr_save3_diff_0   ),
        .tid                (csr_tid_diff_0     ),
        .tcfg               (csr_tcfg_diff_0    ),
        .tval               (csr_tval_diff_0    ),
        .ticlr              (csr_ticlr_diff_0   ),
        .llbctl             (csr_llbctl_diff_0  ),
        .tlbrentry          (csr_tlbrentry_diff_0),
        .dmw0               (csr_dmw0_diff_0    ),
        .dmw1               (csr_dmw1_diff_0    )
    );

    DifftestGRegState DifftestGRegState(
        .clock              (aclk       ),
        .coreid             (0          ),
        .gpr_0              (0          ),
        .gpr_1              (u_regfile.ram[1]    ),
        .gpr_2              (u_regfile.ram[2]    ),
        .gpr_3              (u_regfile.ram[3]    ),
        .gpr_4              (u_regfile.ram[4]    ),
        .gpr_5              (u_regfile.ram[5]    ),
        .gpr_6              (u_regfile.ram[6]    ),
        .gpr_7              (u_regfile.ram[7]    ),
        .gpr_8              (u_regfile.ram[8]    ),
        .gpr_9              (u_regfile.ram[9]    ),
        .gpr_10             (u_regfile.ram[10]   ),
        .gpr_11             (u_regfile.ram[11]   ),
        .gpr_12             (u_regfile.ram[12]   ),
        .gpr_13             (u_regfile.ram[13]   ),
        .gpr_14             (u_regfile.ram[14]   ),
        .gpr_15             (u_regfile.ram[15]   ),
        .gpr_16             (u_regfile.ram[16]   ),
        .gpr_17             (u_regfile.ram[17]   ),
        .gpr_18             (u_regfile.ram[18]   ),
        .gpr_19             (u_regfile.ram[19]   ),
        .gpr_20             (u_regfile.ram[20]   ),
        .gpr_21             (u_regfile.ram[21]   ),
        .gpr_22             (u_regfile.ram[22]   ),
        .gpr_23             (u_regfile.ram[23]   ),
        .gpr_24             (u_regfile.ram[24]   ),
        .gpr_25             (u_regfile.ram[25]   ),
        .gpr_26             (u_regfile.ram[26]   ),
        .gpr_27             (u_regfile.ram[27]   ),
        .gpr_28             (u_regfile.ram[28]   ),
        .gpr_29             (u_regfile.ram[29]   ),
        .gpr_30             (u_regfile.ram[30]   ),
        .gpr_31             (u_regfile.ram[31]   )
    );

endmodule
