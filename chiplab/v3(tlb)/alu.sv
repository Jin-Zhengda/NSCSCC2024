`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"

module alu
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic flush,
    input logic pause_mem,

    input dispatch_ex_t ex_i,

    // from stable counter
    input bus64_t cnt,

    // with dcache
    output logic valid,
    output logic op,
    input logic addr_ok,
    output bus32_t virtual_addr,
    output bus32_t wdata,
    output logic [3:0] wstrb,

    // tlb
    output logic tlbrd_en,
    output logic tlbsrch_en,
    output logic tlbfill_en, 
    output logic tlbwr_en, 
    output logic invtlb_en,
    output logic[9:0] invtlb_asid,
    output logic[18:0] invtlb_vpn,
    output logic[4:0] invtlb_op,
    output logic[4:0] rand_index,

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
    // assign ex_o.mem_data = wdata;
    bus32_t reg_data1;
    bus32_t reg_data2;
    assign reg_data1 = ex_i.reg_data[0];
    assign reg_data2 = ex_i.reg_data[1];

    // basic assignmnet 
    assign ex_o.pc = ex_i.pc;
    assign ex_o.inst = ex_i.inst;
    assign ex_o.inst_valid = ex_i.inst_valid;
    assign ex_o.is_privilege = ex_i.is_privilege;
    assign ex_o.aluop = ex_i.aluop;
    assign ex_o.is_ertn = (ex_i.aluop == `ALU_ERTN);
    assign ex_o.is_idle = (ex_i.aluop == `ALU_IDLE);
    assign ex_o.valid = ex_i.valid;

    logic ex_mem_exception;
    logic tlb_op_exception;

    assign ex_o.is_exception = {ex_i.is_exception, ex_mem_exception | tlb_op_exception};
    assign ex_o.exception_cause = {ex_i.exception_cause, ex_mem_exception ? `EXCEPTION_ALE: `EXCEPTION_INE};

    assign pre_ex_aluop = ex_i.aluop;

    // regular alu
    bus32_t regular_alu_res;

    regular_alu u_regular_alu(
        .aluop(ex_i.aluop),

        .reg1(reg_data1),
        .reg2(reg_data2),

        .result(regular_alu_res)
    );

    // mul alu
    bus32_t mul_alu_res;
    logic pause_ex_mul;
    logic is_mul;
    logic start_mul;
    logic signed_mul;
    logic mul_done;
    bus64_t mul_result;
    bus32_t mul_data1;
    bus32_t mul_data2;

    assign is_mul = (ex_i.aluop == `ALU_MULW || ex_i.aluop == `ALU_MULHW || ex_i.aluop == `ALU_MULHWU ) && !mul_done;
    assign pause_ex_mul = is_mul && !mul_done;
    always_ff @(posedge clk) begin
        if (start_mul) begin
            start_mul <= 1'b0;
        end else if (is_mul) begin
            start_mul <= 1'b1;
            mul_data1 <= reg_data1;
            mul_data2 <= reg_data2;
        end else begin
            start_mul <= 1'b0;
        end
    end
    
    // assign start_mul = (ex_i.aluop == `ALU_MULW || ex_i.aluop == `ALU_MULHW || ex_i.aluop == `ALU_MULHWU ) 
    //                     && !mul_done;
    // assign pause_ex_mul = start_mul;
    assign signed_mul = (ex_i.aluop == `ALU_MULW || ex_i.aluop == `ALU_MULHW);

    mul_alu u_mul_alu (
        .clk,
        .rst,

        .start(start_mul),
        .reg1(mul_data1),
        .reg2(mul_data2),
        .signed_op(signed_mul),

        .done(mul_done),
        .result(mul_result)
    );

    always_comb begin
        case (ex_i.aluop)
            `ALU_MULW: begin
                mul_alu_res = mul_result[31:0];
            end
            `ALU_MULHW, `ALU_MULHWU: begin
                mul_alu_res = mul_result[63:32];
            end
            default: begin
                mul_alu_res = 32'b0;
            end
        endcase
    end

   
    // div alu
    bus32_t div_alu_res;
    logic pause_ex_div;
    logic is_div;
    logic start_div;
    logic signed_div;
    logic div_done;
    logic is_running;
    bus32_t remainder;
    bus32_t quotient;
    bus32_t div_data1;
    bus32_t div_data2;

    assign is_div = (ex_i.aluop == `ALU_DIVW || ex_i.aluop == `ALU_MODW || ex_i.aluop == `ALU_DIVWU 
                        || ex_i.aluop == `ALU_MODWU) && !div_done;
    assign pause_ex_div = is_div && !div_done;
    always_ff @( posedge clk) begin
        if (start_div) begin
            start_div <= 1'b0;
        end else if (is_div && !is_running) begin
            start_div <= 1'b1;
            div_data1 <= reg_data1;
            div_data2 <= reg_data2;
        end else begin
            start_div <= 1'b0;
        end
    end
    // assign start_div = (ex_i.aluop == `ALU_DIVW || ex_i.aluop == `ALU_MODW || ex_i.aluop == `ALU_DIVWU 
    //                     || ex_i.aluop == `ALU_MODWU) && !div_done && !is_running;
    // assign pause_ex_div = start_div || is_running;
    assign signed_div = (ex_i.aluop == `ALU_DIVW || ex_i.aluop == `ALU_MODW);
    

    div_alu u_div_alu(
        .clk,
        .rst,

        .op(signed_div),
        .dividend(div_data1),
        .divisor(div_data2),
        .start(start_div),

        .is_running(is_running),
        .quotient_out(quotient),
        .remainder_out(remainder),
        .done(div_done)
    );

    always_comb begin
        case (ex_i.aluop)
            `ALU_DIVW, `ALU_DIVWU: begin
                div_alu_res = quotient;
            end
            `ALU_MODW, `ALU_MODWU: begin
                div_alu_res = remainder;
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

        .reg1(reg_data1),
        .reg2(reg_data2),

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
                ex_o.mem_addr = reg_data1 + reg_data2;
            end
            `ALU_STB, `ALU_STH, `ALU_STW: begin
                ex_o.mem_addr = reg_data1 + {{20{si12[11]}}, si12};
            end
            `ALU_SCW: begin
                ex_o.mem_addr = reg_data1 + {{16{si14[13]}}, si14, 2'b00};
            end
            default: begin
                ex_o.mem_addr = 32'b0;        
            end
        endcase
    end

    assign virtual_addr = ex_o.mem_addr;    
    logic mem_is_valid;

    assign valid = mem_is_valid && !flush && !ex_o.is_exception && !pause_mem; 

    always_comb begin: to_dcache
        case (ex_i.aluop) 
            `ALU_LDB, `ALU_LDBU: begin
                ex_mem_exception = 1'b0;
                op = 1'b0;
                mem_is_valid = 1'b1;
                wdata = 32'b0;
                wstrb = 4'b1111;
            end
            `ALU_LDH, `ALU_LDHU: begin
                ex_mem_exception = (ex_o.mem_addr[1: 0] == 2'b01) || (ex_o.mem_addr[1: 0] == 2'b11);
                op = 1'b0;
                mem_is_valid = 1'b1;
                wdata = 32'b0;
                wstrb = 4'b1111;
            end
            `ALU_LDW, `ALU_LLW: begin
                ex_mem_exception = (ex_o.mem_addr[1: 0] != 2'b00);
                op = 1'b0;
                mem_is_valid = 1'b1;
                wdata = 32'b0;
                wstrb = 4'b1111;
            end
            `ALU_STB: begin
                ex_mem_exception = 1'b0;
                op = 1'b1;
                mem_is_valid = 1'b1;
                case (ex_o.mem_addr[1: 0])
                    2'b00: begin
                        wstrb = 4'b0001;
                        wdata = {24'b0, reg_data2[7: 0]};
                    end 
                    2'b01: begin
                        wstrb = 4'b0010;
                        wdata = {16'b0, reg_data2[7: 0], 8'b0};
                    end
                    2'b10: begin
                        wstrb = 4'b0100;
                        wdata = {8'b0, reg_data2[7: 0], 16'b0};
                    end
                    2'b11: begin
                        wstrb = 4'b1000;
                        wdata = {reg_data2[7: 0], 24'b0};
                    end
                    default: begin
                        wstrb = 4'b0000;          
                        wdata = 32'b0;           
                    end
                endcase
            end
            `ALU_STH: begin
                op = 1'b1;
                mem_is_valid = 1'b1;
                case (ex_o.mem_addr[1: 0])
                    2'b00: begin
                        wstrb = 4'b0011;
                        wdata = {16'b0, reg_data2[15: 0]};
                        ex_mem_exception = 1'b0;
                    end 
                    2'b10: begin
                        wstrb = 4'b1100;
                        wdata = {reg_data2[15: 0], 16'b0};
                        ex_mem_exception = 1'b0;
                    end
                    2'b01, 2'b11: begin
                        wstrb = 4'b0000;
                        wdata = 32'b0;
                        ex_mem_exception = 1'b1;
                    end
                    default: begin
                        wstrb = 4'b0000; 
                        wdata = 32'b0;    
                        ex_mem_exception = 1'b0;        
                    end
                endcase
            end
            `ALU_STW: begin
                ex_mem_exception = (ex_o.mem_addr[1: 0] != 2'b00);
                op = 1'b1;
                wdata = reg_data2;
                mem_is_valid = 1'b1;
                wstrb = 4'b1111;
            end
            `ALU_SCW: begin
                ex_mem_exception = (ex_o.mem_addr[1: 0] != 2'b00);
                if (LLbit) begin
                    op = 1'b1;
                    wdata = reg_data2;
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
                ex_mem_exception = 1'b0;
            end
        endcase
    end

    // always_comb begin
    //     case (ex_i.aluop)
    //         `ALU_PRELD: begin
    //             cache_inst.is_cacop = 1'b0;
    //             cache_inst.cacop_code = 5'b0;
    //             cache_inst.is_preld = 1'b1;
    //             cache_inst.addr = ex_o.mem_addr;  
    //         end
    //         `ALU_CACOP: begin
    //             cache_inst.is_cacop = 1'b1;
    //             cache_inst.cacop_code = ex_i.cacop_code;
    //             cache_inst.is_preld = 1'b0;
    //             cache_inst.addr = ex_o.mem_addr;
    //         end
    //         default: begin
    //             cache_inst.is_cacop = 1'b0;
    //             cache_inst.cacop_code = 5'b0;
    //             cache_inst.is_preld = 1'b0;
    //             cache_inst.addr = 32'b0;
    //         end
    //     endcase
    // end
    assign cache_inst = 0;

    // csr && privilege alu
    bus32_t csr_alu_res;
    bus32_t mask_data;
    assign mask_data = ((ex_i.csr_read_data & ~reg_data2) | (reg_data1 & reg_data2));

    always_comb begin
        if (ex_i.aluop == `ALU_LLW ) begin
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
            ex_o.csr_write_data = (ex_i.aluop == `ALU_CSRXCHG)? mask_data: reg_data1;
            ex_o.is_llw_scw = 1'b0;
        end
    end

    bus64_t cnt_real;
    assign cnt_real = cnt + 64'h2;
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

    // tlb 
    always_comb begin
        tlbrd_en = 1'b0;
        tlbsrch_en = 1'b0;
        tlbfill_en = 1'b0;
        tlbwr_en = 1'b0;
        invtlb_en = 1'b0;
        invtlb_asid = 10'b0;
        invtlb_vpn = 19'b0;
        invtlb_op = 5'b0;
        rand_index = 5'b0;
        tlb_op_exception = 1'b0;

        case(ex_i.aluop)
            `ALU_TLBRD: begin
                tlbrd_en = 1'b1;
            end
            `ALU_TLBSRCH: begin
                tlbsrch_en = 1'b1;
            end
            `ALU_TLBFILL: begin
                tlbfill_en = 1'b1;
                rand_index = cnt_real[4:0];
            end
            `ALU_TLBWR: begin
                tlbwr_en = 1'b1;
            end
            `ALU_INVTLB: begin
                invtlb_en = 1'b1;
                invtlb_asid = (ex_i.invtlb_op < 5'h4)? 10'b0: reg_data1[9:0];
                invtlb_vpn = (ex_i.invtlb_op < 5'h5)? 19'b0: reg_data2[31:13];
                invtlb_op = ex_i.invtlb_op;
                tlb_op_exception = (ex_i.invtlb_op > 5'h6);
            end
        endcase
    end

    // reg data 
    assign ex_o.reg_write_en = ex_i.reg_write_en;
    assign ex_o.reg_write_addr = ex_i.reg_write_addr;
    
    always_comb begin: reg_write
        case (ex_i.alusel)
            `ALU_SEL_ARITHMETIC: begin
                ex_o.reg_write_data = regular_alu_res;
            end
            `ALU_SEL_MUL: begin
                ex_o.reg_write_data = mul_alu_res;
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
    assign pause_alu = pause_ex_mul || pause_ex_div || pause_ex_mem;

endmodule