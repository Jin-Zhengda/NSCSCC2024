module cpu_spoc 
    import pipeline_types::*;
    import icache_types::*;
(
    input logic clk,
    input logic rst,
    input logic continue_idle
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
    assign dcache.master.rdata = data_o;
    assign dcache.master.cache_miss = 1'b0;
    assign dcache.master.data_ok = 1'b1;

    assign front_icache_signals.virtual_addr = icache.master.pc;
    assign front_icache_signals.valid = icache.master.inst_en;
    assign icache.master.inst = icache_front_signals.rdata;
    assign icache.master.cache_miss = icache_front_signals.cache_miss;
    assign icache.master.data_ok = icache_front_signals.data_ok;

    assign inst_en = icache_axi_signals.rd_req;
    assign inst_addr = icache_axi_signals.rd_addr;

    assign axi_icache_signals.rd_rdy = 1'b1;
    assign axi_icache_signals.ret_valid = 1'b1;
    assign axi_icache_signals.ret_last = 1'b1;
    assign axi_icache_signals.ret_data = inst;


    cpu_core u_cpu_core (
        .clk,
        .rst,
        .continue_idle,
        
        .icache_master(icache.master),
        .dcache_master(dcache.master)
        
    );

    // icache
    FRONT_ICACHE_SIGNALS front_icache_signals;
    ICACHE_FRONT_SIGNALS icache_front_signals;
    AXI_ICACHE_SIGNALS axi_icache_signals;
    ICACHE_AXI_SIGNALS icache_axi_signals;


    icache u_icache(
        .clk,
        .reset(rst),
        .front_icache_signals,
        .icache_front_signals,
        .axi_icache_signals,
        .icache_axi_signals
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