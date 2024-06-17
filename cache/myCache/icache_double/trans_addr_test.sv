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


module trans_addr (
    input clk,
    icache_transaddr icache2transaddr
);
always_ff @( posedge clk ) begin
    if(icache2transaddr.inst_fetch)icache2transaddr.ret_inst_paddr<={8'hff,icache2transaddr.inst_vaddr[23:0]};
end


    
endmodule