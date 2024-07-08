module trans_addr (
    input clk,
    icache_transaddr icache2transaddr
);
always_ff @( posedge clk ) begin
    if(icache2transaddr.inst_fetch)icache2transaddr.ret_inst_paddr<={8'hff,icache2transaddr.inst_vaddr[23:0]};
end    
endmodule