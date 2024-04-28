module cpu_core 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    
    mem_dcache dcache_master,
    pc_icache icache_master
);

    // back end
    pc_id_t id_i;
    bus32_t branch_target_addr_actual;
    logic branch_flush;
    ctrl_t ctrl;
    ctrl_pc_t ctrl_pc;


    backend u_backend (
        .*
    );
    
    // front end
    bus32_t pc;
    bus32_t inst;
    logic inst_en;
    branch_info front_branch_info;
    inst_and_pc_t front_inst_and_pc;

    frontend_top u_frontend_top (
        .clk,
        .rst,
        .ctrl,
        .ctrl_pc,
        .branch_flush,
        .branch_actual_addr(branch_target_addr_actual),

        .inst_1_i(inst),
        .inst_en_1_o(inst_en),
        .pc1(pc),

        .send_inst_1_en(1'b1),
        .send_inst_2_en(1'b0),

        .branch_info1(front_branch_info),
        .inst_and_pc_o(front_inst_and_pc)
    );


    assign inst = icache_master.inst;
    assign icache_master.pc = pc;
    assign icache_master.inst_en = inst_en;

    assign id_i.pc = front_inst_and_pc.pc_o_1;
    assign id_i.inst = front_inst_and_pc.inst_o_1;
    assign id_i.is_exception = front_inst_and_pc.is_exception;
    assign id_i.exception_cause = front_inst_and_pc.exception_cause;
    assign id_i.pre_is_branch = front_branch_info.is_branch;
    assign id_i.pre_is_branch_taken = front_branch_info.pre_taken_or_not;
    assign id_i.pre_branch_addr = front_branch_info.pre_branch_addr;
endmodule