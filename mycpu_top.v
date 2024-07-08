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
    wire    [31:0]  debug_wb_pc      [1:0];
    wire    [ 3:0]  debug_wb_rf_wen  [1:0];
    wire    [ 4:0]  debug_wb_rf_wnum [1:0];
    wire    [31:0]  debug_wb_rf_wdata[1:0];
    wire    [31:0]  debug_wb_inst    [1:0];
    // from wb_stage
    wire            inst_valid_diff  [1:0];
    wire            cnt_inst_diff    [1:0];
    wire    [63:0]  timer_64_diff    [1:0];
    wire    [ 7:0]  inst_ld_en_diff  [1:0];
    wire    [31:0]  ld_paddr_diff    [1:0];
    wire    [31:0]  ld_vaddr_diff    [1:0];
    wire    [ 7:0]  inst_st_en_diff  [1:0];
    wire    [31:0]  st_paddr_diff    [1:0];
    wire    [31:0]  st_vaddr_diff    [1:0];
    wire    [31:0]  st_data_diff     [1:0];
    wire            csr_rstat_en_diff[1:0];
    wire    [31:0]  csr_data_diff    [1:0];
    wire            excp_flush       [1:0];
    wire            ertn_flush       [1:0];
    wire    [5: 0]  ws_csr_ecode     [1:0];
    wire            tlbfill_en       [1:0];
    wire    [ 4:0]  rand_index            ;

    reg             cmt_valid        [1:0];
    reg             cmt_cnt_inst     [1:0];
    reg     [63:0]  cmt_timer_64     [1:0];
    reg     [ 7:0]  cmt_inst_ld_en   [1:0];
    reg     [31:0]  cmt_ld_paddr     [1:0];
    reg     [31:0]  cmt_ld_vaddr     [1:0];
    reg     [ 7:0]  cmt_inst_st_en   [1:0];
    reg     [31:0]  cmt_st_paddr     [1:0];
    reg     [31:0]  cmt_st_vaddr     [1:0];
    reg     [31:0]  cmt_st_data      [1:0];
    reg             cmt_csr_rstat_en [1:0];
    reg     [31:0]  cmt_csr_data     [1:0];
 
    reg             cmt_wen          [1:0];
    reg     [ 7:0]  cmt_wdest        [1:0];
    reg     [31:0]  cmt_wdata        [1:0];
    reg     [31:0]  cmt_pc           [1:0];
    reg     [31:0]  cmt_inst         [1:0];
  
    reg             cmt_excp_flush   [1:0];
    reg             cmt_ertn         [1:0];
    reg     [5:0]   cmt_csr_ecode    [1:0];
    reg             cmt_tlbfill_en   [1:0];
    reg     [4:0]   cmt_rand_index        ;

    // to difftest debug
    reg             trap                  ;
    reg     [ 7:0]  trap_code             ;
    reg     [63:0]  cycleCnt              ;
    reg     [63:0]  instrCnt              ;
 
    // from regfile 
    wire    [31:0]  regs[31:0]            ;
  
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



    cpu u_cpu (
        .clk(aclk),
        .rst(rst),
        
        
        .icache_ret_valid(icache_ret_valid),
        .icache_ret_data(icache_ret_data),
        .icache_rd_req(icache_rd_req),
        .icache_rd_addr(icache_rd_addr),

        .iucache_ren_i(iucache_ren_i),
        .iucache_addr_i(iucache_addr_i),
        .iucache_rvalid_o(iucache_rvalid_o),
        .iucache_rdata_o(iucache_rdata_o),

        .dcache_wr_rdy(1'b1),
        .dcache_rd_rdy(1'b1),
        .dcache_ret_valid(dcache_ret_valid),
        .dcache_ret_data(dcache_ret_data),

        .dcache_rd_req(dcache_rd_req),
        .dcache_rd_type(dcache_rd_type),
        .dcache_rd_addr(dcache_rd_addr),
        .dcache_wr_req(dcache_wr_req),
        .dcache_wr_addr(dcache_wr_addr),
        // .dcache_wr_wstrb(dcache_wr_wstrb),
        .dcache_wr_data(dcache_wr_data),

        .ducache_ren_i(ducache_ren_i),
        .ducache_araddr_i(ducache_araddr_i),
        .ducache_rvalid_o(ducache_rvalid_o),
        .ducache_rdata_o(ducache_rdata_o),

        .ducache_wen_i(ducache_wen_i),
        .ducache_wdata_i(ducache_wdata_i),
        .ducache_awaddr_i(ducache_awaddr_i),
        .ducache_strb(ducache_strb),//改了个名
        .ducache_bvalid_o(ducache_bvalid_o),

        // diff
        .debug_wb_pc(debug_wb_pc),
        .debug_wb_rf_wen(debug_wb_rf_wen),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .debug_wb_rf_wdata(debug_wb_rf_wdata),
        .debug_wb_inst(debug_wb_inst),

        .inst_valid_diff(inst_valid_diff),
        .cnt_inst_diff(cnt_inst_diff),
        .csr_rstat_en_diff(csr_rstat_en_diff),
        .csr_data_diff(csr_data_diff),
        .timer_64_diff(timer_64_diff),

        .inst_st_en_diff(inst_st_en_diff),
        .st_paddr_diff(st_paddr_diff),
        .st_vaddr_diff(st_vaddr_diff),
        .st_data_diff(st_data_diff),

        .inst_ld_en_diff(inst_ld_en_diff),
        .ld_paddr_diff(ld_paddr_diff),
        .ld_vaddr_diff(ld_vaddr_diff),

        .excp_flush(excp_flush),
        .ertn_flush(ertn_flush),
        .ecode(ws_csr_ecode),

        .regs_diff(regs),

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


generate
    for (genvar i = 0; i < 2; i++) begin
        always @(posedge aclk) begin
            if (rst) begin
                {cmt_valid[i], cmt_cnt_inst[i], cmt_timer_64[i], cmt_inst_ld_en[i], cmt_ld_paddr[i], cmt_ld_vaddr[i], cmt_inst_st_en[i], cmt_st_paddr[i], cmt_st_vaddr[i], cmt_st_data[i], cmt_csr_rstat_en[i], cmt_csr_data[i]} <= 0;
                {cmt_wen[i], cmt_wdest[i], cmt_wdata[i], cmt_pc[i], cmt_inst[i]} <= 0;
            end else if (~trap) begin
                cmt_valid       [i]<= inst_valid_diff    [i];
                cmt_cnt_inst    [i]<= cnt_inst_diff      [i];
                cmt_timer_64    [i]<= timer_64_diff      [i];
                cmt_inst_ld_en  [i]<= inst_ld_en_diff    [i];
                cmt_ld_paddr    [i]<= ld_paddr_diff      [i];
                cmt_ld_vaddr    [i]<= ld_vaddr_diff      [i];
                cmt_inst_st_en  [i]<= inst_st_en_diff    [i];
                cmt_st_paddr    [i]<= st_paddr_diff      [i];
                cmt_st_vaddr    [i]<= st_vaddr_diff      [i];
                cmt_st_data     [i]<= st_data_diff       [i];
                cmt_csr_rstat_en[i]<= csr_rstat_en_diff  [i];
                cmt_csr_data    [i]<= csr_data_diff      [i];

                cmt_wen         [i]<=  debug_wb_rf_wen[i]         ;
                cmt_wdest       [i]<=  {3'd0, debug_wb_rf_wnum[i]};
                cmt_wdata       [i]<=  debug_wb_rf_wdata[i]       ;
                cmt_pc          [i]<=  debug_wb_pc[i]             ;
                cmt_inst        [i]<=  debug_wb_inst[i]           ;

                cmt_excp_flush  [i]<= excp_flush         [i];
                cmt_ertn        [i]<= ertn_flush         [i];
                cmt_csr_ecode   [i]<= ws_csr_ecode       [i];
                cmt_tlbfill_en  [i]<= tlbfill_en         [i];
                cmt_rand_index     <= rand_index            ;       
            end
        end
    end
endgenerate

    always @(posedge aclk) begin
        if (rst) begin
            {trap, trap_code, cycleCnt, instrCnt} <= 0;
        end else begin
            trap            <= 0                        ;
            trap_code       <= regs[10][7:0]            ;
            cycleCnt        <= cycleCnt + 1             ;
            instrCnt        <= instrCnt + inst_valid_diff[0] + inst_valid_diff[1];
        end
    end
    

    DifftestInstrCommit DifftestInstrCommit0(
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

    DifftestInstrCommit DifftestInstrCommit1(
        .clock              (aclk           ),
        .coreid             (0              ),
        .index              (0              ),
        .valid              (cmt_valid[1]   ),
        .pc                 (cmt_pc[1]      ),
        .instr              (cmt_inst[1]    ),
        .skip               (0              ),
        // .is_TLBFILL         (cmt_tlbfill_en[1]),
        .is_TLBFILL         (0),
        // .TLBFILL_index      (cmt_rand_index ),
        .TLBFILL_index      (0),
        .is_CNTinst         (cmt_cnt_inst[1]),
        .timer_64_value     (cmt_timer_64[1]),
        .wen                (cmt_wen     [1]),
        .wdest              (cmt_wdest   [1]),
        .wdata              (cmt_wdata   [1]),
        .csr_rstat          (cmt_csr_rstat_en[1]),
        .csr_data           (cmt_csr_data[1])
    );


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

    DifftestStoreEvent DifftestStoreEvent1(
        .clock              (aclk             ),
        .coreid             (0                ),
        .index              (1                ),
        .valid              (cmt_inst_st_en[1]),
        .storePAddr         (cmt_st_paddr  [1]),
        .storeVAddr         (cmt_st_vaddr  [1]),
        .storeData          (cmt_st_data   [1])
    );

    DifftestLoadEvent DifftestLoadEvent0(
        .clock              (aclk             ),
        .coreid             (0                ),
        .index              (0                ),
        .valid              (cmt_inst_ld_en[0]),
        .paddr              (cmt_ld_paddr  [0]),
        .vaddr              (cmt_ld_vaddr  [0])
    );

    DifftestLoadEvent DifftestLoadEvent1(
        .clock              (aclk             ),
        .coreid             (0                ),
        .index              (1                ),
        .valid              (cmt_inst_ld_en[1]),
        .paddr              (cmt_ld_paddr  [1]),
        .vaddr              (cmt_ld_vaddr  [1])
    );

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
        .gpr_1              (regs[1]    ),
        .gpr_2              (regs[2]    ),
        .gpr_3              (regs[3]    ),
        .gpr_4              (regs[4]    ),
        .gpr_5              (regs[5]    ),
        .gpr_6              (regs[6]    ),
        .gpr_7              (regs[7]    ),
        .gpr_8              (regs[8]    ),
        .gpr_9              (regs[9]    ),
        .gpr_10             (regs[10]   ),
        .gpr_11             (regs[11]   ),
        .gpr_12             (regs[12]   ),
        .gpr_13             (regs[13]   ),
        .gpr_14             (regs[14]   ),
        .gpr_15             (regs[15]   ),
        .gpr_16             (regs[16]   ),
        .gpr_17             (regs[17]   ),
        .gpr_18             (regs[18]   ),
        .gpr_19             (regs[19]   ),
        .gpr_20             (regs[20]   ),
        .gpr_21             (regs[21]   ),
        .gpr_22             (regs[22]   ),
        .gpr_23             (regs[23]   ),
        .gpr_24             (regs[24]   ),
        .gpr_25             (regs[25]   ),
        .gpr_26             (regs[26]   ),
        .gpr_27             (regs[27]   ),
        .gpr_28             (regs[28]   ),
        .gpr_29             (regs[29]   ),
        .gpr_30             (regs[30]   ),
        .gpr_31             (regs[31]   )
    );

endmodule
