`include "csr_defines.sv"

module pc 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic is_branch,
    input bus32_t branch_target_addr,

    // from ctrl
    input ctrl_pc_t ctrl_pc,
    input ctrl_t ctrl,

    // to id
    output pc_id_t pc_id,

    // to inst rom
    output logic inst_en
);

    assign pc_id.is_exception = {ctrl_pc.is_interrupt, {(pc_id.pc[1: 0] == 2'b00) ? 1'b0 : 1'b1}, 3'b0};
    assign pc_id.exception_cause = {{ctrl_pc.is_interrupt ? `EXCEPTION_INT: `EXCEPTION_NOP}, 
                                {(pc_id.pc[1: 0] == 2'b00) ?  `EXCEPTION_NOP: `EXCEPTION_ADEF},
                                {3{`EXCEPTION_NOP}}};

    always_ff @(posedge clk) begin
        if (rst) begin
            inst_en <= 1'b0;
        end
        else begin
            inst_en <= 1'b1;
        end
    end

    always_ff @(posedge clk) begin
        if (rst) begin
            pc_id.pc <= 32'h100;
        end
        else if (ctrl.exception_flush) begin
            pc_id.pc <= ctrl_pc.exception_new_pc;
        end
        else if (ctrl.pause[0]) begin
            pc_id.pc <= pc_id.pc;
        end
        else begin
            if (is_branch) begin
                pc_id.pc <= branch_target_addr;
            end
            else begin
                pc_id.pc <= pc_id.pc + 4'h4;
            end
        end
    end
    
endmodule