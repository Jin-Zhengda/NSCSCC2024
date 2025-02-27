`ifndef INTERFACE_SV
`define INTERFACE_SV
`timescale 1ns / 1ps
`include "pipeline_types.sv"

import pipeline_types::*;

interface mem_dcache;
    logic valid;  // 请求有效
    logic op;  // 操作类型，读-0，写-1
    // logic[2:0] size;           // 数据大小，3’b000——字节，3’b001——半字，3’b010——字
    bus32_t virtual_addr;  // 虚拟地址
    bus32_t physical_addr;
    logic [3:0] wstrb;  //写使能，1表示对应的8位数据需要写
    bus32_t wdata;  //需要写的数据

    logic addr_ok;              //该次请求的地址传输OK，读：地址被接收；写：地址和数据被接收
    logic data_ok;  //该次请求的数据传输OK，读：数据返回；写：数据写入完成
    bus32_t rdata;  //读DCache的结果

    modport master(
        input addr_ok, data_ok, rdata, physical_addr,
        output valid, op, virtual_addr, wstrb, wdata
    );

    modport slave(
        output addr_ok, data_ok, rdata, physical_addr,
        input valid, op, virtual_addr, wstrb, wdata
    );
endinterface : mem_dcache

interface frontend_backend;
    logic [1:0] flush;
    logic [1:0] pause;
    logic is_interrupt;
    logic [31:0] new_pc;
    logic [1:0] send_inst_en;
    branch_info_t [1:0] branch_info;
    inst_and_pc_t inst_and_pc_o;
    branch_update update_info;

    modport master(
        input flush, pause, is_interrupt, new_pc, send_inst_en, update_info,
        output branch_info, inst_and_pc_o
    );

    modport slave(
        output flush, pause, is_interrupt, new_pc, send_inst_en, update_info,
        input branch_info, inst_and_pc_o
    );
endinterface : frontend_backend

interface pc_icache;
    bus32_t pc;  // 读 icache 的地址
    logic [1:0] inst_en;  // 读 icache 使能
    bus32_t [1:0] inst_for_buffer;  // 读 icache 的结果，即给出的指令
    logic stall_for_buffer;
    bus32_t [1:0] pc_for_buffer;
    logic front_is_exception;
    logic [6:0] front_exception_cause;
    logic [1:0] icache_is_exception;
    logic [1:0][6:0] icache_exception_cause;

    logic [1:0] front_fetch_inst_en;
    logic [1:0] icache_fetch_inst_en;
    logic stall;

    modport master(
        input icache_is_exception,icache_exception_cause,pc_for_buffer, 
                stall_for_buffer, inst_for_buffer, icache_fetch_inst_en, stall,
        output pc, inst_en, front_is_exception, front_exception_cause, front_fetch_inst_en
    );

    modport slave(
        output icache_is_exception,icache_exception_cause,pc_for_buffer, 
                stall_for_buffer, inst_for_buffer, icache_fetch_inst_en, stall,
        input pc, inst_en, front_is_exception, front_exception_cause, front_fetch_inst_en
    );
endinterface : pc_icache

interface dispatch_regfile;
    logic [1:0] reg_read_en[2];
    logic [1:0][REG_ADDR_WIDTH-1:0] reg_read_addr[2];
    logic [1:0][REG_WIDTH-1:0] reg_read_data[2];

    modport master(input reg_read_data, output reg_read_en, reg_read_addr);

    modport slave(input reg_read_en, reg_read_addr, output reg_read_data);

endinterface : dispatch_regfile

interface dispatch_csr;
    logic csr_read_en[2];
    csr_addr_t csr_read_addr[2];
    bus32_t csr_read_data[2];

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

interface ctrl_csr;
    bus32_t eentry;
    bus32_t era;
    bus32_t crmd;
    // bus32_t ecfg;
    // bus32_t estat;
    bus32_t tlbrentry;

    logic is_exception;
    bus32_t exception_pc;
    bus32_t exception_addr;
    logic [5:0] ecode;
    logic [8:0] esubcode;
    exception_cause_t exception_cause;
    logic is_ertn;
    logic is_tlb_exception;
    logic is_inst_tlb_exception;
    logic is_interrupt;

    modport master(
        input eentry, era, crmd, tlbrentry, is_interrupt,
        output is_exception, exception_pc, exception_addr, ecode, esubcode, exception_cause, is_ertn, is_tlb_exception,is_inst_tlb_exception
    );

    modport slave(
        output eentry, era, crmd, tlbrentry, is_interrupt,
        input is_exception, exception_pc, exception_addr, ecode, esubcode, exception_cause, is_tlb_exception, is_ertn,is_inst_tlb_exception
    );
endinterface : ctrl_csr


