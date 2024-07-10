
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


interface icache_transaddr;
    logic                   inst_fetch;    //指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic [31:0]            inst_vaddr;    //虚拟地址
    logic [31:0]            ret_inst_paddr;//物理地址

    modport master(
        input ret_inst_paddr,
        output inst_fetch,inst_vaddr  
    );

    modport slave(
        output ret_inst_paddr,
        input inst_fetch,inst_vaddr
    );
endinterface : icache_transaddr

interface dcache_transaddr;
    logic                   data_fetch;    //指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic [31:0]            data_vaddr;    //虚拟地址
    logic [31:0]            ret_data_paddr;//物理地址
    logic                   cacop_op_mode_di;//assign cacop_op_mode_di = ms_cacop && ((cacop_op_mode == 2'b0) || (cacop_op_mode == 2'b1));

    modport master(
        input ret_data_paddr,
        output data_fetch,data_vaddr,cacop_op_mode_di
    );

    modport slave(
        output ret_data_paddr,
        input data_fetch,data_vaddr,cacop_op_mode_di
    );
endinterface : dcache_transaddr



interface ex_tlb;
    //TLBFILL和TLBWR指令
    logic                  tlbfill_en         ;//TLBFILL指令的使能信号
    logic                  tlbwr_en           ;//TLBWR指令的使能信号

    //TLBSRCH指令
    logic                  tlbsrch_en         ;//TLBSRCH指令使能信号

    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    //默认read

    //invtlb ——用于实现无效tlb的指令
    logic                  invtlb_en          ;//使能
    logic [ 9:0]           invtlb_asid        ;//asid
    logic [18:0]           invtlb_vpn         ;//vpn
    logic [ 4:0]           invtlb_op          ;//op


    modport master(//ex
        output tlbfill_en,tlbwr_en,tlbsrch_en,invtlb_en,invtlb_asid,invtlb_vpn,invtlb_op
    );
    modport slave(//tlb
        input tlbfill_en,tlbwr_en,tlbsrch_en,invtlb_en,invtlb_asid,invtlb_vpn,invtlb_op
    );
endinterface //ex_tlb


interface csr_tlb;
    logic [31:0]           tlbidx             ;//7.5.1TLB索引寄存器，包含[4:0]为index,[29:24]为PS，[31]为NE
    logic [31:0]           tlbehi             ;//7.5.2TLB表项高位，包含[31:13]为VPPN
    logic [31:0]           tlbelo0,tlbelo1    ;//7.5.3TLB表项低位，包含写入TLB表项的内容
    logic [ 9:0]           asid               ;//7.5.4ASID的低9位
    //TLBFILL和TLBWR指令
    logic [4:0]            rand_index         ;//TLBFILL指令的index
    logic [5:0]            ecode           ;//7.5.1对于NE变量的描述中讲到，CSR.ESTAT.Ecode   (大概使能信号，若为111111则写使能，否则根据tlbindex_in.NE判断是否写使能？

    //TLBSRCH指令
    logic [31:0]           tlbsrch_ehi        ;//TLBSRCH指令的ehi信号
    logic                  search_tlb_found   ;//TLBSRCH命中
    logic [ 4:0]           search_tlb_index   ;//TLBSRCH所需返回的index信号

    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    logic [31:0]           tlbehi_out         ;//{r_vppn, 13'b0}
    logic [31:0]           tlbelo0_out        ;//{4'b0, ppn0, 1'b0, g, mat0, plv0, d0, v0}
    logic [31:0]           tlbelo1_out        ;//{4'b0, ppn1, 1'b0, g, mat1, plv1, d1, v1}
    logic [31:0]           tlbidx_out         ;//只有[29:24]为ps信号，其他位均为0
    logic [ 9:0]           asid_out           ;//读出的asid

    //CSR信号
    logic [31:0]           csr_dmw0           ;//dmw0，有效位是[27:25]，可能会作为最后转换出来的地址的最高三位
    logic [31:0]           csr_dmw1           ;//dmw1，有效位是[27:25]，可能会作为最后转换出来的地址的最高三位
    logic                  csr_da             ;
    logic                  csr_pg             ;   
    logic [1:0]            csr_plv            ;

    modport master(//csr
        input search_tlb_found,search_tlb_index,tlbehi_out,tlbelo0_out,tlbelo1_out,tlbidx_out,asid_out,
        output tlbidx,tlbehi,tlbelo0,tlbelo1,asid,rand_index,ecode,tlbsrch_ehi,
                csr_dmw0,csr_dmw1,csr_da,csr_pg,csr_plv
    );
    modport slave(//tlb
        input tlbidx,tlbehi,tlbelo0,tlbelo1,asid,rand_index,ecode,tlbsrch_ehi,
                csr_dmw0,csr_dmw1,csr_da,csr_pg,csr_plv,
        output search_tlb_found,search_tlb_index,tlbehi_out,tlbelo0_out,tlbelo1_out,tlbidx_out,asid_out
    );

