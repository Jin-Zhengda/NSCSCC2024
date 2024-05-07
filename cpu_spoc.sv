`timescale 1ns/1ps

module cpu_spoc 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic continue_idle
);

    bus32_t inst_addr;
    bus256_t inst;
    logic inst_en;
    logic inst_valid;

    logic ram_en;
    logic write_en;
    logic read_en;
    bus32_t addr;
    logic[3: 0] select;
    bus32_t data_i;
    bus32_t data_o;

    mem_dcache mem_dcache_io();
    pc_icache pc_icache_io();
    icache_mem icache_mem_io();

    assign ram_en = mem_dcache_io.valid;
    assign write_en = mem_dcache_io.op;
    assign read_en = ~mem_dcache_io.op;
    assign addr = mem_dcache_io.virtual_addr;
    assign select = mem_dcache_io.wstrb;
    assign data_i = mem_dcache_io.wdata;
    assign mem_dcache_io.rdata = data_o;
    assign mem_dcache_io.cache_miss = 1'b0;
    assign mem_dcache_io.data_ok = 1'b1;

    assign inst_addr = icache_mem_io.rd_addr;
    assign inst_en = icache_mem_io.rd_req;
    assign icache_mem_io.ret_data = inst;
    assign icache_mem_io.ret_valid = inst_valid;


    cpu_core u_cpu_core (
        .clk,
        .rst,
        .continue_idle,
        
        .icache_master(pc_icache_io.master),
        .dcache_master(mem_dcache_io.master)  
    );

    icache u_icache (
        .clk,
        .reset(rst),
        .pc2icache(pc_icache_io.slave),
        .rd_req(icache_mem_io.rd_req),
        .rd_addr(icache_mem_io.rd_addr),
        .ret_valid(icache_mem_io.ret_valid),
        .ret_data(icache_mem_io.ret_data)
    );

    inst_rom u_inst_rom (
        .clk,
        .rst,
        .rom_inst_en(inst_en),
        .rom_inst_addr(inst_addr),

        .rom_inst(inst),
        .rom_inst_valid(inst_valid)
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