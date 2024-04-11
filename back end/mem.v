`include "define.v"

module mem (
    input wire rst,

    input wire[`RegWidth] reg_write_data_i,
    input wire[`RegAddrWidth] reg_write_addr_i,
    input wire reg_write_en_i,

    input wire[`ALUOpWidth] aluop_i,
    input wire[`RegWidth] mem_addr_i,
    input wire[`RegWidth] store_data_i,

    output reg[`RegWidth] reg_write_data_o,
    output reg[`RegAddrWidth] reg_write_addr_o,
    output reg reg_write_en_o,

    input wire LLbit_i,
    input wb_LLbit_write_en_i,
    input wb_LLbit_write_data_i,

    output reg LLbit_write_en_o,
    output reg LLbit_write_data_o,

    // from data ram
    input wire[`RegWidth] ram_data_i,

    // to data ram
    output reg[`RegWidth] mem_addr_o,
    output reg[`RegWidth] store_data_o,
    output reg mem_write_en_o,
    output reg[3: 0] mem_select_o,
    output reg ram_en_o
);


    reg LLbit;

    always @(*) begin
        if (rst) begin
            LLbit = 1'b0;
        end
        else if (wb_LLbit_write_en_i) begin
            LLbit = wb_LLbit_write_data_i;
        end
        else begin
            LLbit = LLbit_i;
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
            mem_select_o = 4'b0000;
            ram_en_o = 1'b0;
            LLbit_write_en_o = 1'b0;
            LLbit_write_data_o = 1'b0;
        end
        else begin
            reg_write_data_o = reg_write_data_i;
            reg_write_addr_o = reg_write_addr_i;
            reg_write_en_o = reg_write_en_i;
            mem_addr_o = 32'b0;
            store_data_o = 32'b0;
            mem_write_en_o = 1'b0;
            mem_select_o = 4'b1111;
            ram_en_o = 1'b0;
            LLbit_write_en_o = 1'b0;
            LLbit_write_data_o = 1'b0;

            case (aluop_i)
                `ALU_LDB: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    ram_en_o = 1'b1;
                    case (mem_addr_i[1: 0])
                        2'b00: begin
                            reg_write_data_o = {{24{ram_data_i[31]}}, ram_data_i[31: 24]};
                            mem_select_o = 4'b1000;
                        end 
                        2'b01: begin
                            reg_write_data_o = {{24{ram_data_i[23]}}, ram_data_i[23: 16]};
                            mem_select_o = 4'b0100;
                        end
                        2'b10: begin
                            reg_write_data_o = {{24{ram_data_i[15]}}, ram_data_i[15: 8]};
                            mem_select_o = 4'b0010;
                        end
                        2'b11: begin
                            reg_write_data_o = {{24{ram_data_i[7]}}, ram_data_i[7: 0]};
                            mem_select_o = 4'b0001;
                        end
                        default: begin
                            reg_write_data_o = 32'b0;
                        end
                    endcase
                end
                `ALU_LDBU: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    ram_en_o = 1'b1;
                    case (mem_addr_i[1: 0])
                        2'b00: begin
                            reg_write_data_o = {{24{1'b0}}, ram_data_i[31: 24]};
                            mem_select_o = 4'b1000;
                        end 
                        2'b01: begin
                            reg_write_data_o = {{24{1'b0}}, ram_data_i[23: 16]};
                            mem_select_o = 4'b0100;
                        end
                        2'b10: begin
                            reg_write_data_o = {{24{1'b0}}, ram_data_i[15: 8]};
                            mem_select_o = 4'b0010;
                        end
                        2'b11: begin
                            reg_write_data_o = {{24{1'b0}}, ram_data_i[7: 0]};
                            mem_select_o = 4'b0001;
                        end
                        default: begin
                            reg_write_data_o = 32'b0;
                        end
                    endcase
                end 
                `ALU_LDH: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    ram_en_o = 1'b1;
                    case (mem_addr_i[1: 0])
                        2'b00: begin
                            reg_write_data_o = {{16{ram_data_i[31]}}, ram_data_i[31: 16]};
                            mem_select_o = 4'b1100;
                        end 
                        2'b10: begin
                            reg_write_data_o = {{16{ram_data_i[15]}}, ram_data_i[15: 0]};
                            mem_select_o = 4'b0011;
                        end
                        default: begin
                            reg_write_data_o = 32'b0;
                        end
                    endcase
                end
                `ALU_LDHU: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    ram_en_o = 1'b1;
                    case (mem_addr_i[1: 0])
                        2'b00: begin
                            reg_write_data_o = {{16{1'b0}}, ram_data_i[31: 16]};
                            mem_select_o = 4'b1100;
                        end 
                        2'b10: begin
                            reg_write_data_o = {{16{1'b0}}, ram_data_i[15: 0]};
                            mem_select_o = 4'b0011;
                        end
                        default: begin
                            reg_write_data_o = 32'b0;
                        end
                    endcase
                end
                `ALU_LDW: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    ram_en_o = 1'b1;
                    reg_write_data_o = ram_data_i;
                    mem_select_o = 4'b1111;
                end
                `ALU_STB: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b1;
                    store_data_o = {4{store_data_i[7: 0]}};
                    ram_en_o = 1'b1;
                    case (mem_addr_i[1: 0])
                        2'b00: begin
                            mem_select_o = 4'b1000;
                        end 
                        2'b01: begin
                            mem_select_o = 4'b0100;
                        end
                        2'b10: begin
                            mem_select_o = 4'b0010;
                        end
                        2'b11: begin
                            mem_select_o = 4'b0001;
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
                            mem_select_o = 4'b1100;
                        end 
                        2'b10: begin
                            mem_select_o = 4'b0011;
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
                end
                `ALU_LLW: begin
                    mem_addr_o = mem_addr_i;
                    mem_write_en_o = 1'b0;
                    ram_en_o = 1'b1;
                    reg_write_data_o = ram_data_i;
                    mem_select_o = 4'b1111;
                    LLbit_write_en_o = 1'b1;
                    LLbit_write_data_o = 1'b1;
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
                end
                default: begin
                end 
            endcase
        end
    end
    
endmodule