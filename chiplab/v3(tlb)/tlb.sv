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
module TLB
#(
    parameter TLBNUM = 32
)
(
    input        clk,
    transaddr_tlb transaddr2tlb,
    ex_tlb        ex2tlb       ,
    csr_tlb       csr2tlb

);
logic  [ 4:0]               s0_index_a;
logic  [ 4:0]               s0_index_b;





//创建TLB表的存储寄存器，0、1是龙芯规定的奇偶相邻页表
reg [18:0] tlb_vppn     [TLBNUM-1:0];
reg        tlb_e        [TLBNUM-1:0];
reg [ 9:0] tlb_asid     [TLBNUM-1:0];
reg        tlb_g        [TLBNUM-1:0];
reg [ 5:0] tlb_ps       [TLBNUM-1:0];
reg [19:0] tlb_ppn0     [TLBNUM-1:0];
reg [ 1:0] tlb_plv0     [TLBNUM-1:0];
reg [ 1:0] tlb_mat0     [TLBNUM-1:0];
reg        tlb_d0       [TLBNUM-1:0];
reg        tlb_v0       [TLBNUM-1:0];
reg [19:0] tlb_ppn1     [TLBNUM-1:0];
reg [ 1:0] tlb_plv1     [TLBNUM-1:0];
reg [ 1:0] tlb_mat1     [TLBNUM-1:0];
reg        tlb_d1       [TLBNUM-1:0];
reg        tlb_v1       [TLBNUM-1:0];

//仿真测试
initial begin
    for(integer i=0;i<TLBNUM;i++)begin
        tlb_vppn[i]=0;
        tlb_e   [i]=0;
        tlb_asid[i]=0;
        tlb_g   [i]=0;
        tlb_ps  [i]=0;
        tlb_ppn0[i]=0;
        tlb_plv0[i]=0;
        tlb_mat0[i]=0;
        tlb_d0  [i]=0;
        tlb_v0  [i]=0;
        tlb_ppn1[i]=0;
        tlb_plv1[i]=0;
        tlb_mat1[i]=0;
        tlb_d1  [i]=0;
        tlb_v1  [i]=0;
    end
end


//one-hot类型记录命中情况
wire [TLBNUM-1:0] match0_a;
wire [TLBNUM-1:0] match0_b;
wire [TLBNUM-1:0] match1;

//数值类型表示命中数据所在的下标
wire [$clog2(TLBNUM)-1:0] match0_en_a;
wire [$clog2(TLBNUM)-1:0] match0_en_b;
wire [$clog2(TLBNUM)-1:0] match1_en;

//表示查奇页表还是偶页表
wire [TLBNUM-1:0] my_s0_odd_page_a;
wire [TLBNUM-1:0] my_s0_odd_page_b;
wire [TLBNUM-1:0] my_s1_odd_page;

//为s0_fetch_r，s0_vppn_r，s0_odd_page_r，s0_asid_r赋值


