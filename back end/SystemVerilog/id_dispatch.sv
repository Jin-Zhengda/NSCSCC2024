module id_dispatch 
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    input logic branch_flush,

    input ctrl_t ctrl,

    input id_dispatch_t id_i,
    output id_dispatch_t dispatch_o
);

    always_ff @( posedge clk ) begin : id_dispatch
        if (rst) begin
            dispatch_o <= 0;
        end
        else if (ctrl.exception_flush) begin
            dispatch_o <= 0;
        end
        else if (ctrl.pause[2] && !ctrl.pause[3]) begin
            dispatch_o <= id_i;
        end
        else if (!ctrl.pause[2]) begin
            if (branch_flush) begin
                dispatch_o <= 0;
            end
            else begin
                dispatch_o <= id_i;
            end
        end
        else begin
            dispatch_o <= dispatch_o;
        end
        
    end
    
endmodule