endinterface //csr_tlb



module trans_addr
#(
    parameter TLBNUM = 32
)
(
    input                  clk                  ,
    /*
    //trans mode
    input                  inst_addr_trans_en   ,//指令地址转换使能，assign inst_addr_trans_en = pg_mode && !dmw0_en && !dmw1_en;assign pg_mode = csr_pg && !csr_da;
    input                  data_addr_trans_en   ,//数据地址转换使能
    */
    icache_transaddr       icache2transaddr     ,
    dcache_transaddr       dcache2transaddr     ,
    ex_tlb                 ex2tlb               ,
    csr_tlb                csr2tlb              ,

    //inst addr trans
    output                 inst_tlb_found       ,//指令地址在TLB中成功找到
    output                 inst_tlb_v           ,//TLB这个数据有效
    output                 inst_tlb_d           ,//TLB这个数据为脏
    output [ 1:0]          inst_tlb_mat         ,//TLB这个数据的存储访问类型
    output [ 1:0]          inst_tlb_plv         ,//TLB这个数据的特权等级
    //data addr trans
    output                 data_tlb_found       ,
    output [ 4:0]          data_tlb_index       ,
    output                 data_tlb_v           ,
    output                 data_tlb_d           ,
    output [ 1:0]          data_tlb_mat         ,
    output [ 1:0]          data_tlb_plv         
);


wire        pg_mode;
wire        da_mode;

