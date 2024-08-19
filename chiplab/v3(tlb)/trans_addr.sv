//TLBIDX
`define INDEX     4:0
`define PS        29:24
`define NE        31
//TLBEHI
`define VPPN      31:13
//TLBELO
`define TLB_V      0
`define TLB_D      1
`define TLB_PLV    3:2
`define TLB_MAT    5:4
`define TLB_G      6
`define TLB_PPN    31:8
`define TLB_PPN_EN 27:8   //todo


//DMW
`define PLV0      0
`define PLV3      3 
`define DMW_MAT   5:4
`define PSEG      27:25
`define VSEG      31:29

`include "csr_defines.sv"

module trans_addr
#(
    parameter TLBNUM = 32
)
(
    input                  clk                  ,
    input                  rst                  ,

    icache_transaddr       icache2transaddr     ,
    dcache_transaddr       dcache2transaddr     ,
    ex_tlb                 ex2tlb               ,
    csr_tlb                csr2tlb              ,
    transaddr_tlb          transaddr2tlb        ,

    output logic           iuncache             ,
    output logic           tlb_stall_pc             ,
    output logic           tlb_stall_mem            
);

logic pg_mode;
logic da_mode;
assign pg_mode = !csr2tlb.csr_da &&  csr2tlb.csr_pg;//地址翻译模式为分页模式
assign da_mode =  csr2tlb.csr_da && !csr2tlb.csr_pg;

logic inst_dmw0_en_a,inst_dmw1_en_a,inst_dmw0_en_b,inst_dmw1_en_b;
assign inst_dmw0_en_a = ((csr2tlb.csr_dmw0[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw0[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_a[31:29] == csr2tlb.csr_dmw0[`VSEG]) && pg_mode;
assign inst_dmw1_en_a = ((csr2tlb.csr_dmw1[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw1[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_a[31:29] == csr2tlb.csr_dmw1[`VSEG]) && pg_mode;
assign inst_dmw0_en_b = ((csr2tlb.csr_dmw0[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw0[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_b[31:29] == csr2tlb.csr_dmw0[`VSEG]) && pg_mode;
assign inst_dmw1_en_b = ((csr2tlb.csr_dmw1[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw1[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_b[31:29] == csr2tlb.csr_dmw1[`VSEG]) && pg_mode;

logic data_dmw0_en,data_dmw1_en;
assign data_dmw0_en = ((csr2tlb.csr_dmw0[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw0[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw0[`VSEG]) && pg_mode;
assign data_dmw1_en = ((csr2tlb.csr_dmw1[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw1[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw1[`VSEG]) && pg_mode;

logic inst_addr_trans_en_a, inst_addr_trans_en_b,data_addr_trans_en;
assign inst_addr_trans_en_a = pg_mode && !inst_dmw0_en_a && !inst_dmw1_en_a;
assign inst_addr_trans_en_b = pg_mode && !inst_dmw0_en_b && !inst_dmw1_en_b;
assign data_addr_trans_en = pg_mode && !data_dmw0_en && !data_dmw1_en && !dcache2transaddr.cacop_op_mode_di;




//转换出来的物理地址
wire [31:0] inst_reflect_paddr_a;//指令地址转换结果的物理地址
wire [31:0] inst_reflect_paddr_b;
wire [31:0] data_reflect_paddr;//数据地址转换结果的物理地址

logic [31:0] inst_page_paddr_a;
logic [31:0] inst_page_paddr_b;
logic [31:0] data_page_paddr  ;
logic inst_page_ret_a, inst_page_ret_b, data_page_ret;

always_ff @( posedge clk ) begin
    inst_page_ret_a   <= transaddr2tlb.tlb_ret_inst_a;
    inst_page_ret_b   <= transaddr2tlb.tlb_ret_inst_b;
    data_page_ret     <= transaddr2tlb.tlb_ret_data;
    inst_page_paddr_a <= (transaddr2tlb.s0_ps_a == 6'd12) ? transaddr2tlb.s0_ppn_a : {transaddr2tlb.s0_ppn_a[19:10], inst_reflect_paddr_a[21:12]};
    inst_page_paddr_b <= (transaddr2tlb.s0_ps_b == 6'd12) ? transaddr2tlb.s0_ppn_b : {transaddr2tlb.s0_ppn_b[19:10], inst_reflect_paddr_b[21:12]};
    data_page_paddr   <= (transaddr2tlb.s1_ps == 6'd12) ? transaddr2tlb.s1_ppn : {transaddr2tlb.s1_ppn[19:10], data_reflect_paddr[21:12]};
end

//存转换出来的物理地址
logic [4:0]inst_offset_a,inst_offset_b,data_offset;
logic [6:0]inst_index_a,inst_index_b,data_index;
logic [19:0]inst_tag_a,inst_tag_b,data_tag;
//指令直接映射物理地址
assign inst_reflect_paddr_a = (inst_dmw0_en_a) ? {csr2tlb.csr_dmw0[`PSEG], icache2transaddr.inst_vaddr_a[28:0]} :
                    (inst_dmw1_en_a) ? {csr2tlb.csr_dmw1[`PSEG], icache2transaddr.inst_vaddr_a[28:0]} : icache2transaddr.inst_vaddr_a;
// always_ff @( posedge clk ) begin
//     inst_offset_a <= icache2transaddr.inst_vaddr_a[4:0];
//     inst_index_a  <= icache2transaddr.inst_vaddr_a[11:5];
//     // inst_tag_a    <= (inst_addr_trans_en_a&transaddr2tlb.tlb_ret_inst_a) ? ((transaddr2tlb.s0_ps_a == 6'd12) ? transaddr2tlb.s0_ppn_a : {transaddr2tlb.s0_ppn_a[19:10], inst_reflect_paddr_a[21:12]}) : inst_reflect_paddr_a[31:12];
//     inst_tag_a    <= inst_page_ret_a ? inst_page_paddr_a : inst_reflect_paddr_a[31:12];
//     // inst_tag_a    <= inst_reflect_paddr_a[31:12];
// end

assign inst_reflect_paddr_b = (inst_dmw0_en_b) ? {csr2tlb.csr_dmw0[`PSEG], icache2transaddr.inst_vaddr_b[28:0]} :
                    (inst_dmw1_en_b) ? {csr2tlb.csr_dmw1[`PSEG], icache2transaddr.inst_vaddr_b[28:0]} : icache2transaddr.inst_vaddr_b;

// always_ff @( posedge clk ) begin
//     inst_offset_b <= icache2transaddr.inst_vaddr_b[4:0];
//     inst_index_b  <= icache2transaddr.inst_vaddr_b[11:5];
//     inst_tag_b    <= inst_page_ret_b ? inst_page_paddr_b : inst_reflect_paddr_b[31:12];
// end

//数据直接映射的物理地址
assign data_reflect_paddr = (data_dmw0_en && !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw0[`PSEG], dcache2transaddr.data_vaddr[28:0]} : 
                    (data_dmw1_en && !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw1[`PSEG], dcache2transaddr.data_vaddr[28:0]} : dcache2transaddr.data_vaddr;
always_ff @( posedge clk ) begin
    data_offset <= dcache2transaddr.data_vaddr[4:0];
    data_index  <= dcache2transaddr.data_vaddr[11:5];
    data_tag    <= data_page_ret ? data_page_paddr : data_reflect_paddr[31:12];
end

//接口返回物理地址
// assign icache2transaddr.ret_inst_paddr_a = {inst_tag_a, inst_index_a, inst_offset_a};
// assign icache2transaddr.ret_inst_paddr_b = {inst_tag_b, inst_index_b, inst_offset_b};
always_ff @( posedge clk ) begin
    icache2transaddr.inst_tag_a <= inst_addr_trans_en_a ? inst_page_paddr_a : inst_reflect_paddr_a[31:12];
    icache2transaddr.inst_tag_b <= inst_addr_trans_en_a ? inst_page_paddr_b : inst_reflect_paddr_b[31:12];
end
assign dcache2transaddr.ret_data_paddr   = {data_tag, data_index, data_offset};

//uncache信号
always_ff @( posedge clk ) begin
    icache2transaddr.uncache <= ((da_mode && (csr2tlb.csr_datf == 2'b0))        ||
                       (inst_dmw0_en_a && (csr2tlb.csr_dmw0[`DMW_MAT] == 2'b0))       ||
                       (inst_dmw1_en_a && (csr2tlb.csr_dmw1[`DMW_MAT] == 2'b0))||
                       ((inst_addr_trans_en_a && transaddr2tlb.tlb_ret_inst_a && (transaddr2tlb.mat_inst_a == 2'b0))))&&!rst;
end
assign iuncache = icache2transaddr.uncache;

always_ff @( posedge clk ) begin
    dcache2transaddr.uncache <= (da_mode&&(csr2tlb.csr_datm==2'b0))||
                                (data_dmw0_en&&(csr2tlb.csr_dmw0[`DMW_MAT]==2'b0))||
                                (data_dmw1_en&&(csr2tlb.csr_dmw1[`DMW_MAT]==2'b0))||
                                (data_addr_trans_en && transaddr2tlb.tlb_ret_data && transaddr2tlb.mat_data==2'b0);
end

// assign dcache2transaddr.uncache = 1;

//to tlb
always_ff @( posedge clk ) begin
    transaddr2tlb.s0_fetch_a    <= inst_addr_trans_en_a;
    transaddr2tlb.s0_fetch_b    <= inst_addr_trans_en_b;
    transaddr2tlb.s1_fetch      <= data_addr_trans_en | ex2tlb.tlbsrch_en;
    transaddr2tlb.s0_vppn_a     <= icache2transaddr.inst_vaddr_a[31:13];
    transaddr2tlb.s0_vppn_b     <= icache2transaddr.inst_vaddr_b[31:13];
    transaddr2tlb.s1_vppn       <= ex2tlb.tlbsrch_en ? csr2tlb.tlbehi[`VPPN] : dcache2transaddr.data_vaddr[31:13];
    transaddr2tlb.s0_odd_page_a <= icache2transaddr.inst_vaddr_a[12];
    transaddr2tlb.s0_odd_page_b <= icache2transaddr.inst_vaddr_b[12];
    transaddr2tlb.s1_odd_page   <= ex2tlb.tlbsrch_en ? 1'b0 : dcache2transaddr.data_vaddr[12];
end


logic tlbsrch_en,tlbrd_en;
always_ff @( posedge clk ) begin
    tlbsrch_en <= ex2tlb.tlbsrch_en;
    tlbrd_en <= ex2tlb.tlbrd_en;
end

always_ff @( posedge clk ) begin
    ex2tlb.tlbsrch_ret<=tlbsrch_en;
    ex2tlb.tlbrd_ret<=tlbrd_en;
end

//异常
logic tlb_inst_refill_a,tlb_inst_refill_b,tlb_inst_pif_a,tlb_inst_pif_b,tlb_inst_ppi_a,tlb_inst_ppi_b;
assign tlb_inst_refill_a = transaddr2tlb.s0_fetch_a&&transaddr2tlb.tlb_ret_inst_a&&(!transaddr2tlb.inst_tlb_found_a                );
assign tlb_inst_pif_a    = transaddr2tlb.s0_fetch_a&&transaddr2tlb.tlb_ret_inst_a&&(!transaddr2tlb.inst_tlb_v_a                    );
assign tlb_inst_ppi_a    = transaddr2tlb.s0_fetch_a&&transaddr2tlb.tlb_ret_inst_a&&( csr2tlb.csr_plv > transaddr2tlb.inst_tlb_plv_a);
assign tlb_inst_refill_b = transaddr2tlb.s0_fetch_b&&transaddr2tlb.tlb_ret_inst_b&&(!transaddr2tlb.inst_tlb_found_b                );
assign tlb_inst_pif_b    = transaddr2tlb.s0_fetch_b&&transaddr2tlb.tlb_ret_inst_b&&(!transaddr2tlb.inst_tlb_v_b                    );
assign tlb_inst_ppi_b    = transaddr2tlb.s0_fetch_b&&transaddr2tlb.tlb_ret_inst_b&&( csr2tlb.csr_plv > transaddr2tlb.inst_tlb_plv_b);

assign ex2tlb.tlb_inst_exception_cause[0] = tlb_inst_refill_a?(`EXCEPTION_TLBR):(
    tlb_inst_pif_a?(`EXCEPTION_PIF):(
        tlb_inst_ppi_a?(`EXCEPTION_PPI):(`EXCEPTION_NOP)
    )
);
assign ex2tlb.tlb_inst_exception_cause[1] = tlb_inst_refill_b?`EXCEPTION_TLBR:(
    tlb_inst_pif_b?`EXCEPTION_PIF:(
        tlb_inst_ppi_b?`EXCEPTION_PPI:`EXCEPTION_NOP
    )
);
assign ex2tlb.tlb_inst_exception[0] = tlb_inst_refill_a||tlb_inst_pif_a||tlb_inst_ppi_a;
assign ex2tlb.tlb_inst_exception[1] = tlb_inst_refill_b||tlb_inst_pif_b||tlb_inst_ppi_b;


//data
logic tlb_data_refill,tlb_data_pil,tlb_data_pis,tlb_data_ppi,tlb_data_pme;
assign tlb_data_refill = transaddr2tlb.s1_fetch && transaddr2tlb.tlb_ret_data && !transaddr2tlb.data_tlb_found;
assign tlb_data_pil    = transaddr2tlb.s1_fetch && transaddr2tlb.tlb_ret_data && !dcache2transaddr.store && !transaddr2tlb.data_tlb_v;
assign tlb_data_pis    = transaddr2tlb.s1_fetch && transaddr2tlb.tlb_ret_data && dcache2transaddr.store  && !transaddr2tlb.data_tlb_v;
assign tlb_data_ppi    = transaddr2tlb.s1_fetch && transaddr2tlb.tlb_ret_data && transaddr2tlb.data_tlb_v && (csr2tlb.csr_plv > transaddr2tlb.data_tlb_plv);
assign tlb_data_pme    = transaddr2tlb.s1_fetch && transaddr2tlb.tlb_ret_data && dcache2transaddr.store && transaddr2tlb.data_tlb_v && (csr2tlb.csr_plv <= transaddr2tlb.data_tlb_plv) && !transaddr2tlb.data_tlb_d;

assign ex2tlb.tlb_data_exception_cause=tlb_data_refill?(`EXCEPTION_TLBR):(
        tlb_data_pil?(`EXCEPTION_PIL):(
            tlb_data_pis?(`EXCEPTION_PIS):(
                tlb_data_ppi?(`EXCEPTION_PPI):(
                    tlb_data_pme?(`EXCEPTION_PME):(`EXCEPTION_NOP)
                )
            )
        )
);
assign ex2tlb.tlb_data_exception=tlb_data_refill||tlb_data_pil||tlb_data_pis||tlb_data_ppi||tlb_data_pme;

assign ex2tlb.tlbrd_valid=transaddr2tlb.r_e;

assign dcache2transaddr.tlb_exception=tlb_data_refill||tlb_data_pil||tlb_data_pis||tlb_data_ppi||tlb_data_pme;
assign icache2transaddr.tlb_exception=tlb_inst_refill_a||tlb_inst_pif_a||tlb_inst_ppi_a||tlb_inst_refill_b||tlb_inst_pif_b||tlb_inst_ppi_b;

assign tlb_stall_pc = inst_addr_trans_en_a & !inst_page_ret_a;
assign tlb_stall_mem = data_addr_trans_en & !data_page_ret;


endmodule