`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"

module alu
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input dispatch_ex_t ex_i,

    // from stable counter
    input bus64_t cnt,

    // with dcache
    output logic valid,
    output logic op,
    output logic uncache_en,
    output logic addr_ok,
    output bus32_t virtual_addr,
    output bus32_t wdata,
    output logic [3:0] wstrb,

    // to bpu
    output branch_update update_info,

    // to ctrl
    output logic pause_alu,
    output logic branch_flush,
    output bus32_t branch_target_alu,

    // to dispatch
    output alu_op_t pre_ex_aluop,

    // to cache
    output cache_inst_t cache_inst,

    // to mem
    output ex_mem_t ex_o
);
    // diff 
    assign ex_o.mem_data = wdata;

    // basic assignmnet 
    assign ex_o.pc = ex_i.pc;
    assign ex_o.inst = ex_i.inst;
    assign ex_o.inst_valid = ex_i.inst_valid;
    assign ex_o.is_privilege = ex_i.is_privilege;
    assign ex_o.aluop = ex_i.aluop;

    logic ex_is_exception;
    exception_cause_t ex_exception_cause;

    assign ex_o.is_exception = {ex_i.is_exception[5: 2], ex_is_exception, ex_i.is_exception[0]};
    assign ex_o.exception_cause = {ex_i.exception_cause[5: 2], ex_exception_cause, ex_i.exception_cause[0]};

    assign pre_ex_aluop = ex_i.aluop;

    // regular alu
    bus32_t regular_alu_res;
    bus32_t reg1;
    assign reg1 = (ex_i.aluop == `ALU_PCADDU12I) ? ex_i.pc : ex_i.reg_data[0];

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
    logic singed_op;
    logic done;
    logic is_running;

    bus32_t remainder;
    bus32_t quotient;

    bus32_t last_pc;
    always_ff @( posedge clk ) begin
        last_pc <= ex_i.pc;
    end

    assign start_div = (ex_i.aluop == `ALU_DIVW || ex_i.aluop == `ALU_MODW || ex_i.aluop == `ALU_DIVWU 
                        || ex_i.aluop == `ALU_MODWU) && !done && !is_running && (last_pc != ex_i.pc);
    assign singed_op = (ex_i.aluop == `ALU_DIVW || ex_i.aluop == `ALU_MODW);
    assign pause_ex_div = start_div || is_running;

    div_alu u_div_alu(
        .clk,
        .rst,

        .op(singed_op),
        .dividend(ex_i.reg_data[0]),
        .divisor(ex_i.reg_data[1]),
        .start(start_div),

        .is_running(is_running),
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

    // load store alu
    logic LLbit;
    assign LLbit = ex_i.csr_read_data[0];

    bus32_t load_store_alu_res;
    assign load_store_alu_res = (ex_i.aluop == `ALU_SCW)? {31'b0, LLbit}: 32'b0;

    logic is_mem;
    assign is_mem = ex_i.aluop == `ALU_LDB || ex_i.aluop == `ALU_LDBU || ex_i.aluop == `ALU_LDH 
                        || ex_i.aluop == `ALU_LDHU || ex_i.aluop == `ALU_LDW || ex_i.aluop == `ALU_LLW
                        || ex_i.aluop == `ALU_PRELD || ex_i.aluop == `ALU_STB || ex_i.aluop == `ALU_STH 
                        || ex_i.aluop == `ALU_STW || ex_i.aluop == `ALU_SCW;

    logic pause_ex_mem;
    assign pause_ex_mem = is_mem && valid && !addr_ok;

    logic[11: 0] si12;
    logic[13: 0] si14;
    assign si12 = ex_i.inst[21: 10];
    assign si14 = ex_i.inst[23: 10];

    always_comb begin
        case (ex_i.aluop)
            `ALU_LDB, `ALU_LDBU, `ALU_LDH, `ALU_LDHU, `ALU_LDW, `ALU_LLW, `ALU_PRELD, `ALU_CACOP: begin
                ex_o.mem_addr = ex_i.reg_data[0] + ex_i.reg_data[1];
            end
            `ALU_STB, `ALU_STH, `ALU_STW: begin
                ex_o.mem_addr = ex_i.reg_data[0] + {{20{si12[11]}}, si12};
            end
            `ALU_SCW: begin
                ex_o.mem_addr = ex_i.reg_data[0] + {{16{si14[13]}}, si14, 2'b00};
            end
            default: begin
                ex_o.mem_addr = 32'b0;        
            end
        endcase
    end

    assign virtual_addr = ex_o.mem_addr;
    logic mem_is_valid;

    always_comb begin
        if (ex_o.is_exception == 6'b0) begin
            if (ex_i.pc < 32'h1c000100) begin
            //if (ex_i.pc < 32'h00000000) begin
                uncache_en = mem_is_valid && !ex_is_exception;
                valid = 1'b0;
            end 
            else begin
                uncache_en = 1'b0;
                valid = mem_is_valid && !ex_is_exception;
            end
        end
        else begin
            uncache_en = 1'b0;
            valid = 1'b0;
        end
    end

    always_comb begin: to_dcache
        case (ex_i.aluop) 
            `ALU_LDB, `ALU_LDBU: begin
                ex_is_exception = 1'b0;
                ex_exception_cause = 7'b0;
                op = 1'b0;
                mem_is_valid = 1'b1;
                wdata = 32'b0;
                wstrb = 4'b1111;
            end
            `ALU_LDH, `ALU_LDHU: begin
                ex_is_exception = (ex_o.mem_addr[1: 0] == 2'b01) || (ex_o.mem_addr[1: 0] == 2'b11);
                ex_exception_cause = (ex_o.mem_addr[1: 0] == 2'b01 || ex_o.mem_addr[1: 0] == 2'b11) ? `EXCEPTION_ALE : 7'b0;
                op = 1'b0;
                mem_is_valid = 1'b1;
                wdata = 32'b0;
                wstrb = 4'b1111;
            end
            `ALU_LDW, `ALU_LLW: begin
                ex_is_exception = (ex_o.mem_addr[1: 0] != 2'b00);
                ex_exception_cause = (ex_o.mem_addr[1: 0] != 2'b00) ? `EXCEPTION_ALE: 7'b0;
                op = 1'b0;
                mem_is_valid = 1'b1;
                wdata = 32'b0;
                wstrb = 4'b1111;
            end
            `ALU_STB: begin
                ex_is_exception = 1'b0;
                ex_exception_cause = 7'b0;
                op = 1'b1;
                mem_is_valid = 1'b1;
                case (ex_o.mem_addr[1: 0])
                    2'b00: begin
                        wstrb = 4'b0001;
                        wdata = {24'b0, ex_i.reg_data[1][7: 0]};
                    end 
                    2'b01: begin
                        wstrb = 4'b0010;
                        wdata = {16'b0, ex_i.reg_data[1][7: 0], 8'b0};
                    end
                    2'b10: begin
                        wstrb = 4'b0100;
                        wdata = {8'b0, ex_i.reg_data[1][7: 0], 16'b0};
                    end
                    2'b11: begin
                        wstrb = 4'b1000;
                        wdata = {ex_i.reg_data[1][7: 0], 24'b0};
                    end
                    default: begin
                        wstrb = 4'b0000;                        
                    end
                endcase
            end
            `ALU_STH: begin
                op = 1'b1;
                mem_is_valid = 1'b1;
                case (ex_o.mem_addr[1: 0])
                    2'b00: begin
                        wstrb = 4'b0011;
                        wdata = {16'b0, ex_i.reg_data[1][15: 0]};
                        ex_is_exception = 1'b0;
                        ex_exception_cause = 7'b0;
                    end 
                    2'b10: begin
                        wstrb = 4'b1100;
                        wdata = {ex_i.reg_data[1][15: 0], 16'b0};
                        ex_is_exception = 1'b0;
                        ex_exception_cause = 7'b0;
                    end
                    2'b01, 2'b11: begin
                        wstrb = 4'b0000;
                        ex_is_exception = 1'b1;
                        ex_exception_cause = `EXCEPTION_ALE;
                    end
                    default: begin
                        wstrb = 4'b0000;    
                        ex_is_exception = 1'b0;
                        ex_exception_cause = 7'b0;                    
                    end
                endcase
            end
            `ALU_STW: begin
                ex_is_exception = (ex_o.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                ex_exception_cause = (ex_o.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                op = 1'b1;
                wdata = ex_i.reg_data[1];
                mem_is_valid = 1'b1;
                wstrb = 4'b1111;
            end
            `ALU_SCW: begin
                ex_is_exception = (ex_o.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                ex_exception_cause = (ex_o.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                if (LLbit) begin
                    op = 1'b1;
                    wdata = ex_i.reg_data[1];
                    mem_is_valid = 1'b1;
                    wstrb = 4'b1111;
                end
                else begin
                    op = 1'b0;
                    wdata = 32'b0;
                    mem_is_valid = 1'b0;
                    wstrb = 4'b1111;
                end
            end
            default: begin
                mem_is_valid = 1'b0;
                wdata = 32'b0;
                op = 1'b0;
                wstrb = 4'b1111;
                ex_is_exception = 1'b0;
                ex_exception_cause = 7'b0;
            end
        endcase
    end

    always_comb begin
        case (ex_i.aluop)
            `ALU_PRELD: begin
                cache_inst.is_cacop = 1'b0;
                cache_inst.cacop_code = 5'b0;
                cache_inst.is_preld = 1'b1;
                cache_inst.addr = ex_o.mem_addr;  
            end
            `ALU_CACOP: begin
                cache_inst.is_cacop = 1'b1;
                cache_inst.cacop_code = ex_i.cacop_code;
                cache_inst.is_preld = 1'b0;
                cache_inst.addr = ex_o.mem_addr;
            end
            default: begin
                cache_inst.is_cacop = 1'b0;
                cache_inst.cacop_code = 5'b0;
                cache_inst.is_preld = 1'b0;
                cache_inst.addr = 32'b0;
            end
        endcase
    end

    // csr && privilege alu
    bus32_t csr_alu_res;
    bus32_t mask_data;
    bus32_t csr_data;
    assign csr_data = ex_i.csr_read_data;
    assign mask_data = ((ex_i.csr_read_data & ~ex_i.reg_data[1]) | (ex_i.reg_data[0] & ex_i.reg_data[1]));

    always_comb begin
        if (ex_i.aluop == `ALU_LLW) begin
            ex_o.csr_write_en = 1'b1;
            ex_o.csr_addr = `CSR_LLBCTL;
            ex_o.csr_write_data = 32'b1;
            ex_o.is_llw_scw = 1'b1;
        end
        else if (ex_i.aluop == `ALU_SCW && LLbit) begin
            ex_o.csr_write_en = 1'b1;
            ex_o.csr_addr = `CSR_LLBCTL;
            ex_o.csr_write_data = 32'b0;
            ex_o.is_llw_scw = 1'b1;
        end
        else begin
            ex_o.csr_write_en = ex_i.csr_write_en;
            ex_o.csr_addr = ex_i.csr_addr;
            ex_o.csr_write_data = (ex_i.aluop == `ALU_CSRXCHG)? mask_data: ex_i.reg_data[0];
            ex_o.is_llw_scw = 1'b0;
        end
    end

    bus64_t cnt_real;
    assign cnt_real = cnt + 32'h2;
    always_comb begin
        case(ex_i.aluop) 
            `ALU_CSRRD, `ALU_CSRWR, `ALU_CSRXCHG: begin
                csr_alu_res = ex_i.csr_read_data;
            end
            `ALU_RDCNTID: begin
                csr_alu_res = ex_i.csr_read_data;
            end
            `ALU_RDCNTVLW: begin
                csr_alu_res = cnt_real[31:0];
            end
            `ALU_RDCNTVHW: begin
                csr_alu_res = cnt_real[63:32];
            end
            default: begin
                csr_alu_res = 32'b0;
            end
        endcase
    end


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
            `ALU_SEL_LOAD_STORE: begin
                ex_o.reg_write_data = load_store_alu_res;
            end
            `ALU_SEL_CSR: begin
                ex_o.reg_write_data = csr_alu_res;
            end
            default: begin
                ex_o.reg_write_data = {31'b0, LLbit};
            end
        endcase
    end

    // pause
    assign pause_alu = pause_ex_div || pause_ex_mem;

endmodule