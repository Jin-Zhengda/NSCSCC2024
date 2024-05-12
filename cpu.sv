`include "pipeline_types.sv"
`include "interface.sv"
`timescale 1ns / 1ps

module cpu 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic icache_ret_valid,
    input bus256_t icache_ret_data,
    output logic icache_rd_req,
    output bus32_t icache_rd_addr,

    input logic dcache_wr_rdy,
    input logic dcache_rd_rdy,
    input logic dcache_ret_valid,
    input bus256_t dcache_ret_data,

    output logic dcache_rd_req,
    output logic[2: 0] dcache_rd_type,
    output bus32_t dcache_rd_addr,
    output logic dcache_wr_req,
    output bus32_t dcache_wr_addr,
    output logic[3: 0] dcache_wr_wstrb,
    output bus256_t dcache_wr_data
);
    
    ctrl_t ctrl;
    logic branch_flush;
    cache_inst_t cache_inst;

    mem_dcache mem_dcache_io();
    pc_icache pc_icache_io();


    cpu_core u_cpu_core (
        .clk,
        .rst,
        
        .icache_master(pc_icache_io.master),
        .dcache_master(mem_dcache_io.master),
        .cache_inst(cache_inst),
        .ctrl(ctrl),
        .branch_flush(branch_flush)
    );

    icache u_icache (
        .clk,
        .reset(rst),
        .pc2icache(pc_icache_io.slave),
        .ctrl(ctrl),
        .branch_flush(branch_flush),

        .rd_req(icache_rd_req),
        .rd_addr(icache_rd_addr),
        .ret_valid(icache_ret_valid),
        .ret_data(icache_ret_data)
    );

    dcache u_dcache (
        .clk,
        .reset(rst),
        .mem2dcache(mem_dcache_io.slave),

        .rd_req(dcache_rd_req),
        .rd_type(dcache_rd_type),
        .rd_addr(dcache_rd_addr),
        .wr_req(dcache_wr_req),
        .wr_addr(dcache_wr_addr),
        .wr_wstrb(dcache_wr_wstrb),
        .wr_data(dcache_wr_data),

        .wr_rdy(dcache_wr_rdy),
        .rd_rdy(dcache_rd_rdy),
        .ret_data(dcache_ret_data),
        .ret_valid(dcache_ret_valid)
    );
endmodule