//为s0_odd_page_buffer，match0这种变量赋值
genvar i;
generate
    for (i = 0; i < TLBNUM; i = i + 1)
        begin: match
            assign my_s0_odd_page_a[i] = (tlb_ps[i] == 6'd12) ? transaddr2tlb.s0_odd_page_a : transaddr2tlb.s0_vppn_a[8];
            assign my_s0_odd_page_b[i] = (tlb_ps[i] == 6'd12) ? transaddr2tlb.s0_odd_page_b : transaddr2tlb.s0_vppn_b[8];
            assign match0_a[i] = tlb_e[i] && ((tlb_ps[i] == 6'd12) ? transaddr2tlb.s0_vppn_a == tlb_vppn[i] : transaddr2tlb.s0_vppn_a[18: 9] == tlb_vppn[i][18: 9]) && ((csr2tlb.asid == tlb_asid[i]) || tlb_g[i]);
            assign match0_b[i] = tlb_e[i] && ((tlb_ps[i] == 6'd12) ? transaddr2tlb.s0_vppn_b == tlb_vppn[i] : transaddr2tlb.s0_vppn_b[18: 9] == tlb_vppn[i][18: 9]) && ((csr2tlb.asid == tlb_asid[i]) || tlb_g[i]);
            assign my_s1_odd_page[i] = (tlb_ps[i] == 6'd12) ? transaddr2tlb.s1_odd_page : transaddr2tlb.s1_vppn[8];
            assign match1[i] = tlb_e[i] && ((tlb_ps[i] == 6'd12) ? transaddr2tlb.s1_vppn == tlb_vppn[i] : transaddr2tlb.s1_vppn[18: 9] == tlb_vppn[i][18: 9]) && ((csr2tlb.asid == tlb_asid[i]) || tlb_g[i]);
        end
endgenerate

//解码数据，转化便于使用
encoder_32_5 en_match0_a (.in({{(32-TLBNUM){1'b0}},match0_a}), .out(match0_en_a));//将32位的one-hot型数据解码成5位，即输出为 32位数据中是1的那一个数据的下标
encoder_32_5 en_match0_b (.in({{(32-TLBNUM){1'b0}},match0_b}), .out(match0_en_b));
encoder_32_5 en_match1 (.in({{(32-TLBNUM){1'b0}},match1}), .out(match1_en));

logic s0_fetch_a, s0_fetch_b, s1_fetch;
assign s0_fetch_a = transaddr2tlb.s0_fetch_a;
assign s0_fetch_b = transaddr2tlb.s0_fetch_b;
assign s1_fetch = transaddr2tlb.s1_fetch;


//向transaddr返回
always_ff @( posedge clk ) begin
    transaddr2tlb.tlb_ret_inst_a   <= s0_fetch_a;
    transaddr2tlb.tlb_ret_inst_b   <= s0_fetch_b;
    transaddr2tlb.tlb_ret_data     <= s1_fetch;
    transaddr2tlb.s0_ps_a          <= tlb_ps[match0_en_a];
    transaddr2tlb.s0_ps_b          <= tlb_ps[match0_en_b];
    transaddr2tlb.s1_ps            <= tlb_ps[match1_en];
    transaddr2tlb.s0_ppn_a         <= my_s0_odd_page_a[match0_en_a] ? tlb_ppn1[match0_en_a] : tlb_ppn0[match0_en_a];
    transaddr2tlb.s0_ppn_b         <= my_s0_odd_page_b[match0_en_b] ? tlb_ppn1[match0_en_b] : tlb_ppn0[match0_en_b];
    transaddr2tlb.s1_ppn           <= my_s1_odd_page[match1_en] ? tlb_ppn1[match1_en] : tlb_ppn0[match1_en];
    transaddr2tlb.mat_inst_a       <= my_s0_odd_page_a[match0_en_a] ? tlb_mat1[match0_en_a] : tlb_mat0[match0_en_a];
    transaddr2tlb.mat_inst_b       <= my_s0_odd_page_b[match0_en_b] ? tlb_mat1[match0_en_b] : tlb_mat0[match0_en_b];
    transaddr2tlb.mat_data         <= my_s1_odd_page[match1_en] ? tlb_mat1[match1_en] : tlb_mat0[match1_en];
    transaddr2tlb.inst_tlb_found_a <= |match0_a;
    transaddr2tlb.inst_tlb_found_b <= |match0_b;
    transaddr2tlb.data_tlb_found   <= |match1  ;
    transaddr2tlb.inst_tlb_plv_a   <= my_s0_odd_page_a[match0_en_a] ? tlb_plv1[match0_en_a] : tlb_plv0[match0_en_a];
    transaddr2tlb.inst_tlb_plv_b   <= my_s0_odd_page_b[match0_en_b] ? tlb_plv1[match0_en_b] : tlb_plv0[match0_en_b];
    transaddr2tlb.data_tlb_plv     <= my_s1_odd_page[match1_en] ? tlb_plv1[match1_en] : tlb_plv0[match1_en];
    transaddr2tlb.inst_tlb_v_a     <= my_s0_odd_page_a[match0_en_a] ? tlb_v1[match0_en_a]   : tlb_v0[match0_en_a]  ;
    transaddr2tlb.inst_tlb_v_b     <= my_s0_odd_page_b[match0_en_b] ? tlb_v1[match0_en_b]   : tlb_v0[match0_en_b]  ;
    transaddr2tlb.data_tlb_v       <= my_s1_odd_page[match1_en] ? tlb_v1[match1_en]   : tlb_v0[match1_en]  ;
    transaddr2tlb.data_tlb_d       <= my_s1_odd_page[match1_en] ? tlb_d1[match1_en]   : tlb_d0[match1_en]  ;
    transaddr2tlb.r_e              <= tlb_e[csr2tlb.tlbidx[`INDEX]]; 
end




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
assign w_index = ({5{ex2tlb.tlbfill_en}} & ex2tlb.rand_index) | ({5{ex2tlb.tlbwr_en}} & csr2tlb.tlbidx[`INDEX]);//写操作的index
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
assign ex2tlb.tlbehi_out   = {r_vppn, 13'b0};
assign ex2tlb.tlbelo0_out  = {4'b0, r_ppn0, 1'b0, r_g, r_mat0, r_plv0, r_d0, r_v0};
assign ex2tlb.tlbelo1_out  = {4'b0, r_ppn1, 1'b0, r_g, r_mat1, r_plv1, r_d1, r_v1};
assign ex2tlb.tlbidx_out   = {!r_e, 1'b0, r_ps, 24'b0}; //note do not write index
assign ex2tlb.asid_out     = r_asid;



//实现直接写TLB的功能
always @(posedge clk) begin
    if (we) begin
        tlb_vppn [w_index] <= w_vppn;
        tlb_asid [w_index] <= csr2tlb.asid;
        tlb_g    [w_index] <= w_g; 
        tlb_ps   [w_index] <= w_ps;  
        tlb_ppn0 [w_index] <= w_ppn0;
        tlb_plv0 [w_index] <= w_plv0;
        tlb_mat0 [w_index] <= w_mat0;
        tlb_d0   [w_index] <= w_d0;
        tlb_v0   [w_index] <= w_v0; 
        tlb_ppn1 [w_index] <= w_ppn1;
        tlb_plv1 [w_index] <= w_plv1;
        tlb_mat1 [w_index] <= w_mat1;
        tlb_d1   [w_index] <= w_d1;
        tlb_v1   [w_index] <= w_v1; 
    end
end

//实现直接读取TLB的功能
assign r_vppn  =  tlb_vppn [r_index]; 
assign r_asid  =  tlb_asid [r_index]; 
assign r_g     =  tlb_g    [r_index]; 
assign r_ps    =  tlb_ps   [r_index]; 
assign r_e     =  tlb_e    [r_index]; 
assign r_v0    =  tlb_v0   [r_index]; 
assign r_d0    =  tlb_d0   [r_index]; 
assign r_mat0  =  tlb_mat0 [r_index]; 
assign r_plv0  =  tlb_plv0 [r_index]; 
assign r_ppn0  =  tlb_ppn0 [r_index]; 
assign r_v1    =  tlb_v1   [r_index]; 
assign r_d1    =  tlb_d1   [r_index]; 
assign r_mat1  =  tlb_mat1 [r_index]; 
assign r_plv1  =  tlb_plv1 [r_index]; 
assign r_ppn1  =  tlb_ppn1 [r_index]; 


logic                     inv_en        ;
logic[ 4:0]               inv_op        ;
logic[ 9:0]               inv_asid      ;
logic[18:0]               inv_vpn       ;
assign inv_en   = ex2tlb.invtlb_en  ;
assign inv_op   = ex2tlb.invtlb_op  ;
assign inv_asid = ex2tlb.invtlb_asid;
assign inv_vpn  = ex2tlb.invtlb_vpn ;

//tlb entry invalid TLB清零功能
generate 
    for (i = 0; i < TLBNUM; i = i + 1) 
        begin: invalid_tlb_entry 
            always @(posedge clk) begin
                if (we && (w_index == i)) begin
                    tlb_e[i] <= w_e;
                end
                else if (inv_en) begin
                    if (inv_op == 5'd0 || inv_op == 5'd1) begin//当inv_op为0或1时，直接全部清零，将对应的TLB数据的E标记为非有效
                        tlb_e[i] <= 1'b0;
                    end
                    else if (inv_op == 5'd2) begin//当inv_op为2时，清零 全局变量 的TLB数据
                        if (tlb_g[i]) begin
                            tlb_e[i] <= 1'b0;
                        end
                    end
                    else if (inv_op == 5'd3) begin//当inv_op为3时，清零 所有非全局变量 的TLB数据
                        if (!tlb_g[i]) begin
                            tlb_e[i] <= 1'b0;
                        end
                    end
                    else if (inv_op == 5'd4) begin//当inv_op为4时，清零 ASID对应的非全局变量 的TLB数据
                        if (!tlb_g[i] && (tlb_asid[i] == inv_asid)) begin
                            tlb_e[i] <= 1'b0;
                        end
                    end
                    else if (inv_op == 5'd5) begin//当inv_op为5时，清零 VPPN和ASID对应的非全局变量 的TLB数据
                        if (!tlb_g[i] && (tlb_asid[i] == inv_asid) && 
                           ((tlb_ps[i] == 6'd12) ? (tlb_vppn[i] == inv_vpn) : (tlb_vppn[i][18:9] == inv_vpn[18:9]))) begin
                            tlb_e[i] <= 1'b0;
                        end
                    end
                    else if (inv_op == 5'd6) begin//当inv_op为6时，清零 VPPN对应的[全局变量或指定的ASID变量] 的TLB数据
                        if ((tlb_g[i] || (tlb_asid[i] == inv_asid)) && 
                           ((tlb_ps[i] == 6'd12) ? (tlb_vppn[i] == inv_vpn) : (tlb_vppn[i][18:9] == inv_vpn[18:9]))) begin
                            tlb_e[i] <= 1'b0;
                        end
                    end
                end
            end
        end 
endgenerate




endmodule