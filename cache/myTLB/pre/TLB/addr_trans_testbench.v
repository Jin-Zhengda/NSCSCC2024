module addr_trans_testbench ();

    reg                  clk                  ;
    reg  [ 9:0]          asid                 ;
    //trans mod;
    reg                  inst_addr_trans_en   ;//指令地址转换使能
    reg                  data_addr_trans_en   ;//数据地址转换使能
    //inst addr tran;
    reg                  inst_fetch           ;//指令地址转换信息有效的信号
    reg  [31:0]          inst_vaddr           ;//指令的虚拟地址
    reg                  inst_dmw0_en         ;//使用dmw0翻译地址
    reg                  inst_dmw1_en         ;//使用dmw1翻译地址
    wire [ 7:0]          inst_index           ;//指令物理地址的index部分
    wire [19:0]          inst_tag             ;//指令物理地址的tag部分
    wire [ 3:0]          inst_offset          ;//指令物理地址的offset部分
    wire                 inst_tlb_found       ;//指令地址在TLB中成功找到
    wire                 inst_tlb_v           ;//TLB这个数据有效
    wire                 inst_tlb_d           ;//TLB这个数据为脏
    wire [ 1:0]          inst_tlb_mat         ;//TLB这个数据的存储访问类型
    wire [ 1:0]          inst_tlb_plv         ;//TLB这个数据的特权等级
    //data addr tran;
    reg                  data_fetch           ;
    reg  [31:0]          data_vaddr           ;
    reg                  data_dmw0_en         ;
    reg                  data_dmw1_en         ;
    reg                  cacop_op_mode_di     ;
    wire [ 7:0]          data_index           ;
    wire [19:0]          data_tag             ;
    wire [ 3:0]          data_offset          ;
    wire                 data_tlb_found       ;
    wire [ 4:0]          data_tlb_index       ;
    wire                 data_tlb_v           ;
    wire                 data_tlb_d           ;
    wire [ 1:0]          data_tlb_mat         ;
    wire [ 1:0]          data_tlb_plv         ;
    //tlbwi tlbwr tlb writ;
    reg                  tlbfill_en           ;
    reg                  tlbwr_en             ;
    reg  [ 4:0]          rand_index           ;
    reg  [31:0]          tlbehi_in            ;
    reg  [31:0]          tlbelo0_in           ;
    reg  [31:0]          tlbelo1_in           ;
    reg  [31:0]          tlbidx_in            ; 
    reg  [ 5:0]          ecode_in             ;
    //tlbr tlb rea;
    wire [31:0]          tlbehi_out           ;
    wire [31:0]          tlbelo0_out          ;
    wire [31:0]          tlbelo1_out          ;
    wire [31:0]          tlbidx_out           ;
    wire [ 9:0]          asid_out             ;
    //invtlb;
    reg                  invtlb_en            ;
    reg  [ 9:0]          invtlb_asid          ;
    reg  [18:0]          invtlb_vpn           ;
    reg  [ 4:0]          invtlb_op            ;
    //from cs;
    reg  [31:0]          csr_dmw0             ;//dmw0的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位(为什么是27:25??????????????????????????)
    reg  [31:0]          csr_dmw1             ;//dmw1的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    reg                  csr_da               ;//表示地址翻译模式为数据模式????????????????????????????????????????????????????????????????
    reg                  csr_pg               ; 

reg reset;
integer counter;
initial begin
    clk=1'b0;reset=1'b1;
    inst_addr_trans_en=1'b0   ;//指令地址转换使能
    data_addr_trans_en=1'b0   ;//数据地址转换
    inst_fetch    =1'b0       ;//指令地址转换信息有效的信号
    inst_vaddr    =32'b0       ;//指令的虚拟地址
    inst_dmw0_en  =1'b0       ;//使用dmw0翻译地址
    inst_dmw1_en  =1'b0       ;//使用dmw1翻译地址

    data_fetch       =1'b0   ;
    data_vaddr       =32'b0   ;
    data_dmw0_en     =1'b0   ;
    data_dmw1_en     =1'b0   ;
    cacop_op_mode_di =1'b0   ;


    tlbfill_en   =1'b0       ;
    tlbwr_en     =1'b0       ;
    rand_index   =5'b0       ;
    tlbehi_in    =32'b0       ;
    tlbelo0_in   =32'b0       ;
    tlbelo1_in   =32'b0       ;
    tlbidx_in    =32'b0       ; 
    ecode_in     =6'b0       ;


    invtlb_en    =1'b0       ;
    invtlb_asid  =10'b0       ;
    invtlb_vpn   =19'b0       ;
    invtlb_op    =5'b0       ;
    
    csr_dmw0     =32'b0       ;//dmw0的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位(为什么是27:25??????????????????????????)
    csr_dmw1     =32'b0       ;//dmw1的窗口，有效位是[27:25]，会作为最后转换出来的地址的最高三位
    csr_da       =1'b0       ;//表示地址翻译模式为数据模式????????????????????????????????????????????????????????????????
    csr_pg       =1'b0       ;






    #20 begin
        reset=1'b0;
        tlbfill_en  =1'b1        ;
        tlbwr_en    =1'b1        ;
    end
    #500 begin
        asid=10'b00_0000_0001;
        inst_addr_trans_en=1'b1;
        inst_fetch=1'b1;
        inst_dmw0_en=1'b1;
        inst_dmw1_en=1'b0;

    end
    
    #900 $finish;
end
always #10 clk=~clk;

always @(posedge clk) begin
    if(reset)counter<=0;
    else counter<=counter+1;
end

always @(posedge clk) begin
    if(reset)inst_vaddr<=32'b0;
    else if(inst_addr_trans_en)inst_vaddr<=inst_vaddr+4;
    else inst_vaddr<=inst_vaddr;
end


always @(posedge clk) begin
        if(reset)begin
            rand_index  =5'b0        ;
            tlbehi_in   =32'b0        ;
            tlbelo0_in  =32'b0        ;
            tlbelo1_in  =32'b0        ;
            tlbidx_in   =32'b0        ;
            ecode_in    =6'b0        ;
        end
        else begin
            rand_index<=rand_index+1;
            tlbehi_in <=tlbehi_in+1;
            tlbelo0_in<=tlbelo0_in+2;
            tlbelo1_in<=tlbelo1_in+3;
            tlbidx_in <=tlbidx_in+4;
            ecode_in  <=ecode_in+1;
        end
    end





addr_trans u_addr_trans

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