logic inst_dmw0_en,inst_dmw1_en;
assign inst_dmw0_en = ((csr2tlb.csr_dmw0[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw0[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr[31:29] == csr2tlb.csr_dmw0[`VSEG]) && pg_mode;
assign inst_dmw1_en = ((csr2tlb.csr_dmw1[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw1[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (icache2transaddr.inst_vaddr[31:29] == csr2tlb.csr_dmw1[`VSEG]) && pg_mode;
logic data_dmw0_en,data_dmw1_en;
assign data_dmw0_en = ((csr2tlb.csr_dmw0[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw0[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw0[`VSEG]) && pg_mode;
assign data_dmw1_en = ((csr2tlb.csr_dmw1[`PLV0] && csr2tlb.csr_plv == 2'd0) || (csr2tlb.csr_dmw1[`PLV3] && csr2tlb.csr_plv == 2'd3)) && (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw1[`VSEG]) && pg_mode;

logic inst_addr_trans_en;
assign pg_mode = csr2tlb.csr_pg && !csr2tlb.csr_da;
assign inst_addr_trans_en = pg_mode && !inst_dmw0_en && !inst_dmw1_en;
assign data_addr_trans_en = pg_mode && !data_dmw0_en && !data_dmw1_en && !dcache2transaddr.cacop_op_mode_di;


//s0的输出(入？)变量声明，用于指令地址翻译
logic [18:0] s0_vppn     ;
logic        s0_odd_page ;
logic [ 5:0] s0_ps       ;
logic [19:0] s0_ppn      ;

//s1的输出(入？)变量声明，用于数据地址翻译
logic [18:0] s1_vppn     ;
logic        s1_odd_page ;
logic [ 5:0] s1_ps       ;
logic [19:0] s1_ppn      ;

assign s0_vppn     = icache2transaddr.inst_vaddr[31:13];//19位虚拟tag
assign s0_odd_page = icache2transaddr.inst_vaddr[12];//奇偶

//assign s1_vppn     = data_vaddr[31:13];
assign s1_vppn     =ex2tlb.tlbsrch_en?csr2tlb.tlbsrch_ehi[`VPPN]:dcache2transaddr.data_vaddr[31:13];
assign s1_odd_page =ex2tlb.tlbsrch_en?1'b0:dcache2transaddr.data_vaddr[12];//??????????????????????????????????????srch的时候真的不知道该怎么赋值！！！！！！！！！！！！！！！！！

//srch指令
assign csr2tlb.search_tlb_found=data_tlb_found;
assign csr2tlb.search_tlb_index=data_tlb_index;



//tlb写操作的信号
logic        we          ;
logic [ 4:0] w_index     ;
logic [18:0] w_vppn      ;
logic        w_g         ;
logic [ 5:0] w_ps        ;
logic        w_e         ;
logic        w_v0        ;
logic        w_d0        ;
logic [ 1:0] w_mat0      ;
logic [ 1:0] w_plv0      ;
logic [19:0] w_ppn0      ;
logic        w_v1        ;
logic        w_d1        ;
logic [ 1:0] w_mat1      ;
logic [ 1:0] w_plv1      ;
logic [19:0] w_ppn1      ;



//trans write port sig 将写信号转换成TLB模块需要的格式
assign we      = ex2tlb.tlbfill_en || ex2tlb.tlbwr_en;//写使能信号
assign w_index = ({5{ex2tlb.tlbfill_en}} & csr2tlb.rand_index) | ({5{ex2tlb.tlbwr_en}} & csr2tlb.tlbidx[`INDEX]);//写操作的index
assign w_vppn  = csr2tlb.tlbehi[`VPPN];//写的vppn19位
assign w_g     = csr2tlb.tlbelo0[`TLB_G] && csr2tlb.tlbelo1[`TLB_G];//写的全局标志位{6}
assign w_ps    = csr2tlb.tlbidx[`PS];//pageSize
assign w_e     = (csr2tlb.ecode == 6'h3f) ? 1'b1 : !csr2tlb.tlbidx[`NE];//写使能信号，ecode_in时使能，否则tlb_idx[`NE]为0时使能
assign w_v0    = csr2tlb.tlbelo0[`TLB_V];//有效{0}
assign w_d0    = csr2tlb.tlbelo0[`TLB_D];//脏{1}
assign w_plv0  = csr2tlb.tlbelo0[`TLB_PLV];//PLV特权等级{3:2}
assign w_mat0  = csr2tlb.tlbelo0[`TLB_MAT];//存储访问类型{5:4}
assign w_ppn0  = csr2tlb.tlbelo0[`TLB_PPN_EN];//物理页号{27:8}
assign w_v1    = csr2tlb.tlbelo1[`TLB_V];
assign w_d1    = csr2tlb.tlbelo1[`TLB_D];
assign w_plv1  = csr2tlb.tlbelo1[`TLB_PLV];
assign w_mat1  = csr2tlb.tlbelo1[`TLB_MAT];
assign w_ppn1  = csr2tlb.tlbelo1[`TLB_PPN_EN];

//tlb读操作的信号
logic [ 4:0] r_index     ;
logic [18:0] r_vppn      ;
logic [ 9:0] r_asid      ;
logic        r_g         ;
logic [ 5:0] r_ps        ;
logic        r_e         ;
logic        r_v0        ;
logic        r_d0        ; 
logic [ 1:0] r_mat0      ;
logic [ 1:0] r_plv0      ;
logic [19:0] r_ppn0      ;
logic        r_v1        ;
logic        r_d1        ;
logic [ 1:0] r_mat1      ;
logic [ 1:0] r_plv1      ;
logic [19:0] r_ppn1      ;

//将读tlb的结果转换成输出格式
assign r_index      = csr2tlb.tlbidx[`INDEX];
assign csr2tlb.tlbehi_out   = {r_vppn, 13'b0};
assign csr2tlb.tlbelo0_out  = {4'b0, r_ppn0, 1'b0, r_g, r_mat0, r_plv0, r_d0, r_v0};
assign csr2tlb.tlbelo1_out  = {4'b0, r_ppn1, 1'b0, r_g, r_mat1, r_plv1, r_d1, r_v1};
assign csr2tlb.tlbidx_out   = {!r_e, 1'b0, r_ps, 24'b0}; //note do not write index
assign csr2tlb.asid_out     = r_asid;



//存一拍信号
reg  [31:0] inst_vaddr_buffer  ;//存储需要转换的虚拟指令地址
reg  [31:0] data_vaddr_buffer  ;//存储需要转换的虚拟数据地址

always @(posedge clk) begin
    inst_vaddr_buffer <= icache2transaddr.inst_vaddr;
    data_vaddr_buffer <= dcache2transaddr.data_vaddr;
end

//转换出来的物理地址
wire [31:0] inst_paddr;//指令地址转换结果的物理地址
wire [31:0] data_paddr;//数据地址转换结果的物理地址


wire my_data_fetch;
assign my_data_fetch=dcache2transaddr.data_fetch||ex2tlb.tlbsrch_en;


tlb u_tlb(
    .clk            (clk            ),
    // search port 0
    .s0_fetch       (icache2transaddr.inst_fetch     ),
    .s0_vppn        (s0_vppn        ),
    .s0_odd_page    (s0_odd_page    ),
    .s0_asid        (csr2tlb.asid           ),
    .s0_found       (inst_tlb_found ),
    .s0_index       (),
    .s0_ps          (s0_ps          ),
    .s0_ppn         (s0_ppn         ),
    .s0_v           (inst_tlb_v     ),
    .s0_d           (inst_tlb_d     ),
    .s0_mat         (inst_tlb_mat   ),
    .s0_plv         (inst_tlb_plv   ),
    // search port 1
    .s1_fetch       (my_data_fetch     ),
    .s1_vppn        (s1_vppn        ),
    .s1_odd_page    (s1_odd_page    ),
    .s1_asid        (csr2tlb.asid           ),
    .s1_found       (data_tlb_found ),
    .s1_index       (data_tlb_index ),
    .s1_ps          (s1_ps          ),
    .s1_ppn         (s1_ppn         ),
    .s1_v           (data_tlb_v     ),
    .s1_d           (data_tlb_d     ),
    .s1_mat         (data_tlb_mat   ),
    .s1_plv         (data_tlb_plv   ),
    // write port 
    .we             (we             ),     
    .w_index        (w_index        ),
    .w_vppn         (w_vppn         ),
    .w_asid         (csr2tlb.asid           ),
    .w_g            (w_g            ),
    .w_ps           (w_ps           ),
    .w_e            (w_e            ),
    .w_v0           (w_v0           ),
    .w_d0           (w_d0           ),
    .w_plv0         (w_plv0         ),
    .w_mat0         (w_mat0         ),
    .w_ppn0         (w_ppn0         ),
    .w_v1           (w_v1           ),
    .w_d1           (w_d1           ),
    .w_plv1         (w_plv1         ),
    .w_mat1         (w_mat1         ),
    .w_ppn1         (w_ppn1         ),
    //read port 
    .r_index        (r_index        ),
    .r_vppn         (r_vppn         ),
    .r_asid         (r_asid         ),
    .r_g            (r_g            ),
    .r_ps           (r_ps           ),
    .r_e            (r_e            ),
    .r_v0           (r_v0           ),
    .r_d0           (r_d0           ),
    .r_mat0         (r_mat0         ),
    .r_plv0         (r_plv0         ),
    .r_ppn0         (r_ppn0         ),
    .r_v1           (r_v1           ),
    .r_d1           (r_d1           ),
    .r_mat1         (r_mat1         ),
    .r_plv1         (r_plv1         ),
    .r_ppn1         (r_ppn1         ),
    //invalid port
    .inv_en         (ex2tlb.invtlb_en      ),
    .inv_op         (ex2tlb.invtlb_op      ),
    .inv_asid       (ex2tlb.invtlb_asid    ),
    .inv_vpn        (ex2tlb.invtlb_vpn     )
);



assign pg_mode = !csr2tlb.csr_da &&  csr2tlb.csr_pg;//地址翻译模式为分页模式
assign da_mode =  csr2tlb.csr_da && !csr2tlb.csr_pg;

//指令物理地址
assign inst_paddr = (pg_mode && inst_dmw0_en) ? {csr2tlb.csr_dmw0[`PSEG], inst_vaddr_buffer[28:0]} :
                    (pg_mode && inst_dmw1_en) ? {csr2tlb.csr_dmw1[`PSEG], inst_vaddr_buffer[28:0]} : inst_vaddr_buffer;

assign inst_offset = icache2transaddr.inst_vaddr[3:0];
assign inst_index  = icache2transaddr.inst_vaddr[11:4];
assign inst_tag    = inst_addr_trans_en ? ((s0_ps == 6'd12) ? s0_ppn : {s0_ppn[19:10], inst_paddr[21:12]}) : inst_paddr[31:12];


//数据的物理地址
assign data_paddr = (pg_mode && data_dmw0_en && !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw0[`PSEG], data_vaddr_buffer[28:0]} : 
                    (pg_mode && data_dmw1_en && !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw1[`PSEG], data_vaddr_buffer[28:0]} : data_vaddr_buffer;

assign data_offset = dcache2transaddr.data_vaddr[3:0];
assign data_index  = dcache2transaddr.data_vaddr[11:4];
assign data_tag    = data_addr_trans_en ? ((s1_ps == 6'd12) ? s1_ppn : {s1_ppn[19:10], data_paddr[21:12]}) : data_paddr[31:12];


assign icache2transaddr.ret_inst_paddr={inst_tag,inst_index,inst_offset};
assign dcache2transaddr.ret_data_paddr={data_tag,data_index,data_offset};





endmodule