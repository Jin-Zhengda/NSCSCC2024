module cpu_spoc 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst
);

    bus32_t inst_addr;
    bus32_t inst;
    logic inst_en;

    logic ram_en;
    logic write_en;
    logic read_en;
    bus32_t addr;
    logic[3: 0] select;
    bus32_t data_i;
    bus32_t data_o;

    mem_dcache dcache();
    pc_icache icache();

    assign ram_en = dcache.master.valid;
    assign write_en = dcache.master.op;
    assign read_en = ~dcache.master.op;
    assign addr = dcache.master.virtual_addr;
    assign select = dcache.master.wstrb;
    assign data_i = dcache.master.wdata;
    assign data_o = dcache.master.rdata;
    assign dcache.master.cache_miss = 1'b0;

    assign inst_addr = icache.master.pc;
    assign inst_en = icache.master.inst_en;
    assign icache.master.inst = inst;


    cpu_core u_cpu_core (
        .clk,
        .rst,
        
        .icache_master(icache.master),
        .dcache_master(dcache.master)
        
    );

    inst_rom u_inst_rom (
        .rom_inst_en(inst_en),
        .rom_inst_addr(inst_addr),

        .rom_inst(inst)
    );

    data_ram u_data_ram (
        .clk(clk),
        .ram_en(ram_en),

        .write_en(write_en),
        .addr(addr),
        .select(select),
        .data_i(data_i),
        .read_en(read_en),

        .data_o(data_o)
    );

endmodule