// Exceptions
`define EXCEPTION_INT 7'b0000000
`define EXCEPTION_PIL 7'b0000010
`define EXCEPTION_PIS 7'b0000100
`define EXCEPTION_PIF 7'b0000110
`define EXCEPTION_PME 7'b0001000
`define EXCEPTION_PPI 7'b0001110
`define EXCEPTION_ADEF 7'b0010000
`define EXCEPTION_ADEM 7'b0010001
`define EXCEPTION_ALE 7'b0010010
`define EXCEPTION_SYS 7'b0010110
`define EXCEPTION_BRK 7'b0011000
`define EXCEPTION_INE 7'b0011010
`define EXCEPTION_IPE 7'b0011100
`define EXCEPTION_FPD 7'b0011110
`define EXCEPTION_FPE 7'b0100100
`define EXCEPTION_TLBR 7'b1111110
`define EXCEPTION_NOP 7'b1111111



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
    logic [31:0]            inst_vaddr_a;    //虚拟地址pc
    logic [31:0]            inst_vaddr_b;
    logic [31:0]            ret_inst_paddr_a;//物理地址pc
    logic [31:0]            ret_inst_paddr_b;//pc+4

    modport master(
        input ret_inst_paddr_a,ret_inst_paddr_b,
        output inst_fetch,inst_vaddr_a,inst_vaddr_b
    );

    modport slave(
        output ret_inst_paddr_a,ret_inst_paddr_b,
        input inst_fetch,inst_vaddr_a,inst_vaddr_b
    );
endinterface : icache_transaddr

interface dcache_transaddr;
    logic                   data_fetch;    //指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic [31:0]            data_vaddr;    //虚拟地址
    logic [31:0]            ret_data_paddr;//物理地址
    logic                   cacop_op_mode_di;//assign cacop_op_mode_di = ms_cacop && ((cacop_op_mode == 2'b0) || (cacop_op_mode == 2'b1));
    logic                   store;//当前为store操作
    logic                   tlb_exception;

    modport master(//dcache
        input ret_data_paddr,tlb_exception,
        output data_fetch,data_vaddr,cacop_op_mode_di,store
    );

    modport slave(
        output ret_data_paddr,tlb_exception,
        input data_fetch,data_vaddr,cacop_op_mode_di,store
    );
endinterface : dcache_transaddr



interface ex_tlb;
    //TLBFILL和TLBWR指令
    logic                  tlbfill_en         ;//TLBFILL指令的使能信号
    logic [4:0]            rand_index         ;//TLBFILL指令的index
    logic                  tlbwr_en           ;//TLBWR指令的使能信号

    //TLBSRCH指令
    logic                  tlbsrch_en         ;//TLBSRCH指令使能信号

    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    //默认read
    logic                  tlbrd_en           ;//TLBRD指令的使能信号

    //invtlb ——用于实现无效tlb的指令
    logic                  invtlb_en          ;//使能
    logic [ 9:0]           invtlb_asid        ;//asid
    logic [18:0]           invtlb_vpn         ;//vpn
    logic [ 4:0]           invtlb_op          ;//op


    //TLBSRCH指令
    logic                  search_tlb_found   ;//TLBSRCH命中
    logic [ 4:0]           search_tlb_index   ;//TLBSRCH所需返回的index信号

    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    logic [31:0]           tlbehi_out         ;//{r_vppn, 13'b0}
    logic [31:0]           tlbelo0_out        ;//{4'b0, ppn0, 1'b0, g, mat0, plv0, d0, v0}
    logic [31:0]           tlbelo1_out        ;//{4'b0, ppn1, 1'b0, g, mat1, plv1, d1, v1}
    logic [31:0]           tlbidx_out         ;//只有[29:24]为ps信号，其他位均为0
    logic [ 9:0]           asid_out           ;//读出的asid

    //返回信号
    logic                  tlbsrch_ret        ;
    logic                  tlbrd_ret          ;
    logic                  tlbrd_valid        ;



    //例外
    logic [1:0]            tlb_inst_exception      ;
    logic [1:0][6:0]       tlb_inst_exception_cause     ;
    logic                  tlb_data_exception      ;
    logic [6:0]            tlb_data_exception_cause;



    modport master(//ex
        input tlb_inst_exception,tlb_inst_exception_cause,tlb_data_exception,tlb_data_exception_cause,
                search_tlb_found,search_tlb_index,tlbehi_out,tlbelo0_out,tlbelo1_out,tlbidx_out,asid_out,tlbsrch_ret,tlbrd_ret,
        output tlbfill_en,tlbwr_en,tlbsrch_en,tlbrd_en,invtlb_en,invtlb_asid,invtlb_vpn,invtlb_op,rand_index
    );
    modport slave(//tlb
        input tlbfill_en,tlbwr_en,tlbsrch_en,tlbrd_en,invtlb_en,invtlb_asid,invtlb_vpn,invtlb_op,rand_index,
        output tlb_inst_exception,tlb_inst_exception_cause,tlb_data_exception,tlb_data_exception_cause,
                search_tlb_found,search_tlb_index,tlbehi_out,tlbelo0_out,tlbelo1_out,tlbidx_out,asid_out,tlbsrch_ret,tlbrd_ret
    );
endinterface //ex_tlb


interface csr_tlb;
    logic [31:0]           tlbidx             ;//7.5.1TLB索引寄存器，包含[4:0]为index,[29:24]为PS，[31]为NE
    logic [31:0]           tlbehi             ;//7.5.2TLB表项高位，包含[31:13]为VPPN
    logic [31:0]           tlbelo0,tlbelo1    ;//7.5.3TLB表项低位，包含写入TLB表项的内容
    logic [ 9:0]           asid               ;//7.5.4ASID的低9位
    //TLBFILL和TLBWR指令
    logic [5:0]            ecode           ;//7.5.1对于NE变量的描述中讲到，CSR.ESTAT.Ecode   (大概使能信号，若为111111则写使能，否则根据tlbindex_in.NE判断是否写使能？

    

    //CSR信号
    logic [31:0]           csr_dmw0           ;//dmw0，有效位是[27:25]，可能会作为最后转换出来的地址的最高三位
    logic [31:0]           csr_dmw1           ;//dmw1，有效位是[27:25]，可能会作为最后转换出来的地址的最高三位
    logic                  csr_da             ;
    logic                  csr_pg             ;   
    logic [1:0]            csr_plv            ;



    modport master(//csr
        output tlbidx,tlbehi,tlbelo0,tlbelo1,asid,ecode,
                csr_dmw0,csr_dmw1,csr_da,csr_pg,csr_plv
    );
    modport slave(//tlb
        input tlbidx,tlbehi,tlbelo0,tlbelo1,asid,ecode,
                csr_dmw0,csr_dmw1,csr_da,csr_pg,csr_plv
    );

endinterface //csr_tlb


