module tlb
#(
    parameter TLBNUM = 32
)
(
    input        clk,
    // search port 0
    input                        s0_fetch    ,//控制信号，取指令的使能
    input   [18:0]               s0_vppn_a     ,//虚双页号(VPPN)
    input                        s0_odd_page_a ,//表示查奇页表还是偶页表
    input   [ 9:0]               s0_asid     ,//地址空间标识(ASID)即Address Space Identifier，用于区分不同进程中相同的虚地址
    output                       s0_found_a    ,//输出信号，表示s0中命中了
    output  [ 4:0]               s0_index    ,//不懂！！！！！！！！！！！！！！！！！！！！！！
    output  [ 5:0]               s0_ps_a       ,//页大小(PS)，6 比特。仅在 MTLB 中出现。用于指定该页表项中存放的页大小。数值是页大小的 2的幂指数。龙芯架构 32 位精简版只支持 4KB 和 4MB 两种页大小,对应的 PS 值分别是 12 和 22。
    output  [19:0]               s0_ppn_a      ,//物理页号(PPN)
    output                       s0_v_a        ,//有效位(V)，1比特。为1表明该页表项是有效的且被访问过的。
    output                       s0_d_a        ,//脏位(D)，1比特。为1表示该页表项所对应的地址范围内已有脏数据。
    output  [ 1:0]               s0_mat_a      ,//存储访问类型(MAT)，2 比特。控制落在该页表项所在地址空间上访存操作的存储访问类型。存储访问类型：:0--强序非缓存,1--一致可缓存。2/3--保留。
    output  [ 1:0]               s0_plv_a      ,//特权等级(PLV)，2比特。该页表项对应的特权等级。该页表项可以被任何特权等级不低于 PLV的程序访问。

    input   [18:0]               s0_vppn_b     ,
    input                        s0_odd_page_b ,
    output                       s0_found_b    ,

    output  [ 5:0]               s0_ps_b       ,
    output  [19:0]               s0_ppn_b      ,
    output                       s0_v_b        ,
    output                       s0_d_b        ,
    output  [ 1:0]               s0_mat_b      ,
    output  [ 1:0]               s0_plv_b      ,

    //search port 1
    input                        s1_fetch    ,
    input   [18:0]               s1_vppn     ,
    input                        s1_odd_page ,
    input   [ 9:0]               s1_asid     ,
    output                       s1_found    ,
    output  [ 4:0]               s1_index    ,
    output  [ 5:0]               s1_ps       ,
    output  [19:0]               s1_ppn      ,
    output                       s1_v        ,
    output                       s1_d        ,
    output  [ 1:0]               s1_mat      ,
    output  [ 1:0]               s1_plv      ,
    // write port 提供直接写TLB表的接口
    input                       we          ,
    input  [$clog2(TLBNUM)-1:0] w_index     ,
    input  [18:0]               w_vppn      ,
    input  [ 9:0]               w_asid      ,
    input                       w_g         ,
    input  [ 5:0]               w_ps        ,
    input                       w_e         ,
    input                       w_v0        ,
    input                       w_d0        ,
    input  [ 1:0]               w_mat0      ,
    input  [ 1:0]               w_plv0      ,
    input  [19:0]               w_ppn0      ,
    input                       w_v1        ,
    input                       w_d1        ,
    input  [ 1:0]               w_mat1      ,
    input  [ 1:0]               w_plv1      ,
    input  [19:0]               w_ppn1      ,
    // read port 提供直接读TLB表的接口
    input  [$clog2(TLBNUM)-1:0] r_index     ,//需要读的数据在TLB表的第index个
    output [18:0]               r_vppn      ,
    output [ 9:0]               r_asid      ,
    output                      r_g         ,
    output [ 5:0]               r_ps        ,
    output                      r_e         ,
    output                      r_v0        ,
    output                      r_d0        ,
    output [ 1:0]               r_mat0      ,
    output [ 1:0]               r_plv0      ,
    output [19:0]               r_ppn0      ,
    output                      r_v1        ,
    output                      r_d1        ,
    output [ 1:0]               r_mat1      ,
    output [ 1:0]               r_plv1      ,
    output [19:0]               r_ppn1      ,
    // invalid port 清零操作接口
    input                       inv_en      ,   //清零使能信号
    input  [ 4:0]               inv_op      ,   //清零操作类型
    input  [ 9:0]               inv_asid    ,   //清零操作ASID数据(选择性)
    input  [18:0]               inv_vpn         //清零操作VPPN数据(选择性)
);

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





