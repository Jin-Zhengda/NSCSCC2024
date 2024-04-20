`include "define.v"

module pc (
    input wire clk,
    input wire rst,

    input wire[5: 0] pause,
    input wire is_branch_i,
    input wire[`InstAddrWidth] branch_target_addr_i,

    input wire exception_flush,
    input wire[`InstAddrWidth] exception_handle_pc_i,

    input wire is_interrupt_i,
    output wire[4: 0] is_exception_o,
    output wire[`FiveExceptionCauseWidth] exception_cause_o,

    output reg[`InstAddrWidth] pc_o,
    output reg inst_en_o
);

    assign is_exception_o = {is_interrupt_i, {(pc_o[1: 0] == 2'b00) ? 1'b0 : 1'b1}, 3'b0};
    assign exception_cause_o = {{is_interrupt_i ? `EXCEPTION_INT: `EXCEPTION_NOP}, 
                                {(pc_o[1: 0] == 2'b00) ?  `EXCEPTION_NOP: `EXCEPTION_ADEF},
                                {3{`EXCEPTION_NOP}}};

    always @(posedge clk) begin
        if (rst) begin
            inst_en_o <= 1'b0;
        end
        else begin
            inst_en_o <= 1'b1;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            pc_o <= 32'h100;
        end
        else if (exception_flush) begin
            pc_o <= exception_handle_pc_i;
        end
        else if (pause[0]) begin
            pc_o <= pc_o;
        end
        else begin
            if (is_branch_i) begin
                pc_o <= branch_target_addr_i;
            end
            else begin
                pc_o <= pc_o + 4'h4;
            end
        end
    end
    
endmodule