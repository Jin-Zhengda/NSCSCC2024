`include "define.v"

module mem (
    input wire rst,

    // from ex_mem
    input wire[`InstAddrWidth] pc_i,
    input wire[`RegWidth] reg_write_data_i,
    input wire[`RegAddrWidth] reg_write_addr_i,
    input wire reg_write_en_i,

    input wire[`ALUOpWidth] aluop_i,
    input wire[`RegWidth] mem_addr_i,
    input wire[`RegWidth] store_data_i,

    input wire csr_read_en_i,
    input wire csr_write_en_i,
    input wire[`CSRAddrWidth] csr_addr_i,
    input wire[`RegWidth] csr_write_data_i,
    input wire[`RegWidth] csr_mask_i,

    input wire[5: 0] is_exception_i,
    input wire[`FiveExceptionCauseWidth] exception_cause_i,

    // to ctrl
    output wire[5: 0] is_exception_o,
    output wire[`FiveExceptionCauseWidth] exception_cause_o,
    output wire[`InstAddrWidth] pc_o,
    output wire[`RegWidth] exception_addr_o,
    output wire is_ertn,
    output wire pause_mem,
    output wire is_syscall_break,

    // to mem_wb
    output reg[`RegWidth] reg_write_data_o,
    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o,
    output reg LLbit_write_en_o,
    output reg LLbit_write_data_o,
    output reg csr_write_en_o,
    output reg[`CSRAddrWidth] csr_write_addr_o,
    output reg[`RegWidth] csr_write_data_o,

    // from csr
    input wire LLbit_i,
    input wire[`RegWidth] csr_read_data_i,

    // from mem_wb
    input wire wb_LLbit_write_en_i,
    input wire wb_LLbit_write_data_i,
    input wire wb_csr_write_en_i,
    input wire[`CSRAddrWidth] wb_csr_write_addr_i,
    input wire[`RegWidth] wb_csr_write_data_i,

    // to csr
    output wire csr_read_en_o,
    output wire[`CSRAddrWidth] csr_read_addr_o,

    // to data ram/ cache
    output reg[`RegWidth] mem_addr_o,
    output reg[`RegWidth] store_data_o,
    output reg mem_write_en_o,
    output reg mem_read_en_o,
    output reg[3: 0] mem_select_o,
    output reg ram_en_o,

    // from cache
    input wire[`RegWidth] ram_data_i,
    input wire is_cache_hit_i,

    //from stable counter
    input wire[63: 0] cnt
);

    assign pc_o = pc_i;

    assign csr_read_en_o = (aluop_i == `ALU_RDCNTID) ? 1'b1: csr_read_en_i;
    assign csr_read_addr_o = (aluop_i == `ALU_RDCNTID) ? 14'b01000000 :csr_addr_i;

    assign exception_addr_o = mem_addr_i;

    assign is_ertn = (is_exception_o == 5'b0 && aluop_i == `ALU_ERTN) ? 1'b1 : 1'b0;
    assign is_syscall_break = (aluop_i == `ALU_SYSCALL || aluop_i == `ALU_BREAK) ? 1'b1 : 1'b0;

    wire LLbit;

    wire[`RegWidth] ram_data;

    assign ram_data = (is_cache_hit_i) ? ram_data_i : 32'b0;

    assign LLbit = (wb_LLbit_write_en_i) ? wb_LLbit_write_data_i : LLbit_i;

    reg[`RegWidth] csr_read_data;
    reg pause_uncache;

    assign pause_mem = ((aluop_i == `ALU_IDLE) ? 1'b1 : 1'b0) || pause_uncache;

    reg mem_is_exception;
    reg[`ExceptionCauseWidth] mem_is_exception_cause;

    assign is_exception_o = {is_exception_i[4: 1], mem_is_exception};
    assign exception_cause_o = {exception_cause_i[34: 7], mem_is_exception_cause};

    always @(*) begin
        if (rst) begin
            csr_read_data = 32'b0;
        end
        else if (csr_read_en_o && wb_csr_write_en_i && (csr_read_addr_o == wb_csr_write_addr_i)) begin
            csr_read_data = wb_csr_write_data_i;
        end
        else if (csr_read_en_o) begin
            csr_read_data = csr_read_data_i;
        end
        else begin
            csr_read_data = 32'b0;
        end
    end

    always @(*) begin
        if (rst) begin
            reg_write_data_o = 32'b0;
            reg_write_addr_o = 5'b0;
            reg_write_en_o = 1'b0;
            mem_addr_o = 32'b0;
            store_data_o = 32'b0;
            mem_write_en_o = 1'b0;
            mem_read_en_o = 1'b0;
            mem_select_o = 4'b0000;
            ram_en_o = 1'b0;
            LLbit_write_en_o = 1'b0;
            LLbit_write_data_o = 1'b0;
            csr_write_en_o = 1'b0;
            csr_write_addr_o = 14'b0;
            csr_write_data_o = 32'b0;
            mem_is_exception = 1'b0;
            mem_is_exception_cause = `EXCEPTION_NOP;
        end
        else begin
            reg_write_data_o = reg_write_data_i;
            reg_write_addr_o = reg_write_addr_i;
            reg_write_en_o = reg_write_en_i;
            mem_addr_o = 32'b0;
            store_data_o = 32'b0;
            mem_write_en_o = 1'b0;
            mem_read_en_o = 1'b0;
            mem_select_o = 4'b1111;
            ram_en_o = 1'b0;
            LLbit_write_en_o = 1'b0;
            LLbit_write_data_o = 1'b0;
            csr_write_en_o = csr_write_en_i;
            csr_write_addr_o = csr_addr_i;
            csr_write_data_o = csr_write_data_i;
            mem_is_exception = 1'b0;
            mem_is_exception_cause = `EXCEPTION_NOP;
            pause_uncache = 1'b0;

            case (aluop_i)
                `ALU_LDB: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    mem_read_en_o = 1'b1;
                    ram_en_o = 1'b1;
                    if (is_cache_hit_i) begin
                        pause_uncache = 1'b0;
                        case (mem_addr_i[1: 0])
                            2'b00: begin
                                reg_write_data_o = {{24{ram_data[31]}}, ram_data[7: 0]};
                                mem_select_o = 4'b1000;
                            end 
                            2'b01: begin
                                reg_write_data_o = {{24{ram_data[23]}}, ram_data[15: 8]};
                                mem_select_o = 4'b0100;
                            end
                            2'b10: begin
                                reg_write_data_o = {{24{ram_data[15]}}, ram_data[23: 16]};
                                mem_select_o = 4'b0010;
                            end
                            2'b11: begin
                                reg_write_data_o = {{24{ram_data[7]}}, ram_data[31: 24]};
                                mem_select_o = 4'b0001;
                            end
                            default: begin
                                reg_write_data_o = 32'b0;
                            end
                        endcase
                    end
                    else begin
                        pause_uncache = 1'b1;
                    end
                    
                end
                `ALU_LDBU: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    mem_read_en_o = 1'b1;
                    ram_en_o = 1'b1;
                    if (is_cache_hit_i) begin
                        case (mem_addr_i[1: 0])
                            2'b00: begin
                                reg_write_data_o = {{24{1'b0}}, ram_data[7: 0]};
                                mem_select_o = 4'b1000;
                            end 
                            2'b01: begin
                                reg_write_data_o = {{24{1'b0}}, ram_data[15: 8]};
                                mem_select_o = 4'b0100;
                            end
                            2'b10: begin
                                reg_write_data_o = {{24{1'b0}}, ram_data[23: 16]};
                                mem_select_o = 4'b0010;
                            end
                            2'b11: begin
                                reg_write_data_o = {{24{1'b0}}, ram_data[31: 24]};
                                mem_select_o = 4'b0001;
                            end
                            default: begin
                                reg_write_data_o = 32'b0;
                            end
                        endcase
                    end
                    else begin
                        pause_uncache = 1'b1;
                    end
                end 
                `ALU_LDH: begin
                    mem_is_exception = (mem_addr_i[1: 0] == 2'b01 || mem_addr_i[1: 0] == 2'b11) ? 1'b1 : 1'b0;
                    mem_is_exception_cause = (mem_addr_i[1: 0] == 2'b01 || mem_addr_i[1: 0] == 2'b11) ? `EXCEPTION_ALE : 7'b0;
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    mem_read_en_o = 1'b1;
                    ram_en_o = 1'b1;
                    if (is_cache_hit_i) begin
                        case (mem_addr_i[1: 0])
                            2'b00: begin
                                reg_write_data_o = {{16{ram_data[31]}}, ram_data[15: 0]};
                                mem_select_o = 4'b1100;
                            end 
                            2'b10: begin
                                reg_write_data_o = {{16{ram_data[15]}}, ram_data[31: 16]};
                                mem_select_o = 4'b0011;
                            end
                            default: begin
                                reg_write_data_o = 32'b0;
                            end
                        endcase
                    end
                    else begin
                        pause_uncache = 1'b1;
                    end
                    
                end
                `ALU_LDHU: begin
                    mem_is_exception = (mem_addr_i[1: 0] == 2'b01 || mem_addr_i[1: 0] == 2'b11) ? 1'b1 : 1'b0;
                    mem_is_exception_cause = (mem_addr_i[1: 0] == 2'b01 || mem_addr_i[1: 0] == 2'b11) ? `EXCEPTION_ALE : 7'b0;
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    mem_read_en_o = 1'b1;
                    ram_en_o = 1'b1;
                    if (is_cache_hit_i) begin
                        case (mem_addr_i[1: 0])
                            2'b00: begin
                                reg_write_data_o = {{16{1'b0}}, ram_data[15: 0]};
                                mem_select_o = 4'b1100;
                            end 
                            2'b10: begin
                                reg_write_data_o = {{16{1'b0}}, ram_data[31: 16]};
                                mem_select_o = 4'b0011;
                            end
                            default: begin
                                reg_write_data_o = 32'b0;
                            end
                        endcase
                    end
                    else begin
                        pause_uncache = 1'b1;
                    end
                end
                `ALU_LDW: begin
                    mem_is_exception = (mem_addr_i[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                    mem_is_exception_cause = (mem_addr_i[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    mem_read_en_o = 1'b1;
                    ram_en_o = 1'b1;
                    if (is_cache_hit_i) begin
                        reg_write_data_o = ram_data;
                        mem_select_o = 4'b1111;
                    end
                    else begin
                        pause_uncache = 1'b1;
                    end
                    
                end
                `ALU_STB: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b1;
                    store_data_o = {4{store_data_i[7: 0]}};
                    ram_en_o = 1'b1;
                    case (mem_addr_i[1: 0])
                        2'b00: begin
                            mem_select_o = 4'b0001;
                        end 
                        2'b01: begin
                            mem_select_o = 4'b0010;
                        end
                        2'b10: begin
                            mem_select_o = 4'b0100;
                        end
                        2'b11: begin
                            mem_select_o = 4'b1000;
                        end
                        default: begin
                            mem_select_o = 4'b0000;                        
                        end
                    endcase
                end
                `ALU_STH: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b1;
                    store_data_o = {2{store_data_i[15: 0]}};
                    ram_en_o = 1'b1;
                    case (mem_addr_i[1: 0])
                        2'b00: begin
                            mem_select_o = 4'b0011;
                        end 
                        2'b10: begin
                            mem_select_o = 4'b1100;
                        end
                        2'b01, 2'b11: begin
                            mem_select_o = 4'b0000;
                            mem_is_exception = 1'b1;
                            mem_is_exception_cause = `EXCEPTION_ALE;
                        end
                        default: begin
                            mem_select_o = 4'b0000;                        
                        end
                    endcase
                end
                `ALU_STW: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b1;
                    store_data_o = store_data_i;
                    ram_en_o = 1'b1;
                    mem_select_o = 4'b1111;
                    mem_is_exception = (mem_addr_i[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                    mem_is_exception_cause = (mem_addr_i[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                end
                `ALU_LLW: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    ram_en_o = 1'b1;
                    reg_write_data_o = ram_data_i;
                    mem_select_o = 4'b1111;
                    LLbit_write_en_o = 1'b1;
                    LLbit_write_data_o = 1'b1;
                    mem_is_exception = (mem_addr_i[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                    mem_is_exception_cause = (mem_addr_i[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                end
                `ALU_SCW: begin
                    if (LLbit) begin
                        mem_addr_o = mem_addr_i;
                        mem_write_en_o = 1'b1;
                        store_data_o = store_data_i;
                        ram_en_o = 1'b1;
                        mem_select_o = 4'b1111;
                        reg_write_data_o = 32'b1;
                        LLbit_write_en_o = 1'b1;
                        LLbit_write_data_o = 1'b0;
                    end else begin
                        reg_write_data_o = 32'b0;
                    end
                    mem_is_exception = (mem_addr_i[1: 0] == 2'b00) ? 1'b0 : 1'b1;
                    mem_is_exception_cause = (mem_addr_i[1: 0] == 2'b00) ? 7'b0 : `EXCEPTION_ALE;
                end
                `ALU_CSRRD: begin
                    reg_write_data_o = csr_read_data;
                end
                `ALU_CSRWR: begin
                    reg_write_data_o = csr_read_data;
                end
                `ALU_CSRXCHG: begin
                    reg_write_data_o = csr_read_data;
                    csr_write_data_o = (csr_read_data & ~csr_mask_i) | (csr_write_data_i & csr_mask_i);
                end
                `ALU_RDCNTID: begin
                    reg_write_data_o = csr_read_data;
                end
                `ALU_RDCNTVLW: begin
                    reg_write_data_o = cnt[31: 0];
                end
                `ALU_RDCNTVHW: begin
                    reg_write_data_o = cnt[63: 32];
                end
                default: begin
                end 
            endcase
        end
    end
    
endmodule