`timescale 1ns / 1ps
`include "core_defines.sv"

module dispatch
    import pipeline_types::*;
(
    input logic clk,
    input logic rst,

    // from ctrl
    input logic pause,
    input logic flush,

    // from decoder
    input id_dispatch_t dispatch_i[DECODER_WIDTH],

    // from ex and mem
    input pipeline_push_forward_t ex_reg_pf [ISSUE_WIDTH],      
    input pipeline_push_forward_t mem_reg_pf[ISSUE_WIDTH],
    input pipeline_push_forward_t wb_reg_pf [ISSUE_WIDTH],

    // from ex
    input alu_op_t pre_ex_aluop,

    // with regfile
    dispatch_regfile regfile_master,

    // with csr
    dispatch_csr csr_master,

    // to ctrl
    output logic pause_dispatch,

    // to id
    output logic [DECODER_WIDTH - 1:0] invalid_en,

    // to ex
    output dispatch_ex_t ex_i[ISSUE_WIDTH]
);
    dispatch_ex_t dispatch_o[ISSUE_WIDTH];
    logic [ISSUE_WIDTH - 1:0] issue_en;

    // dispatch arbitration
    assign invalid_en = pause ? 2'b00 : issue_en;
    
    logic issue_double_en;

    logic privilege_inst;
    logic mem_inst;
    logic data_relate_inst;

    assign privilege_inst = dispatch_i[0].is_privilege || dispatch_i[1].is_privilege;
    assign mem_inst = dispatch_i[0].alusel == `ALU_SEL_LOAD_STORE || dispatch_i[1].alusel == `ALU_SEL_LOAD_STORE;
    assign data_relate_inst = dispatch_i[0].reg_write_en && (dispatch_i[0].reg_write_addr == dispatch_i[1].reg_read_addr[0] || dispatch_i[0].reg_write_addr == dispatch_i[1].reg_read_addr[1]);
    assign issue_double_en = !privilege_inst && !mem_inst && !data_relate_inst;

    assign issue_en = flush ? 2'b00: (issue_double_en? 2'b11: 2'b01);

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
            for (genvar reg_idx = id_idx; reg_idx < 2; reg_idx++) begin
                assign regfile_master.reg_read_en[id_idx][reg_idx] = dispatch_i[id_idx].reg_read_en[reg_idx];
                assign regfile_master.reg_read_addr[id_idx][reg_idx] = dispatch_i[id_idx].reg_read_addr[reg_idx];
            end
        end
    endgenerate

    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            for (genvar fw_idx = 0; fw_idx < ISSUE_WIDTH; fw_idx++) begin
                for (genvar reg_idx = 0; reg_idx < 2; reg_idx++) begin
                    assign dispatch_o[id_idx].reg_data[reg_idx] =  (wb_reg_pf[fw_idx].reg_write_en && (wb_reg_pf[fw_idx].reg_write_addr == regfile_master.reg_read_addr[reg_idx]))
                                                                        ? wb_reg_pf[fw_idx].reg_write_data:  
                                                                        (ex_reg_pf[fw_idx].reg_write_en && (ex_reg_pf[fw_idx].reg_write_addr == regfile_master.reg_read_addr[reg_idx])) 
                                                                        ? ex_reg_pf[fw_idx].reg_write_data: 
                                                                        ((mem_reg_pf[fw_idx].reg_write_en && (mem_reg_pf[fw_idx].reg_write_addr == regfile_master.reg_read_addr[reg_idx]))
                                                                        ? mem_reg_pf[fw_idx].reg_write_data: 
                                                                        ((dispatch_i[id_idx].reg_read_en[reg_idx])
                                                                        ? regfile_master.reg_read_data[id_idx][reg_idx]: dispatch_i[id_idx].imm));
                end

            end
        end
    endgenerate

    // with csr
    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign csr_master.csr_read_en[id_idx]   = dispatch_i[id_idx].csr_read_en;
            assign csr_master.csr_read_addr[id_idx] = dispatch_i[id_idx].csr_addr;
        end
    endgenerate

    generate
        for (genvar id_idx = 0; id_idx < DECODER_WIDTH; id_idx++) begin
            assign dispatch_o[id_idx].csr_read_data = csr_master.csr_read_data[id_idx];
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


    always_ff @( posedge clk ) begin
        if (rst || flush) begin
            ex_i <= '{default: 0};
        end else if (!pause) begin
            ex_i[0] <= issue_en[0] ? dispatch_o[0]: 0;
            ex_i[1] <= issue_en[1] ? dispatch_o[1]: 0;
        end else begin
            ex_i <= ex_i;
        end
    end
endmodule