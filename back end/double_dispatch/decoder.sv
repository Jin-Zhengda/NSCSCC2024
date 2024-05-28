`timescale 1ns / 1ps

module decoder
    import pipeline_types::*;
(
    input logic  clk,
    input logic  rst,
    input logic branch_flush,
    input ctrl_t ctrl,

    input bus32_t pc[DECODER_WIDTH],
    input bus32_t inst[DECODER_WIDTH],
    input logic pre_is_branch[DECODER_WIDTH],
    input logic pre_is_branch_taken[DECODER_WIDTH],
    input bus32_t pre_branch_addr[DECODER_WIDTH],
    input logic [5:0] is_exception[DECODER_WIDTH],
    input logic [5:0][6:0] exception_cause[DECODER_WIDTH],

    output logic pause_decoder,
    output id_dispatch_t dispatch_i[DECODER_WIDTH]
);

    logic [DECODER_WIDTH - 1:0] pause_id;
    id_dispatch_t id_o[DECODER_WIDTH];

    generate
        for (genvar i = 0; i < DECODER_WIDTH; i++) begin
            id u_id (
                .clk,
                .rst,

                .pc(pc[i]),
                .inst(inst[i]),
                .pre_is_branch(pre_is_branch[i]),
                .pre_is_branch_taken(pre_is_branch_taken[i]),
                .pre_branch_addr(pre_branch_addr[i]),
                .is_exception(is_exception[i]),
                .exception_cause(exception_cause[i]),

                .pause_id(pause_id[i]),
                .id_o(id_o[i])
            );
        end
    endgenerate

    assign pause_decoder = |pause_id;

    always_ff @(posedge clk) begin : id_dispatch
        if (rst || ctrl.exception_flush || (ctrl.pause[3] && !ctrl.pause[4])) begin
            dispatch_i <= '{default: 0};
        end else if (!ctrl.pause[3]) begin
            if (branch_flush) begin
                dispatch_i <= '{default: 0};
            end else begin
                dispatch_i <= id_o;
            end
        end else begin
            dispatch_i <= dispatch_i;
        end
    end

endmodule
