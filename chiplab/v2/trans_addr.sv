module trans_addr (
    input clk,
    icache_transaddr icache2transaddr,
    dcache_transaddr dcache2transaddr
);
always_ff @( posedge clk ) begin
    if(icache2transaddr.inst_fetch)icache2transaddr.ret_inst_paddr<=icache2transaddr.inst_vaddr;
    if(dcache2transaddr.data_fetch)dcache2transaddr.ret_data_paddr<=dcache2transaddr.data_vaddr;
end    
endmodule