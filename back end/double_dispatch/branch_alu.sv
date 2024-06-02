`timescale 1ns / 1ps
`include "core_defines.sv"

module branch_alu
    import pipeline_types::*;
(
    input bus32_t  pc,
    input bus32_t  inst,
    input alu_op_t aluop,

    input bus32_t reg1,
    input bus32_t reg2,

    input logic   pre_is_branch_taken,
    input bus32_t pre_branch_addr,


    output branch_update update_info,
    output logic branch_flush,
    output bus32_t branch_alu_res
);

    logic reg1_eq_reg2;
    logic reg1_lt_reg2;
    bus32_t sum;

    assign sum = reg1 + reg2;

    assign reg1_eq_reg2 = (reg1 == reg2);
    assign reg1_lt_reg2 = (( aluop == `ALU_SLT) || ( aluop == `ALU_SLTI)) ?
                            (( reg1[31] && ! reg2[31]) || (! reg1[31] && ! reg2[31] && sum[31]) || ( reg1[31] &&  reg2[31] && sum[31])) 
                            : ( reg1 <  reg2);

    bus32_t branch16_addr;
    bus32_t branch26_addr;

    assign branch16_addr = {{14{inst[25]}}, inst[25:10], 2'b00};
    assign branch26_addr = {{4{inst[9]}}, inst[9:0], inst[25:10], 2'b00};

    logic   is_branch;
    logic   is_branch_taken;
    bus32_t branch_target_addr;

    always_comb begin : branch_info
        case (aluop)
            `ALU_BEQ: begin
                is_branch = 1'b1;
                if (reg1_eq_reg2) begin
                    is_branch_taken = 1'b1;
                    branch_target_addr = pc + branch16_addr;
                end else begin
                    is_branch_taken = 1'b0;
                    branch_target_addr = 32'b0;
                end
                branch_alu_res = 32'b0;
            end
            `ALU_BNE: begin
                is_branch = 1'b1;
                if (!reg1_eq_reg2) begin
                    is_branch_taken = 1'b1;
                    branch_target_addr = pc + branch16_addr;
                end else begin
                    is_branch_taken = 1'b0;
                    branch_target_addr = 32'b0;
                end
                branch_alu_res = 32'b0;
            end
            `ALU_BLT, `ALU_BLTU: begin
                is_branch = 1'b1;
                if (reg1_lt_reg2) begin
                    is_branch_taken = 1'b1;
                    branch_target_addr = pc + branch16_addr;
                end else begin
                    is_branch_taken = 1'b0;
                    branch_target_addr = 32'b0;
                end
                branch_alu_res = 32'b0;
            end
            `ALU_BGE, `ALU_BGEU: begin
                is_branch = 1'b1;
                if (!reg1_lt_reg2) begin
                    is_branch_taken = 1'b1;
                    branch_target_addr = pc + branch16_addr;
                end else begin
                    is_branch_taken = 1'b0;
                    branch_target_addr = 32'b0;
                end
                branch_alu_res = 32'b0;
            end
            `ALU_B: begin
                is_branch = 1'b1;
                is_branch_taken = 1'b1;
                branch_target_addr = pc + branch26_addr;
                branch_alu_res = 32'b0;
            end
            `ALU_BL: begin
                is_branch = 1'b1;
                is_branch_taken = 1'b1;
                branch_target_addr = pc + branch26_addr;
                branch_alu_res = pc + 32'h4;
            end
            `ALU_JIRL: begin
                is_branch = 1'b1;
                is_branch_taken = 1'b1;
                branch_target_addr = dispatch_ex.reg1 + branch16_addr;
                branch_alu_res = pc + 32'h4;
            end
            default: begin
                is_branch = 1'b0;
                is_branch_taken = 1'b0;
                branch_target_addr = 32'b0;
                branch_alu_res = 32'b0;
            end
        endcase
    end

    assign update_info.pc_dispatch = pc;

    always_comb begin : branch_target
        if (is_branch) begin
            if (is_branch_taken && pre_is_branch_taken) begin
                update_info.update_en = 1'b1;
                update_info.taken_or_not_actual = 1'b1;
                update_info.branch_actual_addr = branch_target_addr;
                if (pre_branch_addr == branch_target_addr) begin
                    update_info.branch_flush = 1'b0;
                end else begin
                    update_info.branch_flush = 1'b1;
                end
            end else if (is_branch_taken && !pre_is_branch_taken) begin
                update_info.update_en = 1'b1;
                update_info.taken_or_not_actual = 1'b1;
                update_info.branch_flush = 1'b1;
                update_info.branch_actual_addr = branch_target_addr;
            end else if (!is_branch_taken && pre_is_branch_taken) begin
                update_info.update_en = 1'b1;
                update_info.taken_or_not_actual = 1'b0;
                update_info.branch_flush = 1'b1;
                update_info.branch_actual_addr = pc + 4'h4;
            end else if (!is_branch_taken && !pre_is_branch_taken) begin
                update_info.update_en = 1'b1;
                update_info.taken_or_not_actual = 1'b0;
                update_info.branch_flush = 1'b0;
                update_info.branch_actual_addr = 32'b0;
            end else begin
                update_info.update_en = 1'b0;
                update_info.taken_or_not_actual = 1'b0;
                update_info.branch_flush = 1'b0;
                update_info.branch_actual_addr = 32'b0;
            end
        end else begin
            update_info.update_en = 1'b0;
            update_info.taken_or_not_actual = 1'b0;
            update_info.branch_flush = 1'b0;
            update_info.branch_actual_addr = 32'b0;
        end
    end

    assign branch_flush = update_info.branch_flush;

endmodule
