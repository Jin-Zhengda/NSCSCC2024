module cpu_core 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input bus32_t rom_inst,
    
    output logic inst_en,
    output bus32_t pc
);

    logic is_branch;
    bus32_t branch_target_addr;
    ctrl_pc_t ctrl_pc;
    pc_id_t pc_id;

    pc u_pc (
        .clk,
        .rst,

        .is_branch(is_branch),
        .branch_target_addr(branch_target_addr),

        .ctrl_pc(ctrl_pc),

        .pc_id(pc_id),

        .inst_en(inst_en),
        .pc(pc)
    );

    assign pc_id.inst = rom_inst;

    
endmodule