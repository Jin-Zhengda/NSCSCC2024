`include "defines.sv"
`include "csr_defines.sv"
`include "pipeline_types.sv"

module mem 
    import pipeline_types::*;
(
    input ex_mem_t ex_mem,

    mem_csr csr_master,
    mem_dcache dcache_master,

    input csr_push_forward_t wb_push_forward,

    input bus64_t cnt,

    output logic pause_mem,
    output mem_wb_t mem_wb,
    output mem_ctrl_t mem_ctrl,
    output logic is_syscall_break
);

    assign mem_ctrl.pc = ex_mem.pc;

    assign csr_master.csr_read_en = (ex_mem.aluop == `ALU_RDCNTID) ? 1'b1: ex_mem.csr_read_en;
    assign csr_master.csr_read_addr = (ex_mem.aluop == `ALU_RDCNTID) ? 14'b01000000 :ex_mem.csr_addr;
    
    assign mem_ctrl.exception_addr = ex_mem.mem_addr;

    assign mem_ctrl.is_ertn = (mem_ctrl.is_exception == 6'b0 && ex_mem.aluop == `ALU_ERTN) ? 1'b1 : 1'b0;
    assign is_syscall_break = (ex_mem.aluop == `ALU_SYSCALL || ex_mem.aluop == `ALU_BREAK) ? 1'b1 : 1'b0;
    assign mem_ctrl.is_idle = (ex_mem.aluop == `ALU_IDLE) ? 1'b1 : 1'b0;
    assign mem_ctrl.is_exception = ex_mem.is_exception;
    assign mem_ctrl.exception_cause = ex_mem.exception_cause;

    assign mem_wb.csr_write.csr_write_en = ex_mem.csr_write_en;
    assign mem_wb.csr_write.csr_write_addr = ex_mem.csr_addr;
    assign mem_wb.csr_write.is_llw_scw = ex_mem.is_llw_scw;

    bus32_t cache_data;

    assign cache_data = (!dcache_master.cache_miss && dcache_master.data_ok) ? dcache_master.rdata : 32'b0;

    bus32_t csr_read_data;
    logic pause_uncache;

    assign pause_mem = pause_uncache;

    always_comb begin: csr_read
        if (csr_master.csr_read_en && wb_push_forward.csr_write_en && (csr_master.csr_read_addr == wb_push_forward.csr_write_addr)) begin
            csr_read_data = wb_push_forward.csr_write_data;
        end
        else if (csr_master.csr_read_en) begin
            csr_read_data = csr_master.csr_read_data;
        end
        else begin
            csr_read_data = 32'b0;
        end
    end

    assign mem_wb.data_write.write_en = ex_mem.reg_write_en;
    assign mem_wb.data_write.write_addr = ex_mem.reg_write_addr;

    always_comb begin : mem
        case (ex_mem.aluop)
            `ALU_LDB: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1: 0])
                        2'b00: begin
                            mem_wb.data_write.write_data = {{24{cache_data[7]}}, cache_data[7: 0]};
                        end 
                        2'b01: begin
                            mem_wb.data_write.write_data = {{24{cache_data[15]}}, cache_data[15: 8]};
                        end
                        2'b10: begin
                            mem_wb.data_write.write_data = {{24{cache_data[23]}}, cache_data[23: 16]};
                        end
                        2'b11: begin
                            mem_wb.data_write.write_data = {{24{cache_data[31]}}, cache_data[31: 24]};
                        end
                        default: begin
                            mem_wb.data_write.write_data = 32'b0;
                        end
                    endcase
                end
                else begin
                    pause_uncache = 1'b1;
                end
                
            end
            `ALU_LDBU: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1: 0])
                        2'b00: begin
                            mem_wb.data_write.write_data = {{24{1'b0}}, cache_data[7: 0]};
                        end 
                        2'b01: begin
                            mem_wb.data_write.write_data = {{24{1'b0}}, cache_data[15: 8]};
                        end
                        2'b10: begin
                            mem_wb.data_write.write_data = {{24{1'b0}}, cache_data[23: 16]};
                        end
                        2'b11: begin
                            mem_wb.data_write.write_data = {{24{1'b0}}, cache_data[31: 24]};
                        end
                        default: begin
                            mem_wb.data_write.write_data = 32'b0;
                        end
                    endcase
                end
                else begin
                    pause_uncache = 1'b1;
                end
            end 
            `ALU_LDH: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1: 0])
                        2'b00: begin
                            mem_wb.data_write.write_data = {{16{cache_data[15]}}, cache_data[15: 0]};
                        end 
                        2'b10: begin
                            mem_wb.data_write.write_data = {{16{cache_data[15]}}, cache_data[31: 16]};
                        end
                        default: begin
                            mem_wb.data_write.write_data = 32'b0;
                        end
                    endcase
                end
                else begin
                    pause_uncache = 1'b1;
                end
                
            end
            `ALU_LDHU: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    case (ex_mem.mem_addr[1: 0])
                        2'b00: begin
                            mem_wb.data_write.write_data = {{16{1'b0}}, cache_data[15: 0]};
                        end 
                        2'b10: begin
                            mem_wb.data_write.write_data = {{16{1'b0}}, cache_data[31: 16]};
                        end
                        default: begin
                            mem_wb.data_write.write_data = 32'b0;
                        end
                    endcase
                end
                else begin
                    pause_uncache = 1'b1;
                end
            end
            `ALU_LDW: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    mem_wb.data_write.write_data = cache_data;
                end
                else begin
                    pause_uncache = 1'b1;
                end
                
            end
            `ALU_LLW: begin
                if (!dcache_master.cache_miss && dcache_master.data_ok) begin
                    pause_uncache = 1'b0;
                    mem_wb.data_write.write_data = cache_data;
                end
                else begin
                    pause_uncache = 1'b1;
                end
            end
            `ALU_CSRRD: begin
                mem_wb.data_write.write_data = csr_read_data;
            end
            `ALU_CSRWR: begin
                mem_wb.data_write.write_data = csr_read_data;
            end
            `ALU_CSRXCHG: begin
                mem_wb.data_write.write_data = csr_read_data;
            end
            `ALU_RDCNTID: begin
                mem_wb.data_write.write_data = csr_read_data;
            end
            `ALU_RDCNTVLW: begin
                mem_wb.data_write.write_data = cnt[31: 0];
            end
            `ALU_RDCNTVHW: begin
                mem_wb.data_write.write_data = cnt[63: 32];
            end
            default: begin
                mem_wb.data_write.write_data = ex_mem.reg_write_data;
                pause_uncache = 1'b0;
            end 
        endcase
    end

    assign mem_wb.csr_write.csr_write_data = (ex_mem.aluop == `ALU_CSRXCHG) ? 
                                        ((csr_read_data & !ex_mem.csr_mask) | (ex_mem.csr_write_data & ex_mem.csr_mask)): ex_mem.csr_write_data;
endmodule