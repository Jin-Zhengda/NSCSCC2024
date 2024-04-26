module ex_mem 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input ctrl_t ctrl,

    input ex_mem_t ex_i,
    output ex_mem_t mem_o
);

    always_ff @(posedge clk) begin
        if (rst) begin
            mem_o <= 0;
        end 
        else if (ctrl.exception_flush) begin
            mem_o <= 0;
        end
        else if (ctrl.pause[4] && !ctrl.pause[5]) begin
            mem_o <= 0;
        end
        else if (!ctrl.pause[4]) begin
            mem_o <= ex_i;
        end
        else begin
            mem_o <= mem_o;
        end
    end
    
endmodule