interface ex_tlb;
    //TLBFILL和TLBWR指令
    logic             tlbfill_en;  //TLBFILL指令的使能信号
    logic [ 4:0]      rand_index;  //TLBFILL指令的index
    logic             tlbwr_en;  //TLBWR指令的使能信号

    //TLBSRCH指令
    logic             tlbsrch_en;  //TLBSRCH指令使能信号

    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    //默认read
    logic             tlbrd_en;  //TLBRD指令的使能信号

    //invtlb ——用于实现无效tlb的指令
    logic             invtlb_en;  //使能
    logic [ 9:0]      invtlb_asid;  //asid
    logic [18:0]      invtlb_vpn;  //vpn
    logic [ 4:0]      invtlb_op;  //op


    //TLBSRCH指令
    logic             search_tlb_found;  //TLBSRCH命中
    logic [ 4:0]      search_tlb_index;  //TLBSRCH所需返回的index信号

    //TLBRD指令（输入的信号复用tlbidx_in），下一周期开始返回读取的结果
    logic [31:0]      tlbehi_out;  //{r_vppn, 13'b0}
    logic [31:0]      tlbelo0_out;  //{4'b0, ppn0, 1'b0, g, mat0, plv0, d0, v0}
    logic [31:0]      tlbelo1_out;  //{4'b0, ppn1, 1'b0, g, mat1, plv1, d1, v1}
    logic [31:0]      tlbidx_out;  //只有[29:24]为ps信号，其他位均为0
    logic [ 9:0]      asid_out;  //读出的asid

    //返回信号
    logic             tlbsrch_ret;
    logic             tlbrd_ret;
    logic             tlbrd_valid;



    //例外
    logic [ 1:0]      tlb_inst_exception;
    logic [ 1:0][6:0] tlb_inst_exception_cause;
    logic             tlb_data_exception;
    logic [ 6:0]      tlb_data_exception_cause;



    modport master(  //ex
        input tlb_inst_exception,tlb_inst_exception_cause,tlb_data_exception,tlb_data_exception_cause,
                search_tlb_found,search_tlb_index,tlbehi_out,tlbelo0_out,tlbelo1_out,tlbidx_out,asid_out,tlbsrch_ret,tlbrd_ret,
                tlbrd_valid,
        output tlbfill_en,tlbwr_en,tlbsrch_en,tlbrd_en,invtlb_en,invtlb_asid,invtlb_vpn,invtlb_op,rand_index
    );
    modport slave(  //tlb
        input tlbfill_en,tlbwr_en,tlbsrch_en,tlbrd_en,invtlb_en,invtlb_asid,invtlb_vpn,invtlb_op,rand_index,
        output tlb_inst_exception,tlb_inst_exception_cause,tlb_data_exception,tlb_data_exception_cause,
                search_tlb_found,search_tlb_index,tlbehi_out,tlbelo0_out,tlbelo1_out,tlbidx_out,asid_out,tlbsrch_ret,tlbrd_ret,
                tlbrd_valid
    );
endinterface  //ex_tlb


interface csr_tlb;
    logic [31:0] tlbidx;  //7.5.1TLB索引寄存器，包含[4:0]为index,[29:24]为PS，[31]为NE
    logic [31:0] tlbehi;  //7.5.2TLB表项高位，包含[31:13]为VPPN
    logic [31:0] tlbelo0, tlbelo1;  //7.5.3TLB表项低位，包含写入TLB表项的内容
    logic [9:0] asid;  //7.5.4ASID的低9位
    //TLBFILL和TLBWR指令

    logic [5:0]            ecode           ;//7.5.1对于NE变量的描述中讲到，CSR.ESTAT.Ecode   (大概使能信号，若为111111则写使能，否则根据tlbindex_in.NE判断是否写使能？



    //CSR信号
    logic [31:0]           csr_dmw0           ;//dmw0，有效位是[27:25]，可能会作为最后转换出来的地址的最高三位
    logic [31:0]           csr_dmw1           ;//dmw1，有效位是[27:25]，可能会作为最后转换出来的地址的最高三位
    logic csr_da;
    logic csr_pg;
    logic [1:0] csr_plv;
    logic [1:0] csr_datf;
    logic [1:0] csr_datm;



    modport master(  //csr
        output tlbidx,tlbehi,tlbelo0,tlbelo1,asid,ecode,
                csr_dmw0,csr_dmw1,csr_da,csr_pg,csr_plv,csr_datf,csr_datm
    );
    modport slave(  //tlb
        input tlbidx,tlbehi,tlbelo0,tlbelo1,asid,ecode,
                csr_dmw0,csr_dmw1,csr_da,csr_pg,csr_plv,csr_datf,csr_datm
    );

