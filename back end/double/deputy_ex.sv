`timescale 1ns / 1ps
`include "core_defines.sv"

module deputy_ex 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    
    input dispatch_ex_t ex_i,

    // to bpu
    output branch_update update_info,

    // to ctrl
    output logic pause_alu,
    output logic branch_flush,
    output bus32_t branch_target_alu,

    // to mem
    output ex_mem_t ex_o
);

    // basic assignment
    assign ex_o.pc = ex_i.pc;
    assign ex_o.inst = ex_i.inst;
    assign ex_o.inst_valid = ex_i.inst_valid;
    assign ex_o.is_privilege = ex_i.is_privilege;
    assign ex_o.aluop = ex_i.aluop;

    assign ex_o.is_exception = ex_i.is_exception;
    assign ex_o.exception_cause = ex_i.exception_cause;

    assign ex_o.mem_addr = 32'b0;
    assign ex_o.csr_addr = 32'b0;
    assign ex_o.csr_write_en = 1'b0;
    assign ex_o.csr_write_data = 32'b0;
    assign ex_o.is_llw_scw = 1'b0;

    // regular alu
    bus32_t regular_alu_res;
    bus32_t reg1 = ex_i.aluop == `ALU_PCADDU12I ? ex_i.pc : ex_i.reg_data[0];

    regular_alu u_regular_alu(
        .aluop(ex_i.aluop),
        .alusel(ex_i.alusel),

        .reg1(reg1),
        .reg2(ex_i.reg_data[1]),

        .result(regular_alu_res)
    );
   
    // div alu
    bus32_t div_alu_res;
    logic pause_ex_div;
    logic start_div;
    logic op;
    logic done;

    bus32_t remainder;
    bus32_t quotient;

    assign start_div = (ex_i.aluop == `ALU_DIVW || ex_i.aluop == `ALU_MODW || ex_i.aluop == `ALU_DIVWU 
                        || ex_i.aluop == `ALU_MODWU) && !done;
    assign op = (ex_i.aluop == `ALU_DIVW || ex_i.aluop == `ALU_MODW);
    assign pause_ex_div = start_div;

    div_alu u_div_alu(
        .clk,
        .rst,

        .op,
        .dividend(ex_i.reg_data[0]),
        .divisor(ex_i.reg_data[1]),
        .start(start_div),

        .quotient_out(quotient),
        .remainder_out(remainder),
        .done
    );

    always_comb begin
        case (ex_i.aluop)
            `ALU_DIVW, `ALU_DIVWU: begin
                if(done) begin
                    div_alu_res = quotient;
                end
                else begin
                    div_alu_res = 32'b0;
                end
            end
            `ALU_MODW, `ALU_MODWU: begin
                if (done) begin
                    div_alu_res = remainder;
                end
                else begin
                    div_alu_res = 32'b0;
                end
            end 
            default: begin
                div_alu_res = 32'b0;
            end
        endcase
    end

    // branch alu
    bus32_t branch_alu_res;

    branch_alu u_branch_alu(
        .pc(ex_i.pc),
        .inst(ex_i.inst),
        .aluop(ex_i.aluop),

        .reg1(ex_i.reg_data[0]),
        .reg2(ex_i.reg_data[1]),

        .pre_is_branch_taken(ex_i.pre_is_branch_taken),
        .pre_branch_addr(ex_i.pre_branch_addr),

        .update_info(update_info),
        .branch_flush(branch_flush),
        .branch_alu_res(branch_alu_res)
    );
    assign branch_target_alu = update_info.branch_actual_addr;

    // reg data 
    assign ex_o.reg_write_en = ex_i.reg_write_en;
    assign ex_o.reg_write_addr = ex_i.reg_write_addr;
    
    always_comb begin: reg_write
        case (ex_i.alusel)
            `ALU_SEL_LOGIC, `ALU_SEL_SHIFT,`ALU_SEL_ARITHMETIC: begin
                ex_o.reg_write_data = regular_alu_res;
            end
            `ALU_SEL_DIV: begin
                ex_o.reg_write_data = div_alu_res;
            end
            `ALU_SEL_JUMP_BRANCH: begin
                ex_o.reg_write_data = branch_alu_res;
            end
            default: begin
                ex_o.reg_write_data = 32'b0;
            end
        endcase
    end

    // pause
    assign pause_alu = pause_ex_div;
    
endmodule