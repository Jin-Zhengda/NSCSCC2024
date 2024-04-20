`include "define.v"

module if_id (
    input wire clk,
    input wire rst,

    input wire[5: 0] pause,
    input wire branch_flush,
    input wire exception_flush,

    // Instruction fetch stage
    input wire[`InstAddrWidth] if_pc, 
    input wire[`InstWidth] if_inst,
    input wire[4: 0] if_is_exception,
    input wire[`FiveExceptionCauseWidth] if_exception_cause,

    // Instruction decode stage
    output reg[`InstAddrWidth] id_pc,
    output reg[`InstWidth] id_inst,
    output reg[4: 0] id_is_exception,
    output reg[`FiveExceptionCauseWidth] id_exception_cause
);

    always @(posedge clk) begin
        if (rst) begin
            id_pc <= 32'h100;
            id_inst <= 32'b0;
            id_is_exception <= 5'b0;
            id_exception_cause <= {5{`EXCEPTION_NOP}};
        end
        else if (exception_flush) begin
            id_pc <= 32'h100;
            id_inst <= 32'b0;
            id_is_exception <= 5'b0;
            id_exception_cause <= {5{`EXCEPTION_NOP}};
        end
        else if (pause[1] && ~pause[2]) begin
            id_pc <= 32'h100;
            id_inst <= 32'b0;
            id_is_exception <= 5'b0;
            id_exception_cause <= {5{`EXCEPTION_NOP}};
        end 
        else if (~pause[1])begin
            if (branch_flush) begin
                id_pc <= 32'h100;
                id_inst <= 32'b0;
                id_is_exception <= 5'b0;
                id_exception_cause <= {5{`EXCEPTION_NOP}};
            end
            else begin
                id_pc <= if_pc;
                id_inst <= if_inst;
                id_is_exception <= if_is_exception;
                id_exception_cause <= if_exception_cause;
            end
        end
        else begin
            id_pc <= id_pc;
            id_inst <= id_inst;
            id_is_exception <= id_is_exception;
            id_exception_cause <= id_exception_cause;
        end
    end
    
endmodule