//创建reg变量记录输入请求
reg		   s0_fetch_r_a   ;
reg [18:0] s0_vppn_r_a    ;
reg        s0_odd_page_r_a;
reg [ 9:0] s0_asid_r_a    ;
reg		   s0_fetch_r_b   ;
reg [18:0] s0_vppn_r_b    ;
reg        s0_odd_page_r_b;
reg [ 9:0] s0_asid_r_b    ;
reg		   s1_fetch_r   ;
reg [18:0] s1_vppn_r    ;
reg        s1_odd_page_r;
reg [ 9:0] s1_asid_r    ;

//one-hot类型记录命中情况
wire [TLBNUM-1:0] match0_a;
wire [TLBNUM-1:0] match0_b;
wire [TLBNUM-1:0] match1;

//数值类型表示命中数据所在的下标
wire [$clog2(TLBNUM)-1:0] match0_en_a;
wire [$clog2(TLBNUM)-1:0] match0_en_b;
wire [$clog2(TLBNUM)-1:0] match1_en;

//表示查奇页表还是偶页表
wire [TLBNUM-1:0] s0_odd_page_buffer_a;
wire [TLBNUM-1:0] s0_odd_page_buffer_b;
wire [TLBNUM-1:0] s1_odd_page_buffer;

//为s0_fetch_r，s0_vppn_r，s0_odd_page_r，s0_asid_r赋值
always @(posedge clk) begin
	s0_fetch_r_a <= s0_fetch;
	if (s0_fetch) begin
		s0_vppn_r_a      <= s0_vppn_a;    
        s0_odd_page_r_a  <= s0_odd_page_a;
        s0_asid_r_a      <= s0_asid;
        s0_vppn_r_b      <= s0_vppn_b;    
        s0_odd_page_r_b  <= s0_odd_page_b;
        s0_asid_r_b      <= s0_asid;
	end
    else begin
        s0_vppn_r_a      <= 19'b0;
        s0_odd_page_r_a  <= 1'b0;
        s0_asid_r_a      <= 10'b0;
        s0_vppn_r_b      <= 19'b0;
        s0_odd_page_r_b  <= 1'b0;
        s0_asid_r_b      <= 10'b0;
    end
    
	s1_fetch_r <= s1_fetch;
	if (s1_fetch) begin
		s1_vppn_r      <= s1_vppn;    
        s1_odd_page_r  <= s1_odd_page;
        s1_asid_r      <= s1_asid;
	end
    else begin
        s1_vppn_r      <= 19'b0;    
        s1_odd_page_r  <= 1'b0;
        s1_asid_r      <= 10'b0;
    end
end

