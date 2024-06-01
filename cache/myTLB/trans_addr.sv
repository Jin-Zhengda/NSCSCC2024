
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




module trans_addr
#(
    parameter TLBNUM = 32
)
(
    input                  clk                  ,
    input  [ 9:0]          asid                 ,//CSR.ASID信息
    //trans mode
    input                  inst_addr_trans_en   ,//指令地址转换使能，assign inst_addr_trans_en = pg_mode && !dmw0_en && !dmw1_en;assign pg_mode = csr_pg && !csr_da;
    input                  data_addr_trans_en   ,//数据地址转换使能
    //inst addr trans
    input                  inst_fetch           ,//指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    input  [31:0]          inst_vaddr           ,//指令的虚拟地址
    input                  inst_dmw0_en         ,//使用dmw0翻译地址assign dmw0_en = ((csr_dmw0[`PLV0] && csr_plv == 2'd0) || (csr_dmw0[`PLV3] && csr_plv == 2'd3)) && (fs_pc[31:29] == csr_dmw0[`VSEG]) && pg_mode;
    input                  inst_dmw1_en         ,//使用dmw1翻译地址assign dmw1_en = ((csr_dmw1[`PLV0] && csr_plv == 2'd0) || (csr_dmw1[`PLV3] && csr_plv == 2'd3)) && (fs_pc[31:29] == csr_dmw1[`VSEG]) && pg_mode;
    output [ 7:0]          inst_index           ,//指令物理地址的index部分
    output [19:0]          inst_tag             ,//指令物理地址的tag部分
    output [ 3:0]          inst_offset          ,//指令物理地址的offset部分
    output                 inst_tlb_found       ,//指令地址在TLB中成功找到
    output                 inst_tlb_v           ,//TLB这个数据有效
    output                 inst_tlb_d           ,//TLB这个数据为脏
    output [ 1:0]          inst_tlb_mat         ,//TLB这个数据的存储访问类型
    output [ 1:0]          inst_tlb_plv         ,//TLB这个数据的特权等级
    //data addr trans
    input                  data_fetch           ,
    input  [31:0]          data_vaddr           ,
    input                  data_dmw0_en         ,
    input                  data_dmw1_en         ,
    input                  cacop_op_mode_di     ,
    output [ 7:0]          data_index           ,
    output [19:0]          data_tag             ,
    output [ 3:0]          data_offset          ,
    output                 data_tlb_found       ,
    output [ 4:0]          data_tlb_index       ,
    output                 data_tlb_v           ,
    output                 data_tlb_d           ,
    output [ 1:0]          data_tlb_mat         ,
    output [ 1:0]          data_tlb_plv         ,
    //TLBFILL和TLBWR指令
    input                  tlbfill_en           ,//TLBFILL指令的使能信号
    input                  tlbwr_en             ,//TLBWR指令的使能信号
    input  [ 4:0]          rand_index           ,//TLBFILL指令的index
    input  [31:0]          tlbehi_in            ,//CSR.TLBEHI信息
    input  [31:0]          tlbelo0_in           ,//CSR.TLBELO0信息
    input  [31:0]          tlbelo1_in           ,//CSR.TLBELO1信息
    input  [31:0]          tlbidx_in            ,//读写共用的信号！包含了TLBWR时的index位于[4:0],以及PS信号位于[29:24]，NE信号位于[31]
    input  [ 5:0]          ecode_in             ,//使能信号，若为111111则写使能，否则根据tlbindex_in.NE判断是否写使能？
    //TLBSRCH指令！！！！！！！！！！！！！！！！尚待自己实现！！！！！！！！！！！！！！！！！！！！！
    input                  tlbsrch_en           ,//TLBSRCH指令使能信号
    input  [31:0]          tlbsrch_ehi          ,//TLBSRCH指令的ehi信号
    output                 search_tlb_found     ,//TLBSRCH命中
    output [ 4:0]          search_tlb_index     ,//TLBSRCH所需返回的index信号
    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    output [31:0]          tlbehi_out           ,//{r_vppn, 13'b0}
    output [31:0]          tlbelo0_out          ,//{4'b0, ppn0, 1'b0, g, mat0, plv0, d0, v0}
    output [31:0]          tlbelo1_out          ,//{4'b0, ppn1, 1'b0, g, mat1, plv1, d1, v1}
    output [31:0]          tlbidx_out           ,//只有[29:24]为ps信号，其他位均为0
    output [ 9:0]          asid_out             ,//读出的asid
    //invtlb ——用于实现无效tlb的指令
    input                  invtlb_en            ,//使能
    input  [ 9:0]          invtlb_asid          ,//asid
    input  [18:0]          invtlb_vpn           ,//vpn
    input  [ 4:0]          invtlb_op            ,//op
    //from csr
    input  [31:0]          csr_dmw0             ,//dmw0，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    input  [31:0]          csr_dmw1             ,//dmw1，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    input                  csr_da               ,//表示地址翻译模式为数据模式????????????????????????????????????????????????????????????????
    input                  csr_pg                //表示地址翻译模式为分页模式????????????????????????????????????????????????????????????????
);


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

assign s0_vppn     = inst_vaddr[31:13];//19位虚拟tag
assign s0_odd_page = inst_vaddr[12];//奇偶

