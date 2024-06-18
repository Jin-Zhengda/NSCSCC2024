`timescale 1ns / 1ps

module decoder
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ctrl
    input logic flush,
    input logic pause,

    // from front
    input bus32_t [DECODER_WIDTH - 1:0] pc,
    input bus32_t [DECODER_WIDTH - 1:0] inst,
    input logic [DECODER_WIDTH - 1:0] pre_is_branch,
    input logic [DECODER_WIDTH - 1:0] pre_is_branch_taken,
    input bus32_t [DECODER_WIDTH - 1:0] pre_branch_addr,
    input logic [DECODER_WIDTH - 1:0][5:0] is_exception,
    input logic [DECODER_WIDTH - 1:0][5:0][6:0] exception_cause,

    // from dispatch
    input logic [  ISSUE_WIDTH - 1:0] dqueue_en,
    input logic [DECODER_WIDTH - 1:0] invalid_en,

    // to ctrl
    output logic pause_decoder,

    // to dispatch
    output id_dispatch_t [DECODER_WIDTH - 1:0] dispatch_i
);

    logic [DECODER_WIDTH - 1:0] pause_id;
    id_dispatch_t [DECODER_WIDTH - 1:0] id_o;

    generate
        for (genvar i = 0; i < DECODER_WIDTH; i++) begin : id
            id u_id (
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

    // issue queue
    logic [DECODER_WIDTH - 1:0] enqueue_en;
    id_dispatch_t [DECODER_WIDTH - 1:0] enqueue_data;

    id_dispatch_t [ISSUE_WIDTH - 1:0] dqueue_data;
    logic full;

    dram_fifo #(.DATA_WIDTH($size(id_dispatch_t))) u_issue_queue (.*);

    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign enqueue_data[id_idx] = id_o[id_idx];
        end
    endgenerate

    assign enqueue_en = (rst || full || (!id_o[0].inst_valid && !id_o[1].inst_valid)) ? 2'b00 : 2'b11;

    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign dispatch_i[id_idx] = dqueue_data[id_idx];
        end
    endgenerate

    // pasue request
    assign pause_decoder = |pause_id || full;


endmodule
