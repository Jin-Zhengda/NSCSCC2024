`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"
`timescale 1ns / 1ps

module id
    import pipeline_types::*;
(
    input bus32_t pc,
    input bus32_t inst,
    input logic pre_is_branch,
    input logic pre_is_branch_taken,
    input bus32_t pre_branch_addr,
    input logic [5:0] is_exception,
    input logic [5:0][EXC_CAUSE_WIDTH - 1:0] exception_cause,

    output id_dispatch_t id_o
);

    assign id_o.pc = pc;
    assign id_o.inst = inst;
    assign id_o.pre_is_branch = pre_is_branch;
    assign id_o.pre_is_branch_taken = pre_is_branch_taken;
    assign id_o.pre_branch_addr = pre_branch_addr;

    // logic inst_valid;
    // logic id_exception;
    // exception_cause_t id_exception_cause;

    // assign id_o.is_exception = {
    //     is_exception[5:4],
    //     {(inst_valid ? id_exception: 1'b1)},
    //     is_exception[2:0]
    // };
    // assign id_o.exception_cause = {
    //     exception_cause[5:4],
    //     {(inst_valid ? id_exception_cause : `EXCEPTION_INE)},
    //     exception_cause[2:0]
    // };

    id_dispatch_t [5:0] part_id_o;  
    decoder_1R decoder_1R_inst (
        .pc(pc),
        .inst(inst),
        .id_o(part_id_o[0])
    );

    decoder_1RI20 decoder_1RI20_inst (
        .pc(pc),
        .inst(inst),
        .id_o(part_id_o[1])
    );

    decoder_2RI12 decoder_2RI12_inst (
        .pc(pc),
        .inst(inst),
        .id_o(part_id_o[2])
    );

    decoder_2RI14 decoder_2RI14_inst (
        .pc(pc),
        .inst(inst),
        .id_o(part_id_o[3])
    );

    decoder_2RI15 decoder_2RI15_inst (
        .pc(pc),
        .inst(inst),
        .id_o(part_id_o[4])
    );

    decoder_3R decoder_3R_inst (
        .pc(pc),
        .inst(inst),
        .id_o(part_id_o[5])
    );  

    logic [5:0] id_valid_vec;
    assign id_valid_vec = {
        part_id_o[5].inst_valid,
        part_id_o[4].inst_valid,
        part_id_o[3].inst_valid,
        part_id_o[2].inst_valid,
        part_id_o[1].inst_valid,
        part_id_o[0].inst_valid
    };


    logic is_sys_break;
    exception_cause_t sys_break_cause;
    assign is_sys_break = (id_o.aluop == `ALU_SYSCALL || id_o.aluop == `ALU_BREAK);
    assign sys_break_cause = (id_o.aluop == `ALU_SYSCALL) ? `EXCEPTION_SYS : `EXCEPTION_BRK;
    always_comb begin 
        case(id_valid_vec)
            6'b000001: begin
                id_o = part_id_o[0];
            end
            6'b000010: begin
                id_o = part_id_o[1];
            end
            6'b000100: begin
                id_o = part_id_o[2];
            end
            6'b001000: begin
                id_o = part_id_o[3];
            end
            6'b010000: begin
                id_o = part_id_o[4];
            end
            6'b100000: begin
                id_o = part_id_o[5];
                id_o.is_exception = {is_exception[5:4], is_sys_break, is_exception[2:0]};
                id_o.exception_cause = {exception_cause[5:4], sys_break_cause, exception_cause[2:0]};
            end
            default: begin
                id_o = 0;
                id_o.is_exception = {is_exception[5:4], 1'b1, is_exception[2:0]};
                id_o.exception_cause = {exception_cause[5:4], `EXCEPTION_INE, exception_cause[2:0]};
            end
        endcase
    end

endmodule
