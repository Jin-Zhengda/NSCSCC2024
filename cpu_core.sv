module cpu_core 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic continue_idle,
    
    mem_dcache dcache_master,
    pc_icache icache_master
);

    frontend_backend fb();

    backend u_backend (
        .clk,
        .rst,

        .continue_idle,

        .dcache_master(dcache_master),
        .fb_slave(fb.slave)
    );


    frontend_top u_frontend_top (
        .clk,
        .rst,
        
        .pi_master(icache_master),
        .fb_master(fb.master)
    );

    assign icache_master.is_valid = 1'b1;

endmodule