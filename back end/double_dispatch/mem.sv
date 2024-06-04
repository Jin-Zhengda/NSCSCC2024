`timescale 1ns / 1ps
`include "core_defines.sv"

module mem
    import pipeline_types::*;
(
    // from ex
    input ex_mem_t mem_i[ISSUE_WIDTH],

    // with dcache
    mem_dcache dcache_master,

    // to dispatch
    output pipeline_push_forward_t mem_reg_pf[ISSUE_WIDTH],

    // to ctrl
    output logic pause_mem,

    // to wb
    output commit_ctrl_t commit_ctrl[ISSUE_WIDTH],
    output mem_wb_t wb_i[ISSUE_WIDTH]
);
    mem_wb_t mem_o[ISSUE_WIDTH];
    assign wb_i = mem_o;

    // mem push forward
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign mem_reg_pf[i].reg_write_en = mem_o[i].reg_write_en;
            assign mem_reg_pf[i].reg_write_addr = mem_o[i].reg_write_addr;
            assign mem_reg_pf[i].reg_write_data = mem_o[i].reg_write_data;
        end
    endgenerate

    // wb signal assignment
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign mem_o[i].reg_write_en = mem_i[i].reg_write_en;
            assign mem_o[i].reg_write_addr = mem_i[i].reg_write_addr;

            assign mem_o[i].is_llw_scw = mem_i[i].is_llw_scw;
            assign mem_o[i].csr_write_en = mem_i[i].csr_write_en;
            assign mem_o[i].csr_write_addr = mem_i[i].csr_addr;
            assign mem_o[i].csr_write_data = mem_i[i].csr_write_data;
        end
    endgenerate

    assign mem_o[1].reg_write_data = mem_i[1].reg_write_data;

    // ctrl signal assignment
    generate
        for (genvar i = 0; i < ISSUE_WIDTH; i++) begin
            assign commit_ctrl[i].is_exception = mem_i[i].is_exception;
            assign commit_ctrl[i].exception_cause = mem_i[i].exception_cause;
            assign commit_ctrl[i].pc = mem_i[i].pc;
            assign commit_ctrl[i].mem_addr = mem_i[i].mem_addr;
            assign commit_ctrl[i].aluop = mem_i[i].aluop;
            assign commit_ctrl[i].is_privilege = mem_i[i].is_privilege;
        end
    endgenerate

    // mem 
    bus32_t cache_data;
    assign cache_data = (!dcache_master.cache_miss && dcache_master.data_ok) ? dcache_master.rdata : 32'b0;

    logic pause_uncache;

    always_comb begin
        case (mem_i[0].aluop)
            `ALU_LDB: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1:0])
                        2'b00: begin
                            mem_o[0].reg_write_data = {{24{cache_data[7]}}, cache_data[7:0]};
                        end
                        2'b01: begin
                            mem_o[0].reg_write_data = {{24{cache_data[15]}}, cache_data[15:8]};
                        end
                        2'b10: begin
                            mem_o[0].reg_write_data = {{24{cache_data[23]}}, cache_data[23:16]};
                        end
                        2'b11: begin
                            mem_o[0].reg_write_data = {{24{cache_data[31]}}, cache_data[31:24]};
                        end
                        default: begin
                            mem_o[0].reg_write_data = 32'b0;
                        end
                    endcase
                end else begin
                    pause_uncache = 1'b1;
                    mem_o[0].reg_write_data = 32'b0;
                end

            end
            `ALU_LDBU: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1:0])
                        2'b00: begin
                            mem_o[0].reg_write_data = {{24{1'b0}}, cache_data[7:0]};
                        end
                        2'b01: begin
                            mem_o[0].reg_write_data = {{24{1'b0}}, cache_data[15:8]};
                        end
                        2'b10: begin
                            mem_o[0].reg_write_data = {{24{1'b0}}, cache_data[23:16]};
                        end
                        2'b11: begin
                            mem_o[0].reg_write_data = {{24{1'b0}}, cache_data[31:24]};
                        end
                        default: begin
                            mem_o[0].reg_write_data = 32'b0;
                        end
                    endcase
                end else begin
                    pause_uncache = 1'b1;
                    mem_o[0].reg_write_data = 32'b0;
                end
            end
            `ALU_LDH: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1:0])
                        2'b00: begin
                            mem_o[0].reg_write_data = {{16{cache_data[15]}}, cache_data[15:0]};
                        end
                        2'b10: begin
                            mem_o[0].reg_write_data = {{16{cache_data[15]}}, cache_data[31:16]};
                        end
                        default: begin
                            mem_o[0].reg_write_data = 32'b0;
                        end
                    endcase
                end else begin
                    pause_uncache = 1'b1;
                    mem_o[0].reg_write_data = 32'b0;
                end

            end
            `ALU_LDHU: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1:0])
                        2'b00: begin
                            mem_o[0].reg_write_data = {{16{1'b0}}, cache_data[15:0]};
                        end
                        2'b10: begin
                            mem_o[0].reg_write_data = {{16{1'b0}}, cache_data[31:16]};
                        end
                        default: begin
                            mem_o[0].reg_write_data = 32'b0;
                        end
                    endcase
                end else begin
                    pause_uncache = 1'b1;
                    mem_o[0].reg_write_data = 32'b0;
                end
            end
            `ALU_LDW: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    mem_o[0].reg_write_data = cache_data;
                end else begin
                    pause_uncache = 1'b1;
                    mem_o[0].reg_write_data = 32'b0;
                end

            end
            `ALU_LLW: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    mem_o[0].reg_write_data = cache_data;
                end else begin
                    pause_uncache = 1'b1;
                    mem_o[0].reg_write_data = 32'b0;
                end
            end
        endcase
    end

    // pause
    assign pause_mem = pause_uncache;
endmodule
