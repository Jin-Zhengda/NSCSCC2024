`include "defines.sv"
`include "csr_defines.sv"
`timescale 1ns / 1ps

module ex 
    import pipeline_types::*;
(
    input dispatch_ex_t dispatch_ex,

    input logic LLbit,
    input csr_push_forward_t mem_push_forward,
    input csr_push_forward_t wb_push_forward,

    output logic pause_ex,
    output ex_mem_t ex_mem,
    
    mem_dcache dcache_master,
    output cache_inst_t cache_inst,

    ex_div div_master
);

    bus32_t pc;
    bus32_t inst;
    assign pc = dispatch_ex.pc;
    assign inst = dispatch_ex.inst;

    assign ex_mem.st_paddr = ex_mem.mem_addr;
    assign ex_mem.st_vaddr = ex_mem.mem_addr;
    assign ex_mem.st_data = dcache_master.wdata;

    assign ex_mem.ld_paddr = ex_mem.mem_addr;
    assign ex_mem.ld_vaddr = ex_mem.mem_addr;

    assign ex_mem.pc = dispatch_ex.pc;
    assign ex_mem.inst = dispatch_ex.inst;
    assign ex_mem.inst_valid = dispatch_ex.inst_valid;
    assign ex_mem.is_privilege = dispatch_ex.is_privilege;
    assign ex_mem.aluop = dispatch_ex.aluop;

    logic ex_is_exception;
    exception_cause_t ex_exception_cause;

    assign ex_mem.is_exception = {dispatch_ex.is_exception[5: 2], ex_is_exception, dispatch_ex.is_exception[0]};
    assign ex_mem.exception_cause = {dispatch_ex.exception_cause[5: 2], ex_exception_cause, dispatch_ex.exception_cause[0]};

    assign ex_mem.csr_read_en = dispatch_ex.csr_read_en;
    assign ex_mem.csr_mask = dispatch_ex.reg2;

    logic LLbit_current;

    always_comb begin 
        if (mem_push_forward.csr_write_en && (mem_push_forward.csr_write_addr == `CSR_LLBCTL)) begin
            LLbit_current = mem_push_forward.csr_write_data[0];
        end
        else if (wb_push_forward.csr_write_en && (wb_push_forward.csr_write_addr == `CSR_LLBCTL)) begin
            LLbit_current = wb_push_forward.csr_write_data[0];
        end
        else begin
            LLbit_current = LLbit;
        end
    end

    assign ex_mem.inst_st_en = {4'b0, (LLbit_current && (dispatch_ex.aluop == `ALU_SCW)),dispatch_ex.aluop == `ALU_STW, 
                            dispatch_ex.aluop == `ALU_STH, dispatch_ex.aluop == `ALU_STB};
    assign ex_mem.inst_ld_en = {2'b0, dispatch_ex.aluop == `ALU_LLW, dispatch_ex.aluop == `ALU_LDW, dispatch_ex.aluop == `ALU_LDHU,
                            dispatch_ex.aluop == `ALU_LDH, dispatch_ex.aluop == `ALU_LDBU, dispatch_ex.aluop == `ALU_LDB};
    
    logic[11: 0] si12;
    logic[13: 9] si14;

    assign si12 = dispatch_ex.inst[21: 10];
    assign si14 = dispatch_ex.inst[23: 10];

    logic pause_ex_mem;
    logic is_mem;

    assign is_mem = dispatch_ex.aluop == `ALU_LDB || dispatch_ex.aluop == `ALU_LDBU || dispatch_ex.aluop == `ALU_LDH 
                        || dispatch_ex.aluop == `ALU_LDH || dispatch_ex.aluop == `ALU_LDW || dispatch_ex.aluop == `ALU_LLW
                        || dispatch_ex.aluop == `ALU_PRELD || dispatch_ex.aluop == `ALU_CACOP || dispatch_ex.aluop == `ALU_STB
                        || dispatch_ex.aluop == `ALU_STH || dispatch_ex.aluop == `ALU_STW || dispatch_ex.aluop == `ALU_SCW;

    assign pause_ex_mem = is_mem && dcache_master.valid && !dcache_master.addr_ok;

    always_comb begin
        case (dispatch_ex.aluop)
            `ALU_LDB, `ALU_LDBU, `ALU_LDH, `ALU_LDHU, `ALU_LDW, `ALU_LLW, `ALU_PRELD, `ALU_CACOP: begin
                ex_mem.mem_addr = dispatch_ex.reg1 + dispatch_ex.reg2;
            end
            `ALU_STB, `ALU_STH, `ALU_STW: begin
                ex_mem.mem_addr = dispatch_ex.reg1 + {{20{si12[11]}}, si12};
            end
            `ALU_SCW: begin
                ex_mem.mem_addr = dispatch_ex.reg1 + {{16{si14[13]}}, si14, 2'b00};
            end
            default: begin
                ex_mem.mem_addr = 32'b0;        
            end
        endcase
    end

    assign dcache_master.virtual_addr = ex_mem.mem_addr;
    logic mem_is_valid;

    always_comb begin
        if (ex_mem.is_exception == 6'b0) begin
            // if (dispatch_ex.pc < 32'h1c000100) begin
            if (dispatch_ex.pc < 32'h00000100) begin
                dcache_master.uncache_en = mem_is_valid;
                dcache_master.valid = 1'b0;
            end 
            else begin
                dcache_master.uncache_en = 1'b0;
                dcache_master.valid = mem_is_valid;
            end
        end
        else begin
            dcache_master.uncache_en = 1'b0;
            dcache_master.valid = 1'b0;
        end
    end

    always_comb begin: to_dcache
        case (dispatch_ex.aluop) 
            `ALU_LDB, `ALU_LDBU: begin
                dcache_master.op = 1'b0;
                mem_is_valid = 1'b1;
            end
            `ALU_LDH, `ALU_LDHU: begin
                ex_is_exception = (ex_mem.mem_addr[1: 0] == 2'b01 || ex_mem.mem_addr[1: 0] == 2'b11) ? 1'b1 : 1'b0;
                ex_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b01 || ex_mem.mem_addr[1: 0] == 2'b11) ? `EXCEPTION_ALE : 7'b0;
                dcache_master.op = 1'b0;
                mem_is_valid = 1'b1;
            end
            `ALU_LDW, `ALU_LLW: begin
                ex_is_exception = (ex_mem.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                ex_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                dcache_master.op = 1'b0;
                mem_is_valid = 1'b1;
            end
            `ALU_STB: begin
                dcache_master.op = 1'b1;
                dcache_master.wdata = {4{dispatch_ex.reg2[7: 0]}};
                mem_is_valid = 1'b1;
                case (ex_mem.mem_addr[1: 0])
                    2'b00: begin
                        dcache_master.wstrb = 4'b0001;
                    end 
                    2'b01: begin
                        dcache_master.wstrb = 4'b0010;
                    end
                    2'b10: begin
                        dcache_master.wstrb = 4'b0100;
                    end
                    2'b11: begin
                        dcache_master.wstrb = 4'b1000;
                    end
                    default: begin
                        dcache_master.wstrb = 4'b0000;                        
                    end
                endcase
            end
            `ALU_STH: begin
                dcache_master.op = 1'b1;
                dcache_master.wdata = {2{dispatch_ex.reg2[15: 0]}};
                mem_is_valid = 1'b1;
                case (ex_mem.mem_addr[1: 0])
                    2'b00: begin
                        dcache_master.wstrb = 4'b0011;
                    end 
                    2'b10: begin
                        dcache_master.wstrb = 4'b1100;
                    end
                    2'b01, 2'b11: begin
                        dcache_master.wstrb = 4'b0000;
                        ex_is_exception = 1'b1;
                        ex_exception_cause = `EXCEPTION_ALE;
                    end
                    default: begin
                        dcache_master.wstrb = 4'b0000;                        
                    end
                endcase
            end
            `ALU_STW: begin
                dcache_master.op = 1'b1;
                dcache_master.wdata = dispatch_ex.reg2;
                mem_is_valid = 1'b1;
                dcache_master.wstrb = 4'b1111;
                ex_is_exception = (ex_mem.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                ex_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
            end
            `ALU_SCW: begin
                ex_is_exception = (ex_mem.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                ex_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                if (LLbit_current) begin
                    dcache_master.op = 1'b1;
                    dcache_master.wdata = dispatch_ex.reg2;
                    mem_is_valid = 1'b1;
                    dcache_master.wstrb = 4'b1111;
                end
                else begin
                    dcache_master.op = 1'b0;
                    dcache_master.wdata = 32'b0;
                    mem_is_valid = 1'b0;
                    dcache_master.wstrb = 4'b1111;
                end
            end
            default: begin
                mem_is_valid = 1'b0;
                dcache_master.wdata = 32'b0;
                dcache_master.op = 1'b0;
                dcache_master.wstrb = 4'b1111;
                ex_is_exception = 1'b0;
                ex_exception_cause = 7'b0;
            end
        endcase
    end

    always_comb begin
        if (dispatch_ex.aluop == `ALU_LLW) begin
            ex_mem.csr_write_en = 1'b1;
            ex_mem.csr_addr = `CSR_LLBCTL;
            ex_mem.csr_write_data = 32'b1;
            ex_mem.is_llw_scw = 1'b1;
        end
        else if (dispatch_ex.aluop == `ALU_SCW && LLbit_current) begin
            ex_mem.csr_write_en = 1'b1;
            ex_mem.csr_addr = `CSR_LLBCTL;
            ex_mem.csr_write_data = 1'b0;
            ex_mem.is_llw_scw = 1'b1;
        end
        else begin
            ex_mem.csr_write_en = dispatch_ex.csr_write_en;
            ex_mem.csr_addr = dispatch_ex.csr_addr;
            ex_mem.csr_write_data = dispatch_ex.reg1;
            ex_mem.is_llw_scw = 1'b0;
        end
    end

    always_comb begin
        case (dispatch_ex.aluop)
            `ALU_PRELD: begin
                cache_inst.is_cacop = 1'b0;
                cache_inst.cacop_code = 5'b0;
                cache_inst.is_preld = 1'b1;
                cache_inst.addr = ex_mem.mem_addr;  
            end
            `ALU_CACOP: begin
                cache_inst.is_cacop = 1'b1;
                cache_inst.cacop_code = dispatch_ex.cacop_code;
                cache_inst.is_preld = 1'b0;
                cache_inst.addr = ex_mem.mem_addr;
            end
            default: begin
                cache_inst.is_cacop = 1'b0;
                cache_inst.cacop_code = 5'b0;
                cache_inst.is_preld = 1'b0;
                cache_inst.addr = 32'b0;
            end
        endcase
    end


    bus32_t logic_res;
    bus32_t shift_res;
    bus32_t move_res;
    bus32_t arithmetic_res;

    always_comb begin : logic_calculate
        case (dispatch_ex.aluop)
            `ALU_OR, `ALU_ORI, `ALU_LU12I: begin
                logic_res = dispatch_ex.reg1 | dispatch_ex.reg2;
            end
            `ALU_NOR: begin
                logic_res = ~(dispatch_ex.reg1 | dispatch_ex.reg2);
            end
            `ALU_AND, `ALU_ANDI: begin
                logic_res = dispatch_ex.reg1 & dispatch_ex.reg2;
            end
            `ALU_XOR, `ALU_XORI: begin
                logic_res = dispatch_ex.reg1 ^ dispatch_ex.reg2;
            end
            default: begin
                logic_res = 32'b0;
            end
        endcase
    end

    always_comb begin: shift_calculate
        case (dispatch_ex.aluop)
            `ALU_SLLW, `ALU_SLLIW: begin
                shift_res = dispatch_ex.reg1 << dispatch_ex.reg2[4:0];
            end
            `ALU_SRLW, `ALU_SRLIW: begin
                shift_res = dispatch_ex.reg1 >> dispatch_ex.reg2[4:0];
            end
            `ALU_SRAW, `ALU_SRAIW: begin
                shift_res = ({32{dispatch_ex.reg1[31]}} << (6'd32 - {1'b0, dispatch_ex.reg2[4: 0]})) | dispatch_ex.reg1 >> dispatch_ex.reg2[4:0];
            end
            default: begin
                shift_res = 32'b0;
            end
        endcase
    end

    logic reg1_eq_reg2;
    logic reg1_lt_reg2;
    bus32_t reg2_i_mux;
    bus32_t reg1_i_not;
    bus32_t sum_result;

    assign reg2_i_mux= ((dispatch_ex.aluop == `ALU_SUBW) || (dispatch_ex.aluop == `ALU_SLT)) ? ~dispatch_ex.reg2 + 1 : dispatch_ex.reg2;
    assign sum_result = dispatch_ex.reg1 + reg2_i_mux;
    assign reg1_lt_reg2 = ((dispatch_ex.aluop == `ALU_SLT) || (dispatch_ex.aluop == `ALU_SLTI)) ?
                            ((dispatch_ex.reg1[31] && !dispatch_ex.reg2[31]) || (!dispatch_ex.reg1[31] && !dispatch_ex.reg2[31] && sum_result[31]) || (dispatch_ex.reg1[31] && dispatch_ex.reg2[31] && sum_result[31])) 
                            : (dispatch_ex.reg1 < dispatch_ex.reg2);
    assign reg1_i_not = ~dispatch_ex.reg1;

    bus32_t mul_data1;
    bus32_t mul_data2;
    bus64_t mul_temp_result;
    bus64_t mul_result;

    assign mul_data1 = (((dispatch_ex.aluop == `ALU_MULW) || (dispatch_ex.aluop == `ALU_MULHW)) && dispatch_ex.reg1[31]) ? 
                        (~ dispatch_ex.reg1 + 1) : dispatch_ex.reg1;
    assign mul_data2 = (((dispatch_ex.aluop == `ALU_MULW) || (dispatch_ex.aluop == `ALU_MULHW)) && dispatch_ex.reg2[31]) ? 
                        (~ dispatch_ex.reg2 + 1) : dispatch_ex.reg2;
    assign mul_temp_result = mul_data1 * mul_data2;

    assign mul_result = (((dispatch_ex.aluop == `ALU_MULW) || (dispatch_ex.aluop == `ALU_MULHW)) 
                        && (dispatch_ex.reg1[31] ^ dispatch_ex.reg2[31])) ? (~mul_temp_result + 1) : mul_temp_result;

    logic pause_ex_div;

    always_comb begin: div_calculate
        case (dispatch_ex.aluop)
            `ALU_DIVW, `ALU_MODW: begin
                if (!div_master.div_done) begin
                    div_master.div_data1= dispatch_ex.reg1;
                    div_master.div_data2 = dispatch_ex.reg2;
                    div_master.div_start = 1'b1;
                    div_master.div_signed = 1'b1;
                    pause_ex_div = 1'b1;
                end 
                else if (div_master.div_done) begin
                    div_master.div_data1= dispatch_ex.reg1;
                    div_master.div_data2 = dispatch_ex.reg2;
                    div_master.div_start = 1'b0;
                    div_master.div_signed = 1'b1;
                    pause_ex_div = 1'b0;
                end
                else begin
                    div_master.div_data1= 32'b0;
                    div_master.div_data2 = 32'b0;
                    div_master.div_start = 1'b0;
                    div_master.div_signed = 1'b0;
                    pause_ex_div = 1'b0;
                end
            end 
            `ALU_DIVWU, `ALU_MODWU: begin
                if (!div_master.div_done) begin
                    div_master.div_data1= dispatch_ex.reg1;
                    div_master.div_data2 = dispatch_ex.reg2;
                    div_master.div_start = 1'b1;
                    div_master.div_signed = 1'b0;
                    pause_ex_div = 1'b1;
                end 
                else if (div_master.div_done) begin
                    div_master.div_data1= dispatch_ex.reg1;
                    div_master.div_data2 = dispatch_ex.reg2;
                    div_master.div_start = 1'b0;
                    div_master.div_signed = 1'b0;
                    pause_ex_div = 1'b0;
                end
                else begin
                    div_master.div_data1= 32'b0;
                    div_master.div_data2 = 32'b0;
                    div_master.div_start = 1'b0;
                    div_master.div_signed = 1'b0;
                    pause_ex_div = 1'b0;
                end
            end
            default: begin
            end
        endcase
    end

    assign pause_ex = pause_ex_div || pause_ex_mem;

    always_comb begin: result
        case (dispatch_ex.aluop)
            `ALU_ADDW, `ALU_SUBW, `ALU_ADDIW, `ALU_PCADDU12I: begin
                arithmetic_res = sum_result;
            end
            `ALU_SLT, `ALU_SLTU, `ALU_SLTI, `ALU_SLTUI: begin
                arithmetic_res = reg1_lt_reg2;
            end
            `ALU_MULW: begin
                arithmetic_res = mul_result[31:0];
            end
            `ALU_MULHW, `ALU_MULHWU: begin
                arithmetic_res = mul_result[63:32];
            end
            `ALU_DIVW, `ALU_DIVWU: begin
                if(div_master.div_done) begin
                    arithmetic_res = div_master.div_result[31:0];
                end
            end
            `ALU_MODW, `ALU_MODWU: begin
                if (div_master.div_done) begin
                    arithmetic_res = div_master.div_result[63:32];
                end
            end
            default: begin
                arithmetic_res = 32'b0;
            end 
        endcase
    end

    always_comb begin: reg_write
        ex_mem.reg_write_addr = dispatch_ex.reg_write_addr;
        ex_mem.reg_write_en = dispatch_ex.reg_write_en;

        case (dispatch_ex.alusel)
            `ALU_SEL_LOGIC: begin
                ex_mem.reg_write_data = logic_res;
            end 
            `ALU_SEL_SHIFT: begin
                ex_mem.reg_write_data = shift_res;
            end
            `ALU_SEL_MOVE: begin
                ex_mem.reg_write_data = move_res;
            end
            `ALU_SEL_ARITHMETIC: begin
                ex_mem.reg_write_data = arithmetic_res;
            end
            `ALU_SEL_JUMP_BRANCH: begin
                ex_mem.reg_write_data = dispatch_ex.reg_write_branch_data;
            end
            `ALU_SEL_LOAD_STORE: begin
                ex_mem.reg_write_data = (dispatch_ex.aluop == `ALU_SCW)? {31'b0, LLbit_current}: 32'b0;
            end
            default: begin
                ex_mem.reg_write_data = LLbit_current ? 32'b1: 32'b0;
            end
        endcase
    end

endmodule