`include "define.v"

module if_id (
    input wire clk,
    input wire rst,

    input wire[5: 0] pause,

    // Instruction fetch stage
    input wire[`InstAddrWidth] if_pc, 
    input wire[`InstWidth] if_inst,

    // Instruction decode stage
    output reg[`InstAddrWidth] id_pc,
    output reg[`InstWidth] id_inst
);

    always @(posedge clk) begin
        if (rst) begin
            id_pc <= 0;
            id_inst <= 0;
        end
        else if (pause[1] && ~pause[2]) begin
            id_pc <= 0;
            id_inst <= 0;
        end 
        else if (~pause[1])begin
            id_pc <= if_pc;
            id_inst <= if_inst;
        end
        else begin
            id_pc <= id_pc;
            id_inst <= id_inst;
        end
    end
    
endmodule