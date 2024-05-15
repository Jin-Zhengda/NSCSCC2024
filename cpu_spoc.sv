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

    logic write_en;
    logic read_en;
    bus32_t read_addr;
    bus32_t write_addr;
    logic[3: 0] select;
    bus32_t data_i;
    logic[255: 0] data_o;
    logic data_valid;

    ctrl_t ctrl;
    logic branch_flush;
    cache_inst_t cache_inst;

    mem_dcache mem_dcache_io();
    pc_icache pc_icache_io();
    icache_mem icache_mem_io();

    assign inst_addr = icache_mem_io.rd_addr;
    assign inst_en = icache_mem_io.rd_req;
    assign icache_mem_io.ret_data = inst;
    assign icache_mem_io.ret_valid = inst_valid;


    cpu_core u_cpu_core (
        .clk,
        .rst,
        .continue_idle,
        
        .icache_master(pc_icache_io.master),
        .dcache_master(mem_dcache_io.master),
        .cache_inst(cache_inst),
        .ctrl(ctrl),
        .branch_flush(branch_flush)
    );

    logic icache_cacop;
    logic dcache_cacop;
    assign icache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2: 0] == 3'b0);
    assign dcache_cacop = cache_inst.is_cacop && (cache_inst.cacop_code[2: 0] == 3'b1);

    icache u_icache (
        .clk,
        .reset(rst),
        .pc2icache(pc_icache_io.slave),
        .ctrl(ctrl),
        .branch_flush(branch_flush),

        .rd_req(icache_mem_io.rd_req),
        .rd_addr(icache_mem_io.rd_addr),
        .ret_valid(icache_mem_io.ret_valid),
        .ret_data(icache_mem_io.ret_data),

        .icacop_op_en(icache_cacop),
        .icacop_op_mode(cache_inst.cacop_code[4: 3]),
        .icacop_addr(cache_inst.addr)
    );

    dcache u_dcache (
        .clk,
        .reset(rst),
        .mem2dcache(mem_dcache_io.slave),
        .rd_req(read_en),
        .rd_addr(read_addr),
        .wr_req(write_en),
        .wr_addr(write_addr),
        .wr_wstrb(select),
        .wr_data(data_i),
        .wr_rdy(1'b1),
        .rd_rdy(1'b1),
        .ret_data(data_o),
        .ret_valid(data_valid)
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
        .ram_en(1'b1),

        .write_en(write_en),

        .read_addr(read_addr),
        .write_addr(write_addr),
        .select(select),
        .data_i(data_i),
        .read_en(read_en),

        .data_o(data_o),
        .data_valid(data_valid)
    );

endmodule