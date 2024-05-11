`include "pipeline_types.sv"
`include "interface.sv"

module cpu_core 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic continue_idle,
    
    mem_dcache dcache_master,
    pc_icache icache_master,
    output cache_inst_t cache_inst,
    output ctrl_t ctrl,
    output logic branch_flush
);

    frontend_backend fb();

    backend u_backend (
        .clk,
        .rst,

        .continue_idle,

        .dcache_master(dcache_master),
        .fb_slave(fb.slave),
        .cache_inst(cache_inst)
    );

    assign branch_flush = fb.update_info.branch_flush;
    assign ctrl = fb.ctrl;

    frontend_top u_frontend_top (
        .clk,
        .rst,
        
        .pi_master(icache_master),
        .fb_master(fb.master)
    );

endmodule