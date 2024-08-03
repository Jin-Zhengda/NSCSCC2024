`timescale 1ns / 1ps
`define InstBus 31:0
`define InstBufferSize 16
`define InstBufferAddrSize 5
`define ZeroInstBufferAddr 5'd0

module instbuffer_d
import pipeline_types::*;
(
    input logic clk,
    input logic rst,
    input logic flush,
    input logic stall,
    input logic pause,
    input logic pause_decoder,

    //icache传来的信�?
    input logic [1:0][31:0] inst,
    input logic [1:0][31:0] pc,
    input logic [1:0] is_exception,
    input logic [1:0][6: 0] exception_cause,

    //bpu传来的信�?
    input logic [1:0] is_branch,
    input logic [1:0] pre_taken_or_not,
    input logic [31:0] pre_branch_addr,

    ex_tlb tlb_master,


    // //发射指令的使能信�?
    // input logic [1:0] send_inst_en,

    //从bpu取指令的使能信号
    input logic [1:0] icache_fetch_inst_en,

    //输出给if_id�?
    output inst_and_pc_t inst_and_pc_o,
    output branch_info_t [1:0] branch_info,
    output logic buffer_full
    );

    logic [1:0][1:0] buffer_is_exception;
    logic [1:0][1:0][6:0] buffer_exception_cause;
    generate
        for (genvar i = 0; i < 2; i++) begin
            assign buffer_is_exception[i] = {is_exception[i], tlb_master.tlb_inst_exception[i]};
            assign buffer_exception_cause[i] = {exception_cause[i], tlb_master.tlb_inst_exception_cause[i]};
        end
    endgenerate

    logic [1:0] fetch_cancel;
    assign fetch_cancel[0] = !icache_fetch_inst_en[0];
    assign fetch_cancel[1] = !icache_fetch_inst_en[1] || (is_branch[0] && pre_taken_or_not[0]) ;


    logic [1:0] fetch_en;
    assign fetch_en[0] = stall? 1'b0: 1'b1;
    assign fetch_en[1] = stall? 1'b0: 1'b1;

    logic [1:0] push_en;
    logic [1:0][115:0] push_data;
    logic [1:0] pop_en;
    logic [1:0][115:0] pop_data;
    logic [1:0] full;
    logic [1:0] empty;
    logic [1:0] push_stall;

    assign buffer_full = full[0] | full[1] | push_stall[0] | push_stall[1];

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_comb begin
                if(stall || push_stall[i]) begin
                    push_en[i] = 0;
                    push_data[i] = 0;
                end else if(fetch_en[i]) begin
                    push_en[i] = 1;
                    push_data[i] = fetch_cancel[i] ? '0: {buffer_is_exception[i],buffer_exception_cause[i],1'b1, pre_branch_addr, pre_taken_or_not[i], is_branch[i], inst[i], pc[i]};
                end else begin
                    push_en[i] = 0;
                    push_data[i] = 0;
                end
            end
        end
    endgenerate

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_comb begin
                if(pause || empty[i]) begin
                    pop_en[i] = 0;
                    {inst_and_pc_o.is_exception[i], inst_and_pc_o.exception_cause[i], inst_and_pc_o.valid[i], branch_info[i].pre_branch_addr, 
                        branch_info[i].pre_taken_or_not, branch_info[i].is_branch, inst_and_pc_o.inst_o[i], inst_and_pc_o.pc_o[i]} = 0;
                end else begin
                    pop_en[i] = 1;
                    {inst_and_pc_o.is_exception[i], inst_and_pc_o.exception_cause[i], inst_and_pc_o.valid[i], branch_info[i].pre_branch_addr, 
                        branch_info[i].pre_taken_or_not, branch_info[i].is_branch, inst_and_pc_o.inst_o[i], inst_and_pc_o.pc_o[i]} = pop_data[i];
                end
            end
        end
    endgenerate


    
    for (genvar i = 0; i < 2; ++i) begin : gen_fifo_bank
        fifo #(
            .DEPTH     (`InstBufferSize),
            .DATA_WIDTH(116)
        ) fifo_bank (
            .clk      (clk),
            .rst      (rst),
            // Push
            .push     (push_en[i]),
            .push_data(push_data[i]),
            // Pop
            .pop      (pop_en[i]),
            .pop_data (pop_data[i]),
            // Control
            .flush    (flush),
            .full     (full[i]),
            .empty    (empty[i]),
            .push_stall(push_stall[i])
        );
    end



endmodule