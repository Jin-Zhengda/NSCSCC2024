module testbench ();

    logic                  clk                  ;
    logic  [ 9:0]          asid                 ;//CSR.ASID信息
    //trans mode
    logic                  inst_addr_trans_en   ;//指令地址转换使能，assign inst_addr_trans_en = pg_mode && !dmw0_en && !dmw1_en;assign pg_mode = csr_pg && !csr_da;
    logic                  data_addr_trans_en   ;//数据地址转换使能
    //inst addr trans
    logic                  inst_fetch           ;//指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic  [31:0]          inst_vaddr           ;//指令的虚拟地址
    logic                  inst_dmw0_en         ;//使用dmw0翻译地址assign dmw0_en = ((csr_dmw0[`PLV0] && csr_plv == 2'd0) || (csr_dmw0[`PLV3] && csr_plv == 2'd3)) && (fs_pc[31:29] == csr_dmw0[`VSEG]) && pg_mode;
    logic                  inst_dmw1_en         ;//使用dmw1翻译地址assign dmw1_en = ((csr_dmw1[`PLV0] && csr_plv == 2'd0) || (csr_dmw1[`PLV3] && csr_plv == 2'd3)) && (fs_pc[31:29] == csr_dmw1[`VSEG]) && pg_mode;
    logic [ 7:0]          inst_index           ;//指令物理地址的index部分
    logic [19:0]          inst_tag             ;//指令物理地址的tag部分
    logic [ 3:0]          inst_offset          ;//指令物理地址的offset部分
    logic                 inst_tlb_found       ;//指令地址在TLB中成功找到
    logic                 inst_tlb_v           ;//TLB这个数据有效
    logic                 inst_tlb_d           ;//TLB这个数据为脏
    logic [ 1:0]          inst_tlb_mat         ;//TLB这个数据的存储访问类型
    logic [ 1:0]          inst_tlb_plv         ;//TLB这个数据的特权等级
    //data addr trans
    logic                  data_fetch           ;
    logic  [31:0]          data_vaddr           ;
    logic                  data_dmw0_en         ;
    logic                  data_dmw1_en         ;
    logic                  cacop_op_mode_di     ;
    logic [ 7:0]          data_index           ;
    logic [19:0]          data_tag             ;
    logic [ 3:0]          data_offset          ;
    logic                 data_tlb_found       ;
    logic [ 4:0]          data_tlb_index       ;
    logic                 data_tlb_v           ;
    logic                 data_tlb_d           ;
    logic [ 1:0]          data_tlb_mat         ;
    logic [ 1:0]          data_tlb_plv         ;
    //TLBFILL和TLBWR指令
    logic                  tlbfill_en           ;//TLBFILL指令的使能信号
    logic                  tlbwr_en             ;//TLBWR指令的使能信号
    logic  [ 4:0]          rand_index           ;//TLBFILL指令的index
    logic  [31:0]          tlbehi_in            ;//CSR.TLBEHI信息
    logic  [31:0]          tlbelo0_in           ;//CSR.TLBELO0信息
    logic  [31:0]          tlbelo1_in           ;//CSR.TLBELO1信息
    logic  [31:0]          tlbidx_in            ;//读写共用的信号！包含了TLBWR时的index位于[4:0],以及PS信号位于[29:24]，NE信号位于[31]
    logic  [ 5:0]          ecode_in             ;//使能信号，若为111111则写使能，否则根据tlbindex_in.NE判断是否写使能？
    //TLBSRCH指令！！！！！！！！！！！！！！！！尚待自己实现！！！！！！！！！！！！！！！！！！！！！
    logic                  tlbsrch_en           ;//TLBSRCH指令使能信号
    logic  [31:0]          tlbsrch_ehi          ;//TLBSRCH指令的ehi信号
    logic                 search_tlb_found     ;//TLBSRCH命中
    logic [ 4:0]          search_tlb_index     ;//TLBSRCH所需返回的index信号
    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    logic [31:0]          tlbehi_out           ;//{r_vppn, 13'b0}
    logic [31:0]          tlbelo0_out          ;//{4'b0, ppn0, 1'b0, g, mat0, plv0, d0, v0}
    logic [31:0]          tlbelo1_out          ;//{4'b0, ppn1, 1'b0, g, mat1, plv1, d1, v1}
    logic [31:0]          tlbidx_out           ;//只有[29:24]为ps信号，其他位均为0
    logic [ 9:0]          asid_out             ;//读出的asid
    //invtlb ——用于实现无效tlb的指令
    logic                  invtlb_en            ;//使能
    logic  [ 9:0]          invtlb_asid          ;//asid
    logic  [18:0]          invtlb_vpn           ;//vpn
    logic  [ 4:0]          invtlb_op            ;//op
    //from csr
    logic  [31:0]          csr_dmw0             ;//dmw0，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    logic  [31:0]          csr_dmw1             ;//dmw1，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    logic                  csr_da               ;//表示地址翻译模式为数据模式????????????????????????????????????????????????????????????????
    logic                  csr_pg               ;//表示地址翻译模式为分页模式????????????????????????????????????????????????????????????????