//为s0_odd_page_buffer，match0这种变量赋值
genvar i;
generate
    for (i = 0; i < TLBNUM; i = i + 1)
        begin: match
            assign s0_odd_page_buffer_a[i] = (tlb_ps[i] == 6'd12) ? s0_odd_page_r_a : s0_vppn_r_a[8];
            assign s0_odd_page_buffer_b[i] = (tlb_ps[i] == 6'd12) ? s0_odd_page_r_b : s0_vppn_r_b[8];
            assign match0_a[i] = tlb_e[i] && ((tlb_ps[i] == 6'd12) ? s0_vppn_r_a == tlb_vppn[i] : s0_vppn_r_a[18: 9] == tlb_vppn[i][18: 9]) && ((s0_asid_r_a == tlb_asid[i]) || tlb_g[i]);
            assign match0_b[i] = tlb_e[i] && ((tlb_ps[i] == 6'd12) ? s0_vppn_r_b == tlb_vppn[i] : s0_vppn_r_b[18: 9] == tlb_vppn[i][18: 9]) && ((s0_asid_r_b == tlb_asid[i]) || tlb_g[i]);
            assign s1_odd_page_buffer[i] = (tlb_ps[i] == 6'd12) ? s1_odd_page_r : s1_vppn_r[8];
            assign match1[i] = tlb_e[i] && ((tlb_ps[i] == 6'd12) ? s1_vppn_r == tlb_vppn[i] : s1_vppn_r[18: 9] == tlb_vppn[i][18: 9]) && ((s1_asid_r == tlb_asid[i]) || tlb_g[i]);
        end
endgenerate

//解码数据，转化便于使用
encoder_32_5 en_match0_a (.in({{(32-TLBNUM){1'b0}},match0_a}), .out(match0_en_a));//将32位的one-hot型数据解码成5位，即输出为 32位数据中是1的那一个数据的下标
encoder_32_5 en_match0_b (.in({{(32-TLBNUM){1'b0}},match0_b}), .out(match0_en_b));
encoder_32_5 en_match1 (.in({{(32-TLBNUM){1'b0}},match1}), .out(match1_en));





//给输出信号赋值，将信息处理成输出
assign s0_found_a = |match0_a;
assign s0_index_a = {{(5-$clog2(TLBNUM)){1'b0}},match0_en_a};
assign s0_ps_a    = tlb_ps[match0_en_a];
assign s0_ppn_a   = s0_odd_page_buffer_a[match0_en_a] ? tlb_ppn1[match0_en_a] : tlb_ppn0[match0_en_a];
assign s0_v_a     = s0_odd_page_buffer_a[match0_en_a] ? tlb_v1[match0_en_a]   : tlb_v0[match0_en_a]  ;
assign s0_d_a     = s0_odd_page_buffer_a[match0_en_a] ? tlb_d1[match0_en_a]   : tlb_d0[match0_en_a]  ;
assign s0_mat_a   = s0_odd_page_buffer_a[match0_en_a] ? tlb_mat1[match0_en_a] : tlb_mat0[match0_en_a];
assign s0_plv_a   = s0_odd_page_buffer_a[match0_en_a] ? tlb_plv1[match0_en_a] : tlb_plv0[match0_en_a];

assign s0_found_b = |match0_b;
assign s0_index_b = {{(5-$clog2(TLBNUM)){1'b0}},match0_en_b};
assign s0_ps_b    = tlb_ps[match0_en_b];
assign s0_ppn_b   = s0_odd_page_buffer_b[match0_en_b] ? tlb_ppn1[match0_en_b] : tlb_ppn0[match0_en_b];
assign s0_v_b     = s0_odd_page_buffer_b[match0_en_b] ? tlb_v1[match0_en_b]   : tlb_v0[match0_en_b]  ;
assign s0_d_b     = s0_odd_page_buffer_b[match0_en_b] ? tlb_d1[match0_en_b]   : tlb_d0[match0_en_b]  ;
assign s0_mat_b   = s0_odd_page_buffer_b[match0_en_b] ? tlb_mat1[match0_en_b] : tlb_mat0[match0_en_b];
assign s0_plv_b   = s0_odd_page_buffer_b[match0_en_b] ? tlb_plv1[match0_en_b] : tlb_plv0[match0_en_b];



assign s1_found = |match1;
assign s1_index = {{(5-$clog2(TLBNUM)){1'b0}},match1_en};
assign s1_ps    = tlb_ps[match1_en];
assign s1_ppn   = s1_odd_page_buffer[match1_en] ? tlb_ppn1[match1_en] : tlb_ppn0[match1_en];
assign s1_v     = s1_odd_page_buffer[match1_en] ? tlb_v1[match1_en]   : tlb_v0[match1_en]  ;
assign s1_d     = s1_odd_page_buffer[match1_en] ? tlb_d1[match1_en]   : tlb_d0[match1_en]  ;
assign s1_mat   = s1_odd_page_buffer[match1_en] ? tlb_mat1[match1_en] : tlb_mat0[match1_en];
assign s1_plv   = s1_odd_page_buffer[match1_en] ? tlb_plv1[match1_en] : tlb_plv0[match1_en];

//实现直接写TLB的功能
always @(posedge clk) begin
    if (we) begin
        tlb_vppn [w_index] <= w_vppn;
        tlb_asid [w_index] <= w_asid;
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
