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
    /*
    //trans mode
    input                  inst_addr_trans_en   ,//指令地址转换使能，assign inst_addr_trans_en = pg_mode && !dmw0_en && !dmw1_en;assign pg_mode = csr_pg && !csr_da;
    input                  data_addr_trans_en   ,//数据地址转换使能
    */
    icache_transaddr       icache2transaddr     ,
    dcache_transaddr       dcache2transaddr     ,
    // ex_tlb                 ex2tlb               ,
    csr_tlb                csr2tlb              ,

    /*
    //inst addr trans
    output                 inst_tlb_found       ,//指令地址在TLB中成功找�?
    output                 inst_tlb_v           ,//TLB这个数据有效
    output                 inst_tlb_d           ,//TLB这个数据为脏
    output [ 1:0]          inst_tlb_mat         ,//TLB这个数据的存储访问类�?
    output [ 1:0]          inst_tlb_plv         ,//TLB这个数据的特权等�?
    */
    

    output                 iuncache
);
// logic                 data_tlb_found       ;
// logic [ 4:0]          data_tlb_index       ;
// logic                 data_tlb_v           ;
// logic                 data_tlb_d           ;
// logic [ 1:0]          data_tlb_mat         ;
// logic [ 1:0]          data_tlb_plv         ;

logic pg_mode;
logic da_mode;

// logic inst_dmw0_en_a,inst_dmw1_en_a,inst_dmw0_en_b,inst_dmw1_en_b;
// assign inst_dmw0_en_a = ((csr2tlb.csr_dmw0[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw0[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_a[31:29] == csr2tlb.csr_dmw0[`VSEG]) && pg_mode;
// assign inst_dmw1_en_a = ((csr2tlb.csr_dmw1[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw1[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_a[31:29] == csr2tlb.csr_dmw1[`VSEG]) && pg_mode;
// assign inst_dmw0_en_b = ((csr2tlb.csr_dmw0[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw0[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_b[31:29] == csr2tlb.csr_dmw0[`VSEG]) && pg_mode;
// assign inst_dmw1_en_b = ((csr2tlb.csr_dmw1[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw1[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr_b[31:29] == csr2tlb.csr_dmw1[`VSEG]) && pg_mode;

