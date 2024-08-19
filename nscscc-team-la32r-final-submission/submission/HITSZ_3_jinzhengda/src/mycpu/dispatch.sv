`timescale 1ns / 1ps
`include "core_defines.sv"
`include "csr_defines.sv"

module dispatch
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ctrl
    input logic pause,
    input logic flush,

    // from decoder
    input id_dispatch_t [DECODER_WIDTH - 1:0] dispatch_i,

    // from ex and mem
    input pipeline_push_forward_t [ISSUE_WIDTH - 1:0] ex_reg_pf,
    input pipeline_push_forward_t [ISSUE_WIDTH - 1:0] mem_reg_pf,
    input pipeline_push_forward_t [ISSUE_WIDTH - 1:0] wb_reg_pf,

    // from ex
    input alu_op_t [ISSUE_WIDTH - 1:0] pre_ex_aluop,
    input logic pause_ex,

    // with regfile
    dispatch_regfile regfile_master,

    // with csr
    dispatch_csr csr_master,

    // to ctrl
    output logic pause_dispatch,

    // to id
    // output logic [  ISSUE_WIDTH - 1:0] dqueue_en,
    output logic [DECODER_WIDTH - 1:0] invalid_en,

    // to ex
    output dispatch_ex_t [DECODER_WIDTH - 1:0] ex_i
);
    dispatch_ex_t [DECODER_WIDTH - 1:0] dispatch_o;
    logic [ISSUE_WIDTH - 1:0] issue_en;

    // dispatch arbitration
    assign invalid_en = pause? 2'b00: issue_en;

    logic [1:0] inst_valid;
    assign inst_valid = {dispatch_i[1].valid, dispatch_i[0].valid};

    logic issue_double_en;

    logic privilege_inst;
    logic mem_inst;
    logic data_relate_inst;
    logic cnt_inst;

    assign privilege_inst = dispatch_i[0].is_privilege || dispatch_i[1].is_privilege;
    assign mem_inst = dispatch_i[0].alusel == `ALU_SEL_LOAD_STORE || dispatch_i[1].alusel == `ALU_SEL_LOAD_STORE;

    assign data_relate_inst = (dispatch_i[0].reg_write_en && dispatch_i[0].reg_write_addr != 5'b0) 
                            && ((dispatch_i[0].reg_write_addr == dispatch_i[1].reg_read_addr[0] && dispatch_i[1].reg_read_en[0]) 
                            || (dispatch_i[0].reg_write_addr == dispatch_i[1].reg_read_addr[1] && dispatch_i[1].reg_read_en[1]));
    assign cnt_inst = dispatch_i[0].is_cnt || dispatch_i[1].is_cnt;
    assign issue_double_en = !privilege_inst && !mem_inst && !data_relate_inst && !cnt_inst && (&inst_valid);
    //assign issue_double_en = 2'b00;

    assign issue_en = issue_double_en ? 2'b11 : (inst_valid[0] ? 2'b01 : (inst_valid[1] ? 2'b10: 2'b00));

    // signal assignment
    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign dispatch_o[id_idx].pc = dispatch_i[id_idx].pc;
            assign dispatch_o[id_idx].inst = dispatch_i[id_idx].inst;
            assign dispatch_o[id_idx].valid = dispatch_i[id_idx].valid;
            assign dispatch_o[id_idx].is_privilege = dispatch_i[id_idx].is_privilege;
            assign dispatch_o[id_idx].is_exception = {dispatch_i[id_idx].is_exception, 1'b0};
            assign dispatch_o[id_idx].exception_cause = {dispatch_i[id_idx].exception_cause, `EXCEPTION_NOP};
            assign dispatch_o[id_idx].aluop = dispatch_i[id_idx].aluop;
            assign dispatch_o[id_idx].alusel = dispatch_i[id_idx].alusel;
            assign dispatch_o[id_idx].reg_write_en = dispatch_i[id_idx].reg_write_en;
            assign dispatch_o[id_idx].reg_write_addr = dispatch_i[id_idx].reg_write_addr;
            assign dispatch_o[id_idx].csr_write_en = dispatch_i[id_idx].csr_write_en;
            assign dispatch_o[id_idx].csr_addr = dispatch_i[id_idx].csr_addr;
            assign dispatch_o[id_idx].pre_is_branch_taken = dispatch_i[id_idx].pre_is_branch_taken;
            assign dispatch_o[id_idx].pre_branch_addr = dispatch_i[id_idx].pre_branch_addr;
        end
    endgenerate

    // with regfile
    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            for (genvar reg_idx = 0; reg_idx < 2; reg_idx++) begin
                assign regfile_master.reg_read_en[id_idx][reg_idx] = dispatch_i[id_idx].reg_read_en[reg_idx];
                assign regfile_master.reg_read_addr[id_idx][reg_idx] = dispatch_i[id_idx].reg_read_addr[reg_idx];
            end
        end
    endgenerate

    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            for (genvar reg_idx = 0; reg_idx < 2; reg_idx++) begin
                always_comb begin
                    for (integer fw_idx = 0; fw_idx < ISSUE_WIDTH; fw_idx++) begin
                        if (dispatch_i[id_idx].reg_read_en[reg_idx]) begin
                            dispatch_o[id_idx].reg_data[reg_idx] = regfile_master.reg_read_data[id_idx][reg_idx];
                        end else begin
                            dispatch_o[id_idx].reg_data[reg_idx] = dispatch_i[id_idx].imm;
                        end
                    end

                    for (integer fw_idx = 0; fw_idx < ISSUE_WIDTH; fw_idx++) begin
                        if (dispatch_i[id_idx].reg_read_en[reg_idx] && wb_reg_pf[fw_idx].reg_write_en && (wb_reg_pf[fw_idx].reg_write_addr == dispatch_i[id_idx].reg_read_addr[reg_idx])) begin
                            dispatch_o[id_idx].reg_data[reg_idx] = wb_reg_pf[fw_idx].reg_write_data;
                        end
                    end

                    for (integer fw_idx = 0; fw_idx < ISSUE_WIDTH; fw_idx++) begin
                        if (dispatch_i[id_idx].reg_read_en[reg_idx] && mem_reg_pf[fw_idx].reg_write_en && (mem_reg_pf[fw_idx].reg_write_addr == dispatch_i[id_idx].reg_read_addr[reg_idx])) begin
                            dispatch_o[id_idx].reg_data[reg_idx] = mem_reg_pf[fw_idx].reg_write_data;
                        end
                    end

                    for (integer fw_idx = 0; fw_idx < ISSUE_WIDTH; fw_idx++) begin
                        if (dispatch_i[id_idx].reg_read_en[reg_idx] && ex_reg_pf[fw_idx].reg_write_en && (ex_reg_pf[fw_idx].reg_write_addr == dispatch_i[id_idx].reg_read_addr[reg_idx])) begin
                            dispatch_o[id_idx].reg_data[reg_idx] = ex_reg_pf[fw_idx].reg_write_data;
                        end
                    end

                    if (dispatch_i[id_idx].reg_read_en[reg_idx] && dispatch_i[id_idx].reg_read_addr[reg_idx] == 5'b0) begin
                        dispatch_o[id_idx].reg_data[reg_idx] = 32'b0;
                    end

                    if (dispatch_i[id_idx].aluop == `ALU_PCADDU12I && dispatch_i[id_idx].reg_read_en[reg_idx]) begin
                        dispatch_o[id_idx].reg_data[reg_idx] = dispatch_i[id_idx].pc;
                    end
                end
            end
        end
    endgenerate

    // with csr
    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign csr_master.csr_read_en[id_idx] = dispatch_i[id_idx].csr_read_en;
            assign csr_master.csr_read_addr[id_idx] = dispatch_i[id_idx].csr_addr;
        end
    endgenerate


    always_comb begin
        for (integer i = 0; i < 2; i++) begin
            if (dispatch_i[i].csr_read_en) begin
                dispatch_o[i].csr_read_data = csr_master.csr_read_data[i];
            end else begin
                dispatch_o[i].csr_read_data = 32'b0;
            end
        end
    end

    // handle load-use hazard
    logic load_pre;
    logic [DECODER_WIDTH - 1:0] reg1_load_relate;
    logic [DECODER_WIDTH - 1:0] reg2_load_relate;

    assign load_pre = (pre_ex_aluop[0] == `ALU_LDB) || (pre_ex_aluop[0] == `ALU_LDH) || (pre_ex_aluop[0] == `ALU_LDW) 
                    || (pre_ex_aluop[0] == `ALU_LDBU) || (pre_ex_aluop[0] == `ALU_LDHU) || (pre_ex_aluop[0] == `ALU_LLW)
                    || (pre_ex_aluop[0] == `ALU_SCW) || (pre_ex_aluop[1] == `ALU_LDB) || (pre_ex_aluop[1] == `ALU_LDH) 
                    || (pre_ex_aluop[1] == `ALU_LDW) || (pre_ex_aluop[1] == `ALU_LDBU) || (pre_ex_aluop[1] == `ALU_LDHU) 
                    || (pre_ex_aluop[1] == `ALU_LLW) || (pre_ex_aluop[1] == `ALU_SCW);;

    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign reg1_load_relate[id_idx] = (load_pre && (ex_reg_pf[0].reg_write_addr == dispatch_i[id_idx].reg_read_addr[0]) && dispatch_i[id_idx].reg_read_en[0]);
            assign reg2_load_relate[id_idx] = (load_pre && (ex_reg_pf[0].reg_write_addr == dispatch_i[id_idx].reg_read_addr[1]) && dispatch_i[id_idx].reg_read_en[1]);
        end
    endgenerate

    assign pause_dispatch = |(reg1_load_relate | reg2_load_relate);

    dispatch_ex_t [DECODER_WIDTH - 1:0] ex_temp;
    assign ex_temp[0] = issue_en[0] ? dispatch_o[0] : 0;
    assign ex_temp[1] = issue_en[1] ? dispatch_o[1] : 0;

    logic dispatch_ex_pause;
    assign dispatch_ex_pause = pause_dispatch && !pause_ex;
    // to ex
    always_ff @(posedge clk) begin
        if (rst || flush || dispatch_ex_pause) begin
            ex_i <= '{default: 0};
        end else if (!pause) begin
            ex_i <= ex_temp;
        end else begin
            ex_i <= ex_i;
        end
    end
    
endmodule
