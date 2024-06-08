`ifndef INTERFACE_SV
`define INTERFACE_SV
`timescale 1ns / 1ps

import pipeline_types::*;

interface mem_dcache;
    logic valid;  // 请求有效
    logic op;  // 操作类型，读-0，写-1
    // logic[2:0] size;           // 数据大小，3’b000——字节，3’b001——半字，3’b010——字
    bus32_t virtual_addr;  // 虚拟地址
    logic tlb_excp_cancel_req;
    logic [3:0] wstrb;  //写使能，1表示对应的8位数据需要写
    bus32_t wdata;  //需要写的数据

    logic addr_ok;              //该次请求的地址传输OK，读：地址被接收；写：地址和数据被接收
    logic data_ok;  //该次请求的数据传输OK，读：数据返回；写：数据写入完成
    bus32_t rdata;  //读DCache的结果
    logic cache_miss;  //cache未命中

    logic uncache_en;

    modport master(
        input addr_ok, data_ok, rdata, cache_miss,
        output valid, op, virtual_addr, tlb_excp_cancel_req, wstrb, wdata, uncache_en
    );

    modport slave(
        output addr_ok, data_ok, rdata, cache_miss,
        input valid, op, virtual_addr, tlb_excp_cancel_req, wstrb, wdata, uncache_en
    );
endinterface : mem_dcache

interface frontend_backend;
    ctrl_t ctrl;
    ctrl_pc_t ctrl_pc;
    logic send_inst_en;
    branch_info_t branch_info;
    inst_and_pc_t inst_and_pc_o;
    branch_update update_info;

    modport master(
        input ctrl, ctrl_pc, send_inst_en, update_info,
        output branch_info, inst_and_pc_o
    );

    modport slave(
        output ctrl, ctrl_pc, send_inst_en, update_info,
        input branch_info, inst_and_pc_o
    );
endinterface : frontend_backend

interface pc_icache;
    bus32_t pc;  // 读 icache 的地址
    logic inst_en;  // 读 icache 使能
    bus32_t inst;
    bus32_t inst_for_buffer;  // 读 icache 的结果，即给出的指令
    logic stall_for_buffer;
    bus32_t pc_for_bpu;
    bus32_t pc_for_buffer;
    logic front_is_valid;
    logic icache_is_valid;
    logic [5:0] front_is_exception;
    logic [5:0][6:0] front_exception_cause;
    logic [5:0] icache_is_exception;
    logic [5:0][6:0] icache_exception_cause;
    logic stall;

    logic front_fetch_inst_1_en;
    logic icache_fetch_inst_1_en;
    logic front_is_branch_i_1;
    logic front_pre_taken_or_not;
    bus32_t front_pre_branch_addr;
    logic icache_is_branch_i_1;
    logic icache_pre_taken_or_not;
    bus32_t icache_pre_branch_addr;

    logic uncache_en;

    modport master(
        input inst, stall, icache_is_valid,icache_is_exception,icache_exception_cause,pc_for_bpu, pc_for_buffer, 
                stall_for_buffer, inst_for_buffer, icache_fetch_inst_1_en, icache_is_branch_i_1, icache_pre_taken_or_not, 
                icache_pre_branch_addr,
        output pc, inst_en,front_is_valid,front_is_exception,front_exception_cause, front_fetch_inst_1_en, front_is_branch_i_1, 
                front_pre_taken_or_not, front_pre_branch_addr, uncache_en
    );

    modport slave(
        output inst, stall,icache_is_valid,icache_is_exception,icache_exception_cause,pc_for_bpu, pc_for_buffer, 
                stall_for_buffer, inst_for_buffer, icache_fetch_inst_1_en, icache_is_branch_i_1, icache_pre_taken_or_not, 
                icache_pre_branch_addr,
        input pc, inst_en,front_is_valid,front_is_exception,front_exception_cause, front_fetch_inst_1_en, front_is_branch_i_1, 
                front_pre_taken_or_not, front_pre_branch_addr, uncache_en
    );
endinterface : pc_icache

interface ex_tlb;
    // tlbsrch, tlbwr, tlbrd, tlbfill, invtlb 指令
    // tlbwr, tlbfill
    logic tlbwr_en;
    logic tlbfill_en;
    logic [4:0] rand_index;
    bus32_t tlbehi_in;
    bus32_t tlbelo0_in;
    bus32_t tlbelo1_in;
    bus32_t tlbidx_in;
    logic [5:0] ecode;

    // tlbsrch
    logic tlbsrch_en;
    bus32_t asid_in;

    // tlbrd
    logic tlbrd_en;
    bus32_t tlbehi_out;
    bus32_t tlbelo0_out;
    bus32_t tlbelo1_out;
    bus32_t tlbidx_out;
    bus32_t asid_out;

    // invtlb
    logic invtlb_en;
    logic [9:0] invtlb_asid;
    logic [18:0] invtlb_vpn;
    logic [4:0] invtlb_op;

    logic tlb_hit_valid;

    modport master(
        input tlbehi_out, tlbelo0_out, tlbelo1_out, tlbidx_out, asid_out, tlb_hit_valid,
        output tlbwr_en, tlbfill_en, rand_index, tlbehi_in, tlbelo0_in, tlbelo1_in, tlbidx_in, ecode,
                tlbsrch_en, asid_in, tlbrd_en, invtlb_en, invtlb_asid, invtlb_vpn, invtlb_op
    );

    modport slave(
        output tlbehi_out, tlbelo0_out, tlbelo1_out, tlbidx_out, asid_out, tlb_hit_valid,
        input tlbwr_en, tlbfill_en, rand_index, tlbehi_in, tlbelo0_in, tlbelo1_in, tlbidx_in, ecode,
                tlbsrch_en, asid_in, tlbrd_en, invtlb_en, invtlb_asid, invtlb_vpn, invtlb_op
    );

endinterface : ex_tlb

interface dispatch_regfile;
    logic [READ_PORTS-1:0] reg_read_en;
    logic [READ_PORTS-1:0][REG_ADDR_WIDTH-1:0] reg_read_addr;
    logic [READ_PORTS-1:0][REG_WIDTH-1:0] reg_read_data;

    modport master(input reg_read_data, output reg_read_en, reg_read_addr);

    modport slave(input reg_read_en, reg_read_addr, output reg_read_data);

endinterface : dispatch_regfile

interface dispatch_csr;
    logic [ISSUE_WIDTH-1:0] csr_read_en;
    logic [ISSUE_WIDTH-1:0][CSR_ADDR_WIDTH-1:0] csr_read_addr;
    logic [ISSUE_WIDTH-1:0][REG_WIDTH-1:0] csr_read_data;

    modport master(input csr_read_data, output csr_read_en, csr_read_addr);

    modport slave(input csr_read_en, csr_read_addr, output csr_read_data);
endinterface : dispatch_csr

interface ex_div;
    bus32_t dividend;
    bus32_t divisor;

    logic [1:0] op;
    logic start;

    logic is_running;
    bus32_t remainder_out;
    bus32_t quotient_out;
    logic done;

    modport master(
        input is_running, remainder_out, quotient_out, done,
        output dividend, divisor, op, start
    );

    modport slave(
        output is_running, remainder_out, quotient_out, done,
        input dividend, divisor, op, start
    );
    
endinterface : ex_div

interface mem_csr;
    bus32_t csr_read_data;
    logic csr_read_en;
    csr_addr_t csr_read_addr;

    modport master(input csr_read_data, output csr_read_en, output csr_read_addr);

    modport slave(output csr_read_data, input csr_read_en, input csr_read_addr);

endinterface : mem_csr

interface ctrl_csr;
    bus32_t eentry;
    bus32_t era;
    bus32_t ecfg;
    bus32_t estat;
    bus32_t crmd;

    logic is_exception;
    bus32_t exception_pc;
    bus32_t exception_addr;
    logic [5:0] ecode;
    logic [8:0] esubcode;
    exception_cause_t exception_cause;

    modport master(
        input eentry, era, ecfg, estat, crmd,
        output is_exception, exception_pc, exception_addr, ecode, esubcode, exception_cause
    );

    modport slave(
        output eentry, era, ecfg, estat, crmd,
        input is_exception, exception_pc, exception_addr, ecode, esubcode, exception_cause
    );
endinterface : ctrl_csr

interface icache_mem;
    logic rd_req, ret_valid;
    bus32_t  rd_addr;
    bus256_t ret_data;
    modport master(input ret_valid, ret_data, output rd_req, rd_addr);
    modport slave(input rd_req, rd_addr, output ret_valid, ret_data);
endinterface  //icache_mem

`endif