logic data_dmw0_en,data_dmw1_en;
assign data_dmw0_en = ((csr2tlb.csr_dmw0[`PLV0] & csr2tlb.csr_plv == 2'd0) | (csr2tlb.csr_dmw0[`PLV3] & csr2tlb.csr_plv == 2'd3)) & (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw0[`VSEG]) & pg_mode;
assign data_dmw1_en = ((csr2tlb.csr_dmw1[`PLV0] & csr2tlb.csr_plv == 2'd0) | (csr2tlb.csr_dmw1[`PLV3] & csr2tlb.csr_plv == 2'd3)) & (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw1[`VSEG]) & pg_mode;

// logic inst_addr_trans_en_a,inst_addr_trans_en_b,data_addr_trans_en;
// assign inst_addr_trans_en_a = pg_mode && !inst_dmw0_en_a && !inst_dmw1_en_a;
// assign inst_addr_trans_en_b = pg_mode && !inst_dmw0_en_b && !inst_dmw1_en_b;
// assign data_addr_trans_en = pg_mode && !data_dmw0_en && !data_dmw1_en && !dcache2transaddr.cacop_op_mode_di;
// logic inst_addr_trans_en_a_delay,inst_addr_trans_en_b_delay,data_addr_trans_en_delay;
// always_ff @( posedge clk ) begin
//     inst_addr_trans_en_a_delay<=inst_addr_trans_en_a;
//     inst_addr_trans_en_b_delay<=inst_addr_trans_en_b;
//     data_addr_trans_en_delay<=data_addr_trans_en;
// end
// //s0的输�?(入？)变量声明，用于指令地�?翻译
// logic [18:0] s0_vppn_a     ;
// logic        s0_odd_page_a ;
// logic [ 5:0] s0_ps_a       ;
// logic [19:0] s0_ppn_a      ;

// logic [18:0] s0_vppn_b     ;
// logic        s0_odd_page_b ;
// logic [ 5:0] s0_ps_b       ;
// logic [19:0] s0_ppn_b      ;


// //s1的输�?(入？)变量声明，用于数据地�?翻译
// logic [18:0] s1_vppn     ;
// logic        s1_odd_page ;
// logic [ 5:0] s1_ps       ;
// logic [19:0] s1_ppn      ;

// assign s0_vppn_a     = icache2transaddr.inst_vaddr_a[31:13];//19位虚拟tag
// assign s0_odd_page_a = icache2transaddr.inst_vaddr_a[12];//奇偶

// assign s0_vppn_b     = icache2transaddr.inst_vaddr_b[31:13];//19位虚拟tag
// assign s0_odd_page_b = icache2transaddr.inst_vaddr_b[12];//奇偶

// //assign s1_vppn     = data_vaddr[31:13];
// assign s1_vppn     =ex2tlb.tlbsrch_en?csr2tlb.tlbehi[`VPPN]:dcache2transaddr.data_vaddr[31:13];
// assign s1_odd_page =ex2tlb.tlbsrch_en?1'b0:dcache2transaddr.data_vaddr[12];//??????????????????????????????????????srch的时候真的不知道该�?�么赋�?�！！！！！！！！！！！！！！！！！

// //srch指令
// assign ex2tlb.search_tlb_found=data_tlb_found;
// assign ex2tlb.search_tlb_index=data_tlb_index;



// //tlb写操作的信号
// logic        we          ;
// logic [ 4:0] w_index     ;
// logic [18:0] w_vppn      ;
// logic        w_g         ;
// logic [ 5:0] w_ps        ;
// logic        w_e         ;
// logic        w_v0        ;
// logic        w_d0        ;
// logic [ 1:0] w_mat0      ;
// logic [ 1:0] w_plv0      ;
// logic [19:0] w_ppn0      ;
// logic        w_v1        ;
// logic        w_d1        ;
// logic [ 1:0] w_mat1      ;
// logic [ 1:0] w_plv1      ;
// logic [19:0] w_ppn1      ;



// //trans write port sig 将写信号转换成TLB模块�?要的格式
// assign we      = ex2tlb.tlbfill_en || ex2tlb.tlbwr_en;//写使能信�?
// assign w_index = ({5{ex2tlb.tlbfill_en}} & ex2tlb.rand_index) | ({5{ex2tlb.tlbwr_en}} & csr2tlb.tlbidx[`INDEX]);//写操作的index
// assign w_vppn  = csr2tlb.tlbehi[`VPPN];//写的vppn19�?
// assign w_g     = csr2tlb.tlbelo0[`TLB_G] && csr2tlb.tlbelo1[`TLB_G];//写的全局标志位{6}
// assign w_ps    = csr2tlb.tlbidx[`PS];//pageSize
// assign w_e     = (csr2tlb.ecode == 6'h3f) ? 1'b1 : !csr2tlb.tlbidx[`NE];//写使能信号，ecode_in时使能，否则tlb_idx[`NE]�?0时使�?
// assign w_v0    = csr2tlb.tlbelo0[`TLB_V];//有效{0}
// assign w_d0    = csr2tlb.tlbelo0[`TLB_D];//脏{1}
// assign w_plv0  = csr2tlb.tlbelo0[`TLB_PLV];//PLV特权等级{3:2}
// assign w_mat0  = csr2tlb.tlbelo0[`TLB_MAT];//存储访问类型{5:4}
// assign w_ppn0  = csr2tlb.tlbelo0[`TLB_PPN_EN];//物理页号{27:8}
// assign w_v1    = csr2tlb.tlbelo1[`TLB_V];
// assign w_d1    = csr2tlb.tlbelo1[`TLB_D];
// assign w_plv1  = csr2tlb.tlbelo1[`TLB_PLV];
// assign w_mat1  = csr2tlb.tlbelo1[`TLB_MAT];
// assign w_ppn1  = csr2tlb.tlbelo1[`TLB_PPN_EN];

// //tlb读操作的信号
// logic [ 4:0] r_index     ;
// logic [18:0] r_vppn      ;
// logic [ 9:0] r_asid      ;
// logic        r_g         ;
// logic [ 5:0] r_ps        ;
// logic        r_e         ;
// logic        r_v0        ;
// logic        r_d0        ; 
// logic [ 1:0] r_mat0      ;
// logic [ 1:0] r_plv0      ;
// logic [19:0] r_ppn0      ;
// logic        r_v1        ;
// logic        r_d1        ;
// logic [ 1:0] r_mat1      ;
// logic [ 1:0] r_plv1      ;
// logic [19:0] r_ppn1      ;

// //将读tlb的结果转换成输出格式
// assign r_index      = csr2tlb.tlbidx[`INDEX];
// assign ex2tlb.tlbehi_out   = {r_vppn, 13'b0};
// assign ex2tlb.tlbelo0_out  = {4'b0, r_ppn0, 1'b0, r_g, r_mat0, r_plv0, r_d0, r_v0};
// assign ex2tlb.tlbelo1_out  = {4'b0, r_ppn1, 1'b0, r_g, r_mat1, r_plv1, r_d1, r_v1};
// assign ex2tlb.tlbidx_out   = {!r_e, 1'b0, r_ps, 24'b0}; //note do not write index
// assign ex2tlb.asid_out     = r_asid;



//存一拍信�?
reg  [31:0] inst_vaddr_buffer_a  ;//存储�?要转换的虚拟指令地址
reg  [31:0] inst_vaddr_buffer_b  ;
reg  [31:0] data_vaddr_buffer  ;//存储�?要转换的虚拟数据地址

always @(posedge clk) begin
    inst_vaddr_buffer_a <= icache2transaddr.inst_vaddr_a;
    inst_vaddr_buffer_b <= icache2transaddr.inst_vaddr_b;
    data_vaddr_buffer <= dcache2transaddr.data_vaddr;
end

// //转换出来的物理地�?
// wire [31:0] inst_paddr_a;//指令地址转换结果的物理地�?
// wire [31:0] inst_paddr_b;
wire [31:0] data_paddr;//数据地址转换结果的物理地�?


// wire my_data_fetch;
// assign my_data_fetch=dcache2transaddr.data_fetch||ex2tlb.tlbsrch_en;



// logic inst_tlb_found_a,inst_tlb_found_b,inst_tlb_v_a,inst_tlb_v_b,inst_tlb_d_a,inst_tlb_d_b;
// logic [1:0]inst_tlb_mat_a,inst_tlb_mat_b,inst_tlb_plv_a,inst_tlb_plv_b;




assign pg_mode = !csr2tlb.csr_da &&  csr2tlb.csr_pg;//地址翻译模式为分页模�?
assign da_mode =  csr2tlb.csr_da && !csr2tlb.csr_pg;


// logic [4:0]inst_offset_a,inst_offset_b;
// logic [6:0]inst_index_a,inst_index_b;
// logic [19:0]inst_tag_a,inst_tag_b;

logic [4:0] data_offset;
logic [6:0] data_index;
logic [19:0] data_tag;

//指令物理地址
// assign inst_paddr_a = (pg_mode && inst_dmw0_en_a) ? {csr2tlb.csr_dmw0[`PSEG], inst_vaddr_buffer_a[28:0]} :
//                     (pg_mode && inst_dmw1_en_a) ? {csr2tlb.csr_dmw1[`PSEG], inst_vaddr_buffer_a[28:0]} : inst_vaddr_buffer_a;

// assign inst_offset_a = inst_vaddr_buffer_a[4:0];
// assign inst_index_a  = inst_vaddr_buffer_a[11:5];
// assign inst_tag_a    = inst_paddr_a[31:12];

// assign inst_paddr_b = (pg_mode && inst_dmw0_en_a) ? {csr2tlb.csr_dmw0[`PSEG], inst_vaddr_buffer_b[28:0]} :
//                     (pg_mode && inst_dmw1_en_a) ? {csr2tlb.csr_dmw1[`PSEG], inst_vaddr_buffer_b[28:0]} : inst_vaddr_buffer_b;

// assign inst_offset_b = inst_vaddr_buffer_b[4:0];
// assign inst_index_b  = inst_vaddr_buffer_b[11:5];
// assign inst_tag_b    = inst_paddr_b[31:12];

//数据的物理地�?
assign data_paddr = (pg_mode & data_dmw0_en & !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw0[`PSEG], dcache2transaddr.data_vaddr[28:0]} : 
                    (pg_mode & data_dmw1_en & !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw1[`PSEG], dcache2transaddr.data_vaddr[28:0]} : dcache2transaddr.data_vaddr;

assign data_offset = dcache2transaddr.data_vaddr[4:0];
assign data_index  = dcache2transaddr.data_vaddr[11:5];
assign data_tag    = data_paddr[31:12];


// assign icache2transaddr.ret_inst_paddr_a={inst_tag_a,inst_index_a,inst_offset_a};
// assign icache2transaddr.ret_inst_paddr_b={inst_tag_b,inst_index_b,inst_offset_b};
always_ff @( posedge clk) begin
    dcache2transaddr.ret_data_paddr <= {data_tag,data_index,data_offset};
end
// assign dcache2transaddr.ret_data_paddr={data_tag,data_index,data_offset};
assign icache2transaddr.ret_inst_paddr_a=inst_vaddr_buffer_a;
assign icache2transaddr.ret_inst_paddr_b=inst_vaddr_buffer_b;
// always_ff @( posedge clk ) begin
//     ex2tlb.tlbsrch_ret<=ex2tlb.tlbsrch_en;
//     ex2tlb.tlbrd_ret<=ex2tlb.tlbrd_en;
// end

// logic inst_fetch_delay;
// always_ff @( posedge clk ) begin
//     inst_fetch_delay<=icache2transaddr.inst_fetch;
// end

// logic tlb_inst_refill_a,tlb_inst_refill_b,tlb_inst_pif_a,tlb_inst_pif_b,tlb_inst_ppi_a,tlb_inst_ppi_b;
// assign tlb_inst_refill_a=inst_fetch_delay&&((!inst_tlb_found_a)&&inst_addr_trans_en_a_delay);
// assign tlb_inst_pif_a=inst_fetch_delay&&!inst_tlb_v_a && inst_addr_trans_en_a_delay;
// assign tlb_inst_ppi_a=inst_fetch_delay&&((csr2tlb.csr_plv > inst_tlb_plv_a) && inst_addr_trans_en_a_delay);
// assign tlb_inst_refill_b=inst_fetch_delay&&((!inst_tlb_found_b)&&inst_addr_trans_en_b_delay);
// assign tlb_inst_pif_b=inst_fetch_delay&&!inst_tlb_v_b && inst_addr_trans_en_b_delay;
// assign tlb_inst_ppi_b=inst_fetch_delay&&((csr2tlb.csr_plv > inst_tlb_plv_b) && inst_addr_trans_en_b_delay);

// always_ff @( posedge clk ) begin
//     ex2tlb.tlb_inst_exception_cause[0]<=tlb_inst_refill_a?(`EXCEPTION_TLBR):(
//         tlb_inst_pif_a?(`EXCEPTION_PIF):(
//             tlb_inst_ppi_a?(`EXCEPTION_PPI):(`EXCEPTION_NOP)
//         )
//     );
//     ex2tlb.tlb_inst_exception_cause[1]<=tlb_inst_refill_b?`EXCEPTION_TLBR:(
//         tlb_inst_pif_b?`EXCEPTION_PIF:(
//             tlb_inst_ppi_b?`EXCEPTION_PPI:`EXCEPTION_NOP
//         )
//     );
//     ex2tlb.tlb_inst_exception[0]<=tlb_inst_refill_a||tlb_inst_pif_a||tlb_inst_ppi_a;
//     ex2tlb.tlb_inst_exception[1]<=tlb_inst_refill_b||tlb_inst_pif_b||tlb_inst_ppi_b;
// end

// logic data_fetch_delay;
// always_ff @( posedge clk ) begin
//     data_fetch_delay<=dcache2transaddr.data_fetch;
// end
// //data
// logic tlb_data_refill,tlb_data_pil,tlb_data_pis,tlb_data_ppi,tlb_data_pme;
// assign tlb_data_refill=(data_fetch_delay&&(!data_tlb_found)&&data_addr_trans_en_delay);
// assign tlb_data_pil=data_fetch_delay&&!dcache2transaddr.store &&!data_tlb_v && data_addr_trans_en_delay;
// assign tlb_data_pis=data_fetch_delay&&dcache2transaddr.store && !data_tlb_v && data_addr_trans_en_delay;
// assign tlb_data_ppi=data_fetch_delay&& data_tlb_v && (csr2tlb.csr_plv > data_tlb_plv) && data_addr_trans_en_delay;
// assign tlb_data_pme=dcache2transaddr.store && data_tlb_v && (csr2tlb.csr_plv <= data_tlb_plv) && !data_tlb_d && data_addr_trans_en_delay;

// assign ex2tlb.tlb_data_exception_cause=tlb_data_refill?(`EXCEPTION_TLBR):(
//         tlb_data_pil?(`EXCEPTION_PIL):(
//             tlb_data_pis?(`EXCEPTION_PIS):(
//                 tlb_data_ppi?(`EXCEPTION_PPI):(
//                     tlb_data_pme?(`EXCEPTION_PME):(`EXCEPTION_NOP)
//                 )
//             )
//         )
// );
// assign ex2tlb.tlb_data_exception=tlb_data_refill||tlb_data_pil||tlb_data_pis||tlb_data_ppi||tlb_data_pme;


// assign ex2tlb.tlbrd_valid=r_e;

// assign dcache2transaddr.tlb_exception=tlb_data_refill||tlb_data_pil||tlb_data_pis||tlb_data_ppi||tlb_data_pme;
// assign icache2transaddr.tlb_exception=tlb_inst_refill_a||tlb_inst_pif_a||tlb_inst_ppi_a||tlb_inst_refill_b||tlb_inst_pif_b||tlb_inst_ppi_b;


// logic rst_delay;
// always_ff @( posedge clk ) begin
//     rst_delay<=rst;
// end
assign icache2transaddr.uncache = 0;
// assign icache2transaddr.uncache = ((da_mode && (csr2tlb.csr_datf == 2'b0))        ||
//                          (inst_dmw0_en_a && (csr2tlb.csr_dmw0[`DMW_MAT] == 2'b0))       ||
//                          (inst_dmw1_en_a && (csr2tlb.csr_dmw1[`DMW_MAT] == 2'b0))       ||
//                          (inst_addr_trans_en_a && (inst_tlb_mat_a == 2'b0)))&&!rst_delay&&!rst;
assign iuncache = icache2transaddr.uncache;

// logic my_icache_uncache_delay;
// always_ff @( posedge clk ) begin
//     my_icache_uncache_delay<=(da_mode && (csr2tlb.csr_datf == 2'b0))        ||
//                        (inst_dmw0_en_a && (csr2tlb.csr_dmw0[`DMW_MAT] == 2'b0))       ||
//                        (inst_dmw1_en_a && (csr2tlb.csr_dmw1[`DMW_MAT] == 2'b0));
// end

// assign icache2transaddr.uncache = (my_icache_uncache_delay||
//                        (inst_addr_trans_en_a_delay && (inst_tlb_mat_a == 2'b0)))&&!rst_delay&&!rst;
// assign iuncache = icache2transaddr.uncache;


// logic my_dcache_uncache_delay;
// always_ff @( posedge clk ) begin
//     // my_dcache_uncache_delay<=(da_mode&&(csr2tlb.csr_datm==2'b0))||
//     //                             (data_dmw0_en&&(csr2tlb.csr_dmw0[`DMW_MAT]==2'b0))||
//     //                             (data_dmw1_en&&(csr2tlb.csr_dmw1[`DMW_MAT]==2'b0));
//     my_dcache_uncache_delay <= (dcache2transaddr.data_vaddr[31:16] == 16'hbfaf);
// end


// assign dcache2transaddr.uncache=my_dcache_uncache_delay
//                 ||(data_addr_trans_en_delay&&data_tlb_mat==2'b0);
// assign dcache2transaddr.uncache = 1;
always_ff @( posedge clk ) begin
    if(dcache2transaddr.data_vaddr[31:16]==16'hbfaf)dcache2transaddr.uncache<=1'b1;
    else dcache2transaddr.uncache<=1'b0;
end
endmodule