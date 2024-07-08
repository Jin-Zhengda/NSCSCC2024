interface dcache_transaddr;
    logic                   data_fetch;    //指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic [31:0]            data_vaddr;    //虚拟地址
    logic [31:0]            ret_data_paddr;//物理地址

    modport master(
        input ret_data_paddr,
        output data_fetch,data_vaddr  
    );

    modport slave(
        output ret_data_paddr,
        input data_fetch,data_vaddr
    );
endinterface : dcache_transaddr


module trans_addr (
    input clk,
    dcache_transaddr dcache2transaddr
);
always_ff @( posedge clk ) begin
    if(dcache2transaddr.data_fetch)dcache2transaddr.ret_data_paddr<={8'hff,dcache2transaddr.data_vaddr[23:0]};
end


    
endmodule