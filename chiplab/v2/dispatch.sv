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

    input csr_push_forward_t ex_csr_pf,
    input csr_push_forward_t mem_csr_pf,
    input csr_push_forward_t wb_csr_pf,

    // from ex
    input alu_op_t pre_ex_aluop,
    input logic pause_ex,

    // with regfile
    dispatch_regfile regfile_master,

    // with csr
    dispatch_csr csr_master,

    // to ctrl
    output logic pause_dispatch,

    // to id
    output logic [  ISSUE_WIDTH - 1:0] dqueue_en,
    output logic [DECODER_WIDTH - 1:0] invalid_en,

    // to ex
    output dispatch_ex_t [DECODER_WIDTH - 1:0] ex_i
);
    dispatch_ex_t [DECODER_WIDTH - 1:0] dispatch_o;
    logic [ISSUE_WIDTH - 1:0] issue_en;

    // dispatch arbitration
    assign dqueue_en  = (rst || flush) ? 2'b00 : 2'b11;
    assign invalid_en = (rst || pause) ? 2'b00 : issue_en;

    logic [1:0] inst_valid;
    assign inst_valid = {dispatch_i[1].pc != 32'b0, dispatch_i[0].pc != 32'b0};

    bus32_t pc1_i;
    bus32_t pc2_i;

    assign pc1_i = dispatch_i[0].pc;
    assign pc2_i = dispatch_i[1].pc;

    bus32_t pc1_o;
    bus32_t pc2_o;

    assign pc1_o = ex_i[0].pc;
    assign pc2_o = ex_i[1].pc;

    logic issue_double_en;

    logic privilege_inst;
    logic mem_inst;
    logic data_relate_inst;
    logic cnt_inst;

    logic inst1_relate;
    logic inst2_relate;

    assign privilege_inst = dispatch_i[0].is_privilege || dispatch_i[1].is_privilege;
    assign mem_inst = dispatch_i[0].alusel == `ALU_SEL_LOAD_STORE || dispatch_i[1].alusel == `ALU_SEL_LOAD_STORE;

    assign inst1_relate = (dispatch_i[0].reg_write_en && dispatch_i[0].reg_write_addr != 5'b0) 
                            && ((dispatch_i[0].reg_write_addr == dispatch_i[1].reg_read_addr[0] && dispatch_i[1].reg_read_en[0]) 
                            || (dispatch_i[0].reg_write_addr == dispatch_i[1].reg_read_addr[1] && dispatch_i[1].reg_read_en[1]));
    assign inst2_relate = (dispatch_i[1].reg_write_en && dispatch_i[1].reg_write_addr != 5'b0) 
                            && ((dispatch_i[1].reg_write_addr == dispatch_i[0].reg_read_addr[0] && dispatch_i[0].reg_read_en[0]) 
                            || (dispatch_i[1].reg_write_addr == dispatch_i[0].reg_read_addr[1] && dispatch_i[0].reg_read_en[1]));
    assign data_relate_inst = inst1_relate;
    assign cnt_inst = dispatch_i[0].is_cnt || dispatch_i[1].is_cnt;
    assign issue_double_en = !privilege_inst && !mem_inst && !data_relate_inst && !cnt_inst && (&inst_valid);
    //assign issue_double_en = 2'b0;

    always_comb begin
        if (flush || rst || !(|inst_valid)) begin
            issue_en = 2'b00;
        end else if (issue_double_en) begin
            issue_en = 2'b11;
        end else if (inst_valid[0]) begin
            issue_en = 2'b01;
        end else begin
            issue_en = 2'b10;
        end
    end

    // signal assignment
    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign dispatch_o[id_idx].pc = dispatch_i[id_idx].pc;
            assign dispatch_o[id_idx].inst = dispatch_i[id_idx].inst;
            assign dispatch_o[id_idx].inst_valid = dispatch_i[id_idx].inst_valid;
            assign dispatch_o[id_idx].is_privilege = dispatch_i[id_idx].is_privilege;
            assign dispatch_o[id_idx].cacop_code = dispatch_i[id_idx].cacop_code;
            assign dispatch_o[id_idx].is_exception = dispatch_i[id_idx].is_exception;
            assign dispatch_o[id_idx].exception_cause = dispatch_i[id_idx].exception_cause;
            assign dispatch_o[id_idx].aluop = dispatch_i[id_idx].aluop;
            assign dispatch_o[id_idx].alusel = dispatch_i[id_idx].alusel;
            assign dispatch_o[id_idx].reg_write_en = dispatch_i[id_idx].reg_write_en;
            assign dispatch_o[id_idx].reg_write_addr = dispatch_i[id_idx].reg_write_addr;
            assign dispatch_o[id_idx].csr_write_en = dispatch_i[id_idx].csr_write_en;
            assign dispatch_o[id_idx].csr_addr = dispatch_i[id_idx].csr_addr;
            assign dispatch_o[id_idx].pre_is_branch = dispatch_i[id_idx].pre_is_branch;
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

    bus32_t imm;
    assign imm = dispatch_i[1].imm;

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

                    for (integer fw_idx = 0; fw_idx < ISSUE_WIDTH; fw_idx++) begin
                        if (dispatch_i[id_idx].reg_read_en[reg_idx] && dispatch_i[id_idx].reg_read_addr[reg_idx] == 5'b0) begin
                            dispatch_o[id_idx].reg_data[reg_idx] = 32'b0;
                        end
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

    logic ticlr_write_en;
    assign ticlr_write_en = (ex_csr_pf.csr_write_en && (ex_csr_pf.csr_write_addr == `CSR_TICLR) && (ex_csr_pf.csr_write_data[0] == 1'b1))
                            || (mem_csr_pf.csr_write_en && (mem_csr_pf.csr_write_addr == `CSR_TICLR) && (mem_csr_pf.csr_write_data[0] == 1'b1))
                            || (wb_csr_pf.csr_write_en && (wb_csr_pf.csr_write_addr == `CSR_TICLR) && (wb_csr_pf.csr_write_data[0] == 1'b1));
    bus32_t[1:0] csr_read_data;
    always_comb begin
        for (integer i = 0; i < 2; i++) begin
            if (dispatch_i[i].csr_read_en && ex_csr_pf.csr_write_en && (ex_csr_pf.csr_write_addr == dispatch_i[i].csr_addr)) begin
                csr_read_data[i] = ex_csr_pf.csr_write_data;
            end else if (dispatch_i[i].csr_read_en && mem_csr_pf.csr_write_en && (mem_csr_pf.csr_write_addr == dispatch_i[i].csr_addr)) begin
                csr_read_data[i] = mem_csr_pf.csr_write_data;
            end else if (dispatch_i[i].csr_read_en && wb_csr_pf.csr_write_en && (wb_csr_pf.csr_write_addr == dispatch_i[i].csr_addr)) begin
                csr_read_data[i] = wb_csr_pf.csr_write_data;
            end else if (dispatch_i[i].csr_read_en) begin
                csr_read_data[i] = csr_master.csr_read_data[i];
            end else begin
                csr_read_data[i] = 32'b0;
            end
        end
    end

    generate
        for (genvar i = 0; i < 2; i++) begin
            assign dispatch_o[i].csr_read_data = (ticlr_write_en && dispatch_i[i].csr_read_en && (dispatch_i[i].csr_addr == `CSR_ESTAT) ?
                                                    {csr_read_data[i][31: 12], 1'b0, csr_read_data[i][10:0]} : csr_read_data[i]);
        end
    endgenerate

    // handle load-use hazard
    logic load_pre;
    logic [DECODER_WIDTH - 1:0] reg1_load_relate;
    logic [DECODER_WIDTH - 1:0] reg2_load_relate;

    assign load_pre = (pre_ex_aluop == `ALU_LDB) || (pre_ex_aluop == `ALU_LDH) || (pre_ex_aluop == `ALU_LDW) 
                    || (pre_ex_aluop == `ALU_LDBU) || (pre_ex_aluop == `ALU_LDHU) || (pre_ex_aluop == `ALU_LLW)
                    || (pre_ex_aluop == `ALU_SCW);

    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign reg1_load_relate[id_idx] = (load_pre && (ex_reg_pf[0].reg_write_addr == dispatch_i[id_idx].reg_read_addr[0]) && dispatch_i[id_idx].reg_read_en[0]);
            assign reg2_load_relate[id_idx] = (load_pre && (ex_reg_pf[0].reg_write_addr == dispatch_i[id_idx].reg_read_addr[1]) && dispatch_i[id_idx].reg_read_en[1]);
        end
    endgenerate

    // pause request
    assign pause_dispatch = |(reg1_load_relate | reg2_load_relate);


    // to ex
    always_ff @(posedge clk) begin
        if (rst || flush || (pause_dispatch && !pause_ex)) begin
            ex_i <= '{default: 0};
        end else if (!pause) begin
            ex_i[0] <= issue_en[0] ? dispatch_o[0] : 0;
            ex_i[1] <= issue_en[1] ? dispatch_o[1] : 0;
        end else begin
            ex_i <= ex_i;
        end
    end
    
endmodule
