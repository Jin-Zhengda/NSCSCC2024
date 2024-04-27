module cpu_core 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    
    mem_dcache dcache_master,
    pc_icache icache_master
);

    // back end
    pc_id id_i;
    bus32_t branch_target_addr_actual;
    logic branch_flush;
    ctrl ctrl;
    ctrl_pc ctrl_pc;


    backend u_backend (
        .clk,
        .rst,

        .id_i,
        .branch_target_addr_actual,
        .branch_flush,
        .ctrl,
        .ctrl_pc,
        .dcache_master
    );
    
endmodule