reg reset;
reg[31:0] counter;
initial begin
    clk=1'b0;reset=1'b1;
    #30 reset=1'b0;
    
    
    #900 $finish;
end
always #10 clk=~clk;

always @(posedge clk) begin
    if(reset)counter<=32'b0;
    else counter<=counter+32'b1;
end



always_ff @( posedge clk ) begin
    if(counter==0)begin
        asid<=10'b0;
        inst_addr_trans_en<=1'b1   ;//指令地址转换使能
        data_addr_trans_en<=1'b1   ;//数据地址转换
        inst_fetch    <=1'b0       ;//指令地址转换信息有效的信号
        inst_vaddr    <=32'b0       ;//指令的虚拟地址
        inst_dmw0_en  <=1'b0       ;//使用dmw0翻译地址
        inst_dmw1_en  <=1'b0       ;//使用dmw1翻译地址

        data_fetch       <=1'b0   ;
        data_vaddr       <=32'b0   ;
        data_dmw0_en     <=1'b0   ;
        data_dmw1_en     <=1'b0   ;
        cacop_op_mode_di <=1'b0   ;


        tlbfill_en   <=1'b0       ;
        tlbwr_en     <=1'b0       ;
        rand_index   <=5'b0       ;
        tlbehi_in    <=32'b0       ;
        tlbelo0_in   <=32'b0       ;
        tlbelo1_in   <=32'b0       ;
        tlbidx_in    <=32'b0       ; 
        ecode_in     <=6'b0       ;

        tlbsrch_en <=1'b0          ;//TLBSRCH指令使能信号
        tlbsrch_ehi <=32'b0         ;//TLBSRCH指令的ehi信号


        invtlb_en    <=1'b0       ;
        invtlb_asid  <=10'b0       ;
        invtlb_vpn   <=19'b0       ;
        invtlb_op    <=5'b0       ;

        csr_dmw0     <=32'b0       ;//dmw0的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位(为什么是27:25??????????????????????????)
        csr_dmw1     <=32'b0       ;//dmw1的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位
        csr_da       <=1'b0       ;//表示地址翻译模式为数据模式????????????????????????????????????????????????????????????????
        csr_pg       <=1'b0       ;
    end
    //TLB_WR测试
    else if(counter>1&&counter<10)begin
        tlbwr_en<=1'b1;
        rand_index<=counter[4:0];
        tlbehi_in    <={counter[18:0],13'b0}       ;
        tlbelo0_in   <={4'b0, {counter[18:0],1'b0}, 1'b0, 1'b0, 2'b11, 2'b0, 1'b0, 1'b1};
        tlbelo1_in   <={4'b0, {counter[18:0],1'b1}, 1'b0, 1'b0, 2'b11, 2'b0, 1'b0, 1'b1};
        tlbidx_in    <={1'b0, 1'b0, counter[5:0], 24'b0};
        //tlbelo0_in   <={4'b0, r_ppn0, 1'b0, r_g, r_mat0, r_plv0, r_d0, r_v0};
        //tlbelo1_in   <={4'b0, r_ppn0, 1'b0, r_g, r_mat0, r_plv0, r_d0, r_v0};
        //tlbidx_in    <={!r_e, 1'b0, r_ps, 24'b0};
    end

    //TLB_RD测试
    else if(counter>11&&counter<20)begin
        tlbidx_in<={1'b0, 1'b0, counter[5:0], 19'b0,counter[4:0]-5'd10};
    end
end






trans_addr u_trans_addr

(
    .clk                  (clk                  ),
    .asid                 (asid                 ),

    .inst_addr_trans_en   (inst_addr_trans_en   ),//指令地址转换使能
    .data_addr_trans_en   (data_addr_trans_en   ),//数据地址转换使能

    .inst_fetch           (inst_fetch           ),//指令地址转换信息有效的信号
    .inst_vaddr           (inst_vaddr           ),//指令的虚拟地址
    .inst_dmw0_en         (inst_dmw0_en         ),//使用dmw0翻译地址
    .inst_dmw1_en         (inst_dmw1_en         ),//使用dmw1翻译地址
    .inst_index           (inst_index           ),//指令物理地址的index部分
    .inst_tag             (inst_tag             ),//指令物理地址的tag部分
    .inst_offset          (inst_offset          ),//指令物理地址的offset部分
    .inst_tlb_found       (inst_tlb_found       ),//指令地址在TLB中成功找到
    .inst_tlb_v           (inst_tlb_v           ),//TLB这个数据有效
    .inst_tlb_d           (inst_tlb_d           ),//TLB这个数据为脏
    .inst_tlb_mat         (inst_tlb_mat         ),//TLB这个数据的存储访问类型
    .inst_tlb_plv         (inst_tlb_plv         ),//TLB这个数据的特权等级

    .data_fetch           (data_fetch           ),
    .data_vaddr           (data_vaddr           ),
    .data_dmw0_en         (data_dmw0_en         ),
    .data_dmw1_en         (data_dmw1_en         ),
    .cacop_op_mode_di     (cacop_op_mode_di     ),
    .data_index           (data_index           ),
    .data_tag             (data_tag             ),
    .data_offset          (data_offset          ),
    .data_tlb_found       (data_tlb_found       ),
    .data_tlb_index       (data_tlb_index       ),
    .data_tlb_v           (data_tlb_v           ),
    .data_tlb_d           (data_tlb_d           ),
    .data_tlb_mat         (data_tlb_mat         ),
    .data_tlb_plv         (data_tlb_plv         ),

    .tlbsrch_en           (tlbsrch_en           ),     
    .tlbsrch_ehi          (tlbsrch_ehi          ),
    .search_tlb_found     (search_tlb_found     ),
    .search_tlb_index     (search_tlb_index     ),

    .tlbfill_en           (tlbfill_en           ),
    .tlbwr_en             (tlbwr_en             ),
    .rand_index           (rand_index           ),
    .tlbehi_in            (tlbehi_in            ),
    .tlbelo0_in           (tlbelo0_in           ),
    .tlbelo1_in           (tlbelo1_in           ),
    .tlbidx_in            (tlbidx_in            ), 
    .ecode_in             (ecode_in             ),

    .tlbehi_out           (tlbehi_out           ),
    .tlbelo0_out          (tlbelo0_out          ),
    .tlbelo1_out          (tlbelo1_out          ),
    .tlbidx_out           (tlbidx_out           ),
    .asid_out             (asid_out             ),

    .invtlb_en            (invtlb_en            ),
    .invtlb_asid          (invtlb_asid          ),
    .invtlb_vpn           (invtlb_vpn           ),
    .invtlb_op            (invtlb_op            ),

    .csr_dmw0             (csr_dmw0             ),//dmw0的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位(为什么是27:25??????????????????????????)
    .csr_dmw1             (csr_dmw1             ),//dmw1的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    .csr_da               (csr_da               ),//表示地址翻译模式为数据模式????????????????????????????????????????????????????????????????
    .csr_pg               (csr_pg               ) //表示地址翻译模式为分页模式????????????????????????????????????????????????????????????????
);
endmodule