//assign s1_vppn     = data_vaddr[31:13];
assign s1_vppn     =tlbsrch_en?tlbsrch_ehi[`VPPN]:data_vaddr[31:13];
assign s1_odd_page =tlbsrch_en?1'b0:data_vaddr[12];//??????????????????????????????????????srch的时候真的不知道该怎么赋值！！！！！！！！！！！！！！！！！

//srch指令
assign search_tlb_found=data_tlb_found;
assign search_tlb_index=data_tlb_index;



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
assign we      = tlbfill_en || tlbwr_en;//写使能信号
assign w_index = ({5{tlbfill_en}} & rand_index) | ({5{tlbwr_en}} & tlbidx_in[`INDEX]);//写操作的index
assign w_vppn  = tlbehi_in[`VPPN];//写的vppn19位
assign w_g     = tlbelo0_in[`TLB_G] && tlbelo1_in[`TLB_G];//写的全局标志位{6}
assign w_ps    = tlbidx_in[`PS];//pageSize
assign w_e     = (ecode_in == 6'h3f) ? 1'b1 : !tlbidx_in[`NE];//写使能信号，ecode_in时使能，否则tlb_idx[`NE]为0时使能
assign w_v0    = tlbelo0_in[`TLB_V];//有效{0}
assign w_d0    = tlbelo0_in[`TLB_D];//脏{1}
assign w_plv0  = tlbelo0_in[`TLB_PLV];//PLV特权等级{3:2}
assign w_mat0  = tlbelo0_in[`TLB_MAT];//存储访问类型{5:4}
assign w_ppn0  = tlbelo0_in[`TLB_PPN_EN];//物理页号{27:8}
assign w_v1    = tlbelo1_in[`TLB_V];
assign w_d1    = tlbelo1_in[`TLB_D];
assign w_plv1  = tlbelo1_in[`TLB_PLV];
assign w_mat1  = tlbelo1_in[`TLB_MAT];
assign w_ppn1  = tlbelo1_in[`TLB_PPN_EN];

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
assign r_index      = tlbidx_in[`INDEX];
assign tlbehi_out   = {r_vppn, 13'b0};
assign tlbelo0_out  = {4'b0, r_ppn0, 1'b0, r_g, r_mat0, r_plv0, r_d0, r_v0};
assign tlbelo1_out  = {4'b0, r_ppn1, 1'b0, r_g, r_mat1, r_plv1, r_d1, r_v1};
assign tlbidx_out   = {!r_e, 1'b0, r_ps, 24'b0}; //note do not write index
assign asid_out     = r_asid;



//存一拍信号
reg  [31:0] inst_vaddr_buffer  ;//存储需要转换的虚拟指令地址
reg  [31:0] data_vaddr_buffer  ;//存储需要转换的虚拟数据地址

always @(posedge clk) begin
    inst_vaddr_buffer <= inst_vaddr;
    data_vaddr_buffer <= data_vaddr;
end

//转换出来的物理地址
wire [31:0] inst_paddr;//指令地址转换结果的物理地址
wire [31:0] data_paddr;//数据地址转换结果的物理地址

//数据模式和页表模式？？？？？？？？？？？？？？？？？
wire        pg_mode;
wire        da_mode;


tlb u_tlb(
    .clk            (clk            ),
    // search port 0
    .s0_fetch       (inst_fetch     ),
    .s0_vppn        (s0_vppn        ),
    .s0_odd_page    (s0_odd_page    ),
    .s0_asid        (asid           ),
    .s0_found       (inst_tlb_found ),
    .s0_index       (),
    .s0_ps          (s0_ps          ),
    .s0_ppn         (s0_ppn         ),
    .s0_v           (inst_tlb_v     ),
    .s0_d           (inst_tlb_d     ),
    .s0_mat         (inst_tlb_mat   ),
    .s0_plv         (inst_tlb_plv   ),
    // search port 1
    .s1_fetch       (data_fetch     ),
    .s1_vppn        (s1_vppn        ),
    .s1_odd_page    (s1_odd_page    ),
    .s1_asid        (asid           ),
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
    .w_asid         (asid           ),
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
    .inv_en         (invtlb_en      ),
    .inv_op         (invtlb_op      ),
    .inv_asid       (invtlb_asid    ),
    .inv_vpn        (invtlb_vpn     )
);



assign pg_mode = !csr_da &&  csr_pg;//地址翻译模式为分页模式
assign da_mode =  csr_da && !csr_pg;

//指令物理地址
assign inst_paddr = (pg_mode && inst_dmw0_en) ? {csr_dmw0[`PSEG], inst_vaddr_buffer[28:0]} :
                    (pg_mode && inst_dmw1_en) ? {csr_dmw1[`PSEG], inst_vaddr_buffer[28:0]} : inst_vaddr_buffer;

assign inst_offset = inst_vaddr[3:0];
assign inst_index  = inst_vaddr[11:4];
assign inst_tag    = inst_addr_trans_en ? ((s0_ps == 6'd12) ? s0_ppn : {s0_ppn[19:10], inst_paddr[21:12]}) : inst_paddr[31:12];

//数据的物理地址
assign data_paddr = (pg_mode && data_dmw0_en && !cacop_op_mode_di) ? {csr_dmw0[`PSEG], data_vaddr_buffer[28:0]} : 
                    (pg_mode && data_dmw1_en && !cacop_op_mode_di) ? {csr_dmw1[`PSEG], data_vaddr_buffer[28:0]} : data_vaddr_buffer;

assign data_offset = data_vaddr[3:0];
assign data_index  = data_vaddr[11:4];
assign data_tag    = data_addr_trans_en ? ((s1_ps == 6'd12) ? s1_ppn : {s1_ppn[19:10], data_paddr[21:12]}) : data_paddr[31:12];








endmodule