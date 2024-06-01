interface icache_tlb;
    logic                  inst_fetch           ,//指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic  [31:0]          inst_vaddr           ,//指令的虚拟地址
    
    logic [ 7:0]          inst_index           ,//指令物理地址的index部分
    logic [19:0]          inst_tag             ,//指令物理地址的tag部分
    logic [ 3:0]          inst_offset          ,//指令物理地址的offset部分
    logic                 inst_tlb_found       ,//指令地址在TLB中成功找到

    modport master(
        input ctrl, ctrl_pc, send_inst_en, update_info,
        output 
    );

    modport slave(
        output ctrl, ctrl_pc, send_inst_en,
        input branch_info, inst_and_pc_o, update_info
    );
    
endinterface : icache_tlb