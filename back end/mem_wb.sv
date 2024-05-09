module mem_wb 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input ctrl_t ctrl,

    input mem_wb_t mem_i,
    output mem_wb_t wb_o
);
    always_ff @(posedge clk) begin
        if (rst) begin
            wb_o <= 0;
        end
        else if (ctrl.exception_flush) begin
            wb_o <= 0;
        end
        else if (ctrl.pause[6] && !ctrl.pause[7]) begin
            wb_o <= 0;
        end
        else if (!ctrl.pause[6]) begin
            wb_o <= mem_i;
        end
        else begin
            wb_o <= wb_o;
        end
    end

endmodule