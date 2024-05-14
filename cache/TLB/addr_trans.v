`include "csr.h"

module addr_trans
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
    //tlbwi tlbwr tlb write
    input                  tlbfill_en           ,
    input                  tlbwr_en             ,
    input  [ 4:0]          rand_index           ,
    input  [31:0]          tlbehi_in            ,//CSR.TLBEHI信息
    input  [31:0]          tlbelo0_in           ,
    input  [31:0]          tlbelo1_in           ,
    input  [31:0]          tlbidx_in            , 
    input  [ 5:0]          ecode_in             ,
    //tlbr tlb read
    output [31:0]          tlbehi_out           ,
    output [31:0]          tlbelo0_out          ,
    output [31:0]          tlbelo1_out          ,
    output [31:0]          tlbidx_out           ,
    output [ 9:0]          asid_out             ,
    //invtlb ——用于实现无效tlb的指令
    input                  invtlb_en            ,
    input  [ 9:0]          invtlb_asid          ,
    input  [18:0]          invtlb_vpn           ,
    input  [ 4:0]          invtlb_op            ,
    //from csr
    input  [31:0]          csr_dmw0             ,//dmw0的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位(为什么是27:25??????????????????????????)
    input  [31:0]          csr_dmw1             ,//dmw1的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    input                  csr_da               ,//表示地址翻译模式为数据模式????????????????????????????????????????????????????????????????
    input                  csr_pg                //表示地址翻译模式为分页模式????????????????????????????????????????????????????????????????
);

//s0的输出变量声明，用于指令地址翻译
wire [18:0] s0_vppn     ;
wire        s0_odd_page ;
wire [ 5:0] s0_ps       ;
wire [19:0] s0_ppn      ;

//s1的输出变量声明，用于数据地址翻译
wire [18:0] s1_vppn     ;
wire        s1_odd_page ;
wire [ 5:0] s1_ps       ;
wire [19:0] s1_ppn      ;

wire        we          ;
wire [ 4:0] w_index     ;
wire [18:0] w_vppn      ;
wire        w_g         ;
wire [ 5:0] w_ps        ;
wire        w_e         ;
wire        w_v0        ;
wire        w_d0        ;
wire [ 1:0] w_mat0      ;
wire [ 1:0] w_plv0      ;
wire [19:0] w_ppn0      ;
wire        w_v1        ;
wire        w_d1        ;
wire [ 1:0] w_mat1      ;
wire [ 1:0] w_plv1      ;
wire [19:0] w_ppn1      ;

wire [ 4:0] r_index     ;
wire [18:0] r_vppn      ;
wire [ 9:0] r_asid      ;
wire        r_g         ;
wire [ 5:0] r_ps        ;
wire        r_e         ;
wire        r_v0        ;
wire        r_d0        ; 
wire [ 1:0] r_mat0      ;
wire [ 1:0] r_plv0      ;
wire [19:0] r_ppn0      ;
wire        r_v1        ;
wire        r_d1        ;
wire [ 1:0] r_mat1      ;
wire [ 1:0] r_plv1      ;
wire [19:0] r_ppn1      ;

reg  [31:0] inst_vaddr_buffer  ;//存储需要转换的虚拟指令地址
reg  [31:0] data_vaddr_buffer  ;//存储需要转换的虚拟数据地址
wire [31:0] inst_paddr;//指令地址转换结果的物理地址
wire [31:0] data_paddr;//数据地址转换结果的物理地址

wire        pg_mode;
wire        da_mode;

always @(posedge clk) begin
    inst_vaddr_buffer <= inst_vaddr;
    data_vaddr_buffer <= data_vaddr;
end

//trans search port sig 记录信号，便于对接给tlb模块
assign s0_vppn     = inst_vaddr[31:13];
assign s0_odd_page = inst_vaddr[12];

assign s1_vppn     = data_vaddr[31:13];
assign s1_odd_page = data_vaddr[12];

//trans write port sig 将写信号转换成TLB模块需要的格式
assign we      = tlbfill_en || tlbwr_en;
assign w_index = ({5{tlbfill_en}} & rand_index) | ({5{tlbwr_en}} & tlbidx_in[`INDEX]);
assign w_vppn  = tlbehi_in[`VPPN];
assign w_g     = tlbelo0_in[`TLB_G] && tlbelo1_in[`TLB_G];
assign w_ps    = tlbidx_in[`PS];
assign w_e     = (ecode_in == 6'h3f) ? 1'b1 : !tlbidx_in[`NE];
assign w_v0    = tlbelo0_in[`TLB_V];
assign w_d0    = tlbelo0_in[`TLB_D];
assign w_plv0  = tlbelo0_in[`TLB_PLV];
assign w_mat0  = tlbelo0_in[`TLB_MAT];
assign w_ppn0  = tlbelo0_in[`TLB_PPN_EN];
assign w_v1    = tlbelo1_in[`TLB_V];
assign w_d1    = tlbelo1_in[`TLB_D];
assign w_plv1  = tlbelo1_in[`TLB_PLV];
assign w_mat1  = tlbelo1_in[`TLB_MAT];
assign w_ppn1  = tlbelo1_in[`TLB_PPN_EN];

//trans read port sig 将读信号转换成TLB模块需要的格式
assign r_index      = tlbidx_in[`INDEX];
assign tlbehi_out   = {r_vppn, 13'b0};
assign tlbelo0_out  = {4'b0, r_ppn0, 1'b0, r_g, r_mat0, r_plv0, r_d0, r_v0};
assign tlbelo1_out  = {4'b0, r_ppn1, 1'b0, r_g, r_mat1, r_plv1, r_d1, r_v1};
assign tlbidx_out   = {!r_e, 1'b0, r_ps, 24'b0}; //note do not write index
assign asid_out     = r_asid;

tlb_entry tlb_entry(
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

assign inst_paddr = (pg_mode && inst_dmw0_en) ? {csr_dmw0[`PSEG], inst_vaddr_buffer[28:0]} :
                    (pg_mode && inst_dmw1_en) ? {csr_dmw1[`PSEG], inst_vaddr_buffer[28:0]} : inst_vaddr_buffer;

assign inst_offset = inst_vaddr[3:0];
assign inst_index  = inst_vaddr[11:4];
assign inst_tag    = inst_addr_trans_en ? ((s0_ps == 6'd12) ? s0_ppn : {s0_ppn[19:10], inst_paddr[21:12]}) : inst_paddr[31:12];

assign data_paddr = (pg_mode && data_dmw0_en && !cacop_op_mode_di) ? {csr_dmw0[`PSEG], data_vaddr_buffer[28:0]} : 
                    (pg_mode && data_dmw1_en && !cacop_op_mode_di) ? {csr_dmw1[`PSEG], data_vaddr_buffer[28:0]} : data_vaddr_buffer;

assign data_offset = data_vaddr[3:0];
assign data_index  = data_vaddr[11:4];
assign data_tag    = data_addr_trans_en ? ((s1_ps == 6'd12) ? s1_ppn : {s1_ppn[19:10], data_paddr[21:12]}) : data_paddr[31:12];

endmodule