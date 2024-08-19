`timescale 1ns / 1ps
`define InstBus 31:0
`define InstBufferSize 32
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

    //icache传来的信号
    input logic [1:0][31:0] inst,
    input logic [1:0][31:0] pc,
    input logic [1:0][5: 0] is_exception,
    input logic [1:0][5:0][6: 0] exception_cause,

    //bpu传来的信号
    input logic [1:0] is_branch,
    input logic [1:0] pre_taken_or_not,
    input logic [31:0] pre_branch_addr,


    //发射指令的使能信号
    input logic [1:0] send_inst_en,

    //从bpu取指令的使能信号
    input logic [1:0] icache_fetch_inst_en,

    //输出给if_id的
    output inst_and_pc_t inst_and_pc_o,
    output branch_info_t [1:0] branch_info,
    output logic buffer_full
    );

    logic[1:0] last_is_branch;
    logic[1:0] last_pre_taken_or_not;

    logic[1:0] last_is_branch_delay;
    logic[1:0] last_pre_taken_or_not_delay;


    always_ff @(posedge clk) begin
        last_is_branch <= is_branch;
        last_pre_taken_or_not <= pre_taken_or_not;
        last_is_branch_delay <= last_is_branch;
        last_pre_taken_or_not_delay <= last_pre_taken_or_not;
    end

    logic [1:0] fetch_cancel;
    assign fetch_cancel[0] = 0;
    assign fetch_cancel[1] = (is_branch[0] && pre_taken_or_not[0]);


    logic [1:0][5: 0] is_exception_delay;
    logic [1:0][5:0][6: 0] exception_cause_delay;

    always_ff @(posedge clk) begin
        is_exception_delay <= is_exception;
        exception_cause_delay <= exception_cause;
    end

    assign inst_and_pc_o.is_exception = is_exception_delay;
    assign inst_and_pc_o.exception_cause = exception_cause_delay;

    logic [1:0] fetch_en;
    assign fetch_en[0] = stall? 1'b0: icache_fetch_inst_en[0];
    assign fetch_en[1] = stall? 1'b0: icache_fetch_inst_en[1];

    logic valid_current;
    logic valid_next;

    always_ff @(posedge clk) begin
        if(rst) begin
            valid_next <= 0;
        end else begin
            valid_next <= valid_current;
        end
    end

    always_ff @(posedge clk) begin
        if(rst) begin
            valid_current <= 0;
        end else if(fetch_en[0]&is_branch[0]&pre_taken_or_not[0]) begin
            valid_current <= 1;
        end else if(fetch_en[1]&is_branch[1]&pre_taken_or_not[1]) begin
            valid_current <= 1;
        end else begin
            valid_current <= 0;
        end
    end

    logic [1:0] push_en;
    logic [1:0][98:0] push_data;
    logic [1:0] pop_en;
    logic [1:0][98:0] pop_data;
    logic [1:0] full;
    logic [1:0] empty;
    logic [1:0] push_stall;

    assign buffer_full = full[0] | full[1];

    generate
        for (genvar i = 0; i < 2; i++) begin
            always_comb begin
                if(rst) begin
                    push_en[i] = 0;
                    push_data[i] = 0;
                end else if(stall || push_stall[i]) begin
                    push_en[i] = 0;
                    push_data[i] = 0;
                end else if(fetch_en[i]) begin
                    push_en[i] = 1;
                    push_data[i] = fetch_cancel[i] ? 32'b0: {!valid_next, pre_branch_addr, pre_taken_or_not[i], is_branch[i], inst[i], pc[i]};
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
                if(rst) begin
                    pop_en[i] = 0;
                    inst_and_pc_o.inst_o[i] = 0;
                    inst_and_pc_o.pc_o[i] = 0;
                    branch_info[i] = 0;
                end else if(((pause | empty[i]) && !buffer_full) | pause_decoder) begin
                    pop_en[i] = 0;
                    inst_and_pc_o.inst_o[i] = 0;
                    inst_and_pc_o.pc_o[i] = 0;
                    branch_info[i] = 0;
                end else if(send_inst_en[i]) begin
                    pop_en[i] = 1;
                    inst_and_pc_o.pc_o[i] = pop_data[i][31:0];
                    inst_and_pc_o.inst_o[i] = pop_data[i][63:32];
                    branch_info[i].is_branch = pop_data[i][64];
                    inst_and_pc_o.valid[i] = pop_data[i][98];
                    branch_info[i].pre_taken_or_not = pop_data[i][65];
                    branch_info[i].pre_branch_addr = pop_data[i][97:66];
                end else begin
                    pop_en[i] = 0;
                    inst_and_pc_o.inst_o[i] = 0;
                    inst_and_pc_o.pc_o[i] = 0;
                    branch_info[i] = 0;
                end
            end
        end
    endgenerate


    
    for (genvar i = 0; i < 2; ++i) begin : gen_fifo_bank
        fifo #(
            .DEPTH     (`InstBufferSize),
            .DATA_WIDTH(99)
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