endinterface  //csr_tlb



interface icache_mem;
    logic rd_req, ret_valid;
    bus32_t  rd_addr;
    bus256_t ret_data;
    modport master(input ret_valid, ret_data, output rd_req, rd_addr);
    modport slave(input rd_req, rd_addr, output ret_valid, ret_data);
endinterface  //icache_mem


interface icache_transaddr;
    logic                   inst_fetch;    //指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic [31:0] inst_vaddr_a;  //虚拟地址pc
    logic [31:0] inst_vaddr_b;
    logic [31:0] ret_inst_paddr_a;  //物理地址pc
    logic [31:0] ret_inst_paddr_b;  //pc+4
    logic tlb_exception;
    logic uncache;
    logic [19:0] inst_tag_a;
    logic [19:0] inst_tag_b;

    modport master(//icache
        input ret_inst_paddr_a, ret_inst_paddr_b, tlb_exception, uncache, inst_tag_a, inst_tag_b,
        output inst_fetch, inst_vaddr_a, inst_vaddr_b
    );

    modport slave(
        output ret_inst_paddr_a, ret_inst_paddr_b, tlb_exception, uncache, inst_tag_a, inst_tag_b,
        input inst_fetch, inst_vaddr_a, inst_vaddr_b
    );
endinterface : icache_transaddr

interface dcache_transaddr;
    logic                   data_fetch;    //指令地址转换信息有效的信号assign fetch_en  = inst_valid && inst_addr_ok;
    logic [31:0] data_vaddr;  //虚拟地址
    logic [31:0] ret_data_paddr;  //物理地址
    logic                   cacop_op_mode_di;//assign cacop_op_mode_di = ms_cacop && ((cacop_op_mode == 2'b0) || (cacop_op_mode == 2'b1));
    logic store;  //当前为store操作
    logic tlb_exception;
    logic uncache;

    modport master(  //dcache
        input ret_data_paddr, tlb_exception, uncache,
        output data_fetch, data_vaddr, cacop_op_mode_di, store
    );

    modport slave(
        output ret_data_paddr, tlb_exception, uncache,
        input data_fetch, data_vaddr, cacop_op_mode_di, store
    );
endinterface : dcache_transaddr

interface transaddr_tlb;
    logic tlb_ret_inst_a, tlb_ret_inst_b, tlb_ret_data;
    logic [5:0] s0_ps_a, s0_ps_b, s1_ps;
    logic [19:0] s0_ppn_a, s0_ppn_b, s1_ppn;
    logic [1:0] mat_inst_a, mat_inst_b, mat_data;
    logic s0_fetch_a, s0_fetch_b, s1_fetch;
    logic [18:0] s0_vppn_a, s0_vppn_b, s1_vppn;
    logic s0_odd_page_a, s0_odd_page_b, s1_odd_page;
    logic   inst_tlb_found_a, inst_tlb_v_a, inst_tlb_plv_a, 
            inst_tlb_found_b, inst_tlb_v_b, inst_tlb_plv_b,
            data_tlb_found  , data_tlb_v  , data_tlb_plv  ,data_tlb_d,
            r_e;
    modport master (//transaddr
        input tlb_ret_inst_a, tlb_ret_inst_b, tlb_ret_data, s0_ps_a, s0_ps_b, s1_ps, s0_ppn_a, s0_ppn_b,
                s1_ppn, mat_inst_a, mat_inst_b, mat_data,inst_tlb_found_a, inst_tlb_v_a, inst_tlb_plv_a, 
                inst_tlb_found_b, inst_tlb_v_b, inst_tlb_plv_b,data_tlb_found  , data_tlb_v  , data_tlb_plv  ,data_tlb_d, r_e,
        output s0_fetch_a, s0_fetch_b, s1_fetch, s0_vppn_a, s0_vppn_b, s1_vppn, s0_odd_page_a, s0_odd_page_b, s1_odd_page
    );
    modport slave (//tlb
        input s0_fetch_a, s0_fetch_b, s1_fetch, s0_vppn_a, s0_vppn_b, s1_vppn, s0_odd_page_a, s0_odd_page_b, s1_odd_page,
        output tlb_ret_inst_a, tlb_ret_inst_b, tlb_ret_data, s0_ps_a, s0_ps_b, s1_ps, s0_ppn_a, s0_ppn_b,
                s1_ppn, mat_inst_a, mat_inst_b, mat_data,inst_tlb_found_a, inst_tlb_v_a, inst_tlb_plv_a, 
                inst_tlb_found_b, inst_tlb_v_b, inst_tlb_plv_b,data_tlb_found  , data_tlb_v  , data_tlb_plv  ,data_tlb_d, r_e
    );
endinterface //transaddr_tlb
`endif
