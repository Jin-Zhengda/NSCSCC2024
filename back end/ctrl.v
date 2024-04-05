`include "define.v"

module ctrl (
    input wire rst,

    input wire pause_id,
    input wire pause_ex,


    // pause[0] PC, pause[1] if, pause[2] id
    // pause[3] ex, pause[4] mem, pause[5] wb
    output reg[5: 0] pause
);

    always @(*) begin
        if (rst) begin
            pause = 0;
        end
        else if (pause_id) begin
            pause = 6'b000111;
        end
        else if (pause_ex) begin
            pause = 6'b001111;
        end
        else begin
            pause = 0;
        end
    end
    
endmodule