`include "defines.sv"
`include "csr_defines.sv"

module mem 
    import pipeline_types::*;
(
    input ex_mem_t ex_mem,

    mem_csr csr_master,
    mem_cache cache_master,

    input wb_push_forward_t wb_push_forward,

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

    logic LLbit;

    bus32_t cache_data;

    assign cache_data = (cache_master.is_cache_hit) ? cache_master.cache_data : 32'b0;

    assign LLbit = (wb_push_forward.LLbit_write_en) ? wb_push_forward.LLbit_write_data : csr_master.LLbit;

    bus32_t csr_read_data;
    logic pause_uncache;

    assign pause_mem = ((ex_mem.aluop == `ALU_IDLE) ? 1'b1 : 1'b0) || pause_uncache;

    logic mem_is_exception;
    exception_cause_t mem_is_exception_cause;

    assign mem_ctrl.is_exception = {ex_mem.is_exception[5: 1], mem_is_exception};
    assign mem_ctrl.exception_cause = {ex_mem.exception_cause[5: 1], mem_is_exception_cause};

    assign cache_master.cache_addr = ex_mem.mem_addr;

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

    always_comb begin : mem
        mem_wb.data_write.write_en = ex_mem.reg_write_en;
        mem_wb.data_write.write_addr = ex_mem.reg_write_addr;
        mem_wb.data_write.write_data = ex_mem.reg_write_data;

        cache_master.store_data = 32'b0;
        cache_master.write_en = 1'b0;
        cache_master.read_en = 1'b0;
        cache_master.select = 4'b1111;
        cache_master.cache_en = 1'b0;
        cache_master.is_preld = 1'b0;
        cache_master.is_cacop = 1'b0;
        cache_master.cacop_code = 5'b0;

        mem_wb.csr_write.LLbit_write_en = 1'b0;
        mem_wb.csr_write.LLbit_write_data = 1'b0;
        mem_wb.csr_write.csr_write_en = ex_mem.csr_write_en;
        mem_wb.csr_write.csr_write_addr = ex_mem.csr_addr;
        mem_wb.csr_write.csr_write_data = ex_mem.csr_write_data;

        mem_is_exception = 1'b0;
        mem_is_exception_cause = `EXCEPTION_NOP;

        case (ex_mem.aluop)
            `ALU_LDB: begin
                cache_master.write_en = 1'b0;
                cache_master.read_en = 1'b1;
                cache_master.cache_en = 1'b1;

                if (cache_master.is_cache_hit) begin
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
                cache_master.write_en = 1'b0;
                cache_master.read_en = 1'b1;
                cache_master.cache_en = 1'b1;

                if (cache_master.is_cache_hit) begin
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
                mem_is_exception = (ex_mem.mem_addr[1: 0] == 2'b01 || ex_mem.mem_addr[1: 0] == 2'b11) ? 1'b1 : 1'b0;
                mem_is_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b01 || ex_mem.mem_addr[1: 0] == 2'b11) ? `EXCEPTION_ALE : 7'b0;
                cache_master.write_en = 1'b0;
                cache_master.read_en = 1'b1;
                cache_master.cache_en = 1'b1;

                if (cache_master.is_cache_hit) begin
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
                mem_is_exception = (ex_mem.mem_addr[1: 0] == 2'b01 || ex_mem.mem_addr[1: 0] == 2'b11) ? 1'b1 : 1'b0;
                mem_is_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b01 || ex_mem.mem_addr[1: 0] == 2'b11) ? `EXCEPTION_ALE : 7'b0;
                cache_master.write_en = 1'b0;
                cache_master.read_en = 1'b1;
                cache_master.cache_en = 1'b1;

                if (cache_master.is_cache_hit) begin
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
                mem_is_exception = (ex_mem.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                mem_is_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                cache_master.write_en = 1'b0;
                cache_master.read_en = 1'b1;
                cache_master.cache_en = 1'b1;
                cache_master.select = 4'b1111;
                if (cache_master.is_cache_hit) begin
                    mem_wb.data_write.write_data = cache_data;
                end
                else begin
                    pause_uncache = 1'b1;
                end
                
            end
            `ALU_STB: begin
                cache_master.write_en = 1'b1;
                cache_master.store_data = {4{ex_mem.store_data[7: 0]}};
                cache_master.cache_en = 1'b1;
                case (ex_mem.mem_addr[1: 0])
                    2'b00: begin
                        cache_master.select = 4'b0001;
                    end 
                    2'b01: begin
                        cache_master.select = 4'b0010;
                    end
                    2'b10: begin
                        cache_master.select = 4'b0100;
                    end
                    2'b11: begin
                        cache_master.select = 4'b1000;
                    end
                    default: begin
                        cache_master.select = 4'b0000;                        
                    end
                endcase
            end
            `ALU_STH: begin
                cache_master.write_en = 1'b1;
                cache_master.store_data = {2{ex_mem.store_data[15: 0]}};
                cache_master.cache_en = 1'b1;
                case (ex_mem.mem_addr[1: 0])
                    2'b00: begin
                        cache_master.select = 4'b0011;
                    end 
                    2'b10: begin
                        cache_master.select = 4'b1100;
                    end
                    2'b01, 2'b11: begin
                        cache_master.select = 4'b0000;
                        mem_is_exception = 1'b1;
                        mem_is_exception_cause = `EXCEPTION_ALE;
                    end
                    default: begin
                        cache_master.select = 4'b0000;                        
                    end
                endcase
            end
            `ALU_STW: begin
                cache_master.write_en = 1'b1;
                cache_master.store_data = ex_mem.store_data;
                cache_master.cache_en = 1'b1;
                cache_master.select = 4'b1111;
                mem_is_exception = (ex_mem.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                mem_is_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
            end
            `ALU_LLW: begin
                cache_master.write_en = 1'b0;
                cache_master.read_en = 1'b1;
                cache_master.cache_en = 1'b1;
                mem_wb.data_write.write_data = cache_master.cache_data;
                cache_master.select = 4'b1111;
                mem_wb.csr_write.LLbit_write_en = 1'b1;
                mem_wb.csr_write.LLbit_write_data = 1'b1;
                mem_is_exception = (ex_mem.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                mem_is_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
            end
            `ALU_SCW: begin
                if (LLbit) begin
                    cache_master.write_en = 1'b1;
                    cache_master.store_data = ex_mem.store_data;
                    cache_master.cache_en = 1'b1;
                    cache_master.select = 4'b1111;
                    mem_wb.data_write.write_data = 32'b1;
                    mem_wb.csr_write.LLbit_write_en = 1'b1;
                    mem_wb.csr_write.LLbit_write_data = 1'b0;
                end else begin
                    mem_wb.data_write.write_data = 32'b0;
                end
                mem_is_exception = (ex_mem.mem_addr[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                mem_is_exception_cause = (ex_mem.mem_addr[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
            end
            `ALU_CSRRD: begin
                mem_wb.data_write.write_data = csr_read_data;
            end
            `ALU_CSRWR: begin
                mem_wb.data_write.write_data = csr_read_data;
            end
            `ALU_CSRXCHG: begin
                mem_wb.data_write.write_data = csr_read_data;
                mem_wb.csr_write.csr_write_data = (csr_read_data & !ex_mem.csr_mask) | (ex_mem.csr_write_data & ex_mem.csr_mask);
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
            end 
            `ALU_CACOP: begin
                cache_master.is_cacop = 1'b1;
                cache_master.cacop_code = ex_mem.cacop_code;
            end
        endcase
    end
endmodule