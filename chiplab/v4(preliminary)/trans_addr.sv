//DMW
`define PLV0      0
`define PLV3      3 
`define DMW_MAT   5:4
`define PSEG      27:25
`define VSEG      31:29

module trans_addr
#(
    parameter TLBNUM = 32
)
(
    input                  clk                  ,
    input                  rst                  ,

    icache_transaddr       icache2transaddr     ,
    dcache_transaddr       dcache2transaddr     ,

    csr_tlb                csr2tlb              , 

    output                 iuncache
);

logic pg_mode;
logic da_mode;

logic data_dmw0_en,data_dmw1_en;
assign data_dmw0_en = ((csr2tlb.csr_dmw0[`PLV0] & csr2tlb.csr_plv == 2'd0) | (csr2tlb.csr_dmw0[`PLV3] & csr2tlb.csr_plv == 2'd3)) & (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw0[`VSEG]) & pg_mode;
assign data_dmw1_en = ((csr2tlb.csr_dmw1[`PLV0] & csr2tlb.csr_plv == 2'd0) | (csr2tlb.csr_dmw1[`PLV3] & csr2tlb.csr_plv == 2'd3)) & (dcache2transaddr.data_vaddr[31:29] == csr2tlb.csr_dmw1[`VSEG]) & pg_mode;


//存一拍信�?
reg  [31:0] inst_vaddr_buffer_a  ;//存储�?要转换的虚拟指令地址
reg  [31:0] inst_vaddr_buffer_b  ;
reg  [31:0] data_vaddr_buffer  ;//存储�?要转换的虚拟数据地址

always @(posedge clk) begin
    inst_vaddr_buffer_a <= icache2transaddr.inst_vaddr_a;
    inst_vaddr_buffer_b <= icache2transaddr.inst_vaddr_b;
    data_vaddr_buffer <= dcache2transaddr.data_vaddr;
end

// //转换出来的物理地�?
wire [31:0] data_paddr;//数据地址转换结果的物理地�?


assign pg_mode = !csr2tlb.csr_da &&  csr2tlb.csr_pg;//地址翻译模式为分页模�?
assign da_mode =  csr2tlb.csr_da && !csr2tlb.csr_pg;

logic [4:0] data_offset;
logic [6:0] data_index;
logic [19:0] data_tag;

//数据的物理地�?
assign data_paddr = (pg_mode & data_dmw0_en & !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw0[`PSEG], dcache2transaddr.data_vaddr[28:0]} : 
                    (pg_mode & data_dmw1_en & !dcache2transaddr.cacop_op_mode_di) ? {csr2tlb.csr_dmw1[`PSEG], dcache2transaddr.data_vaddr[28:0]} : dcache2transaddr.data_vaddr;

assign data_offset = dcache2transaddr.data_vaddr[4:0];
assign data_index  = dcache2transaddr.data_vaddr[11:5];
assign data_tag    = data_paddr[31:12];

always_ff @( posedge clk) begin
    dcache2transaddr.ret_data_paddr <= {data_tag,data_index,data_offset};
end
assign icache2transaddr.ret_inst_paddr_a=inst_vaddr_buffer_a;
assign icache2transaddr.ret_inst_paddr_b=inst_vaddr_buffer_b;

assign icache2transaddr.uncache = 0;
assign iuncache = icache2transaddr.uncache;

always_ff @( posedge clk ) begin
    if(dcache2transaddr.data_vaddr[31:16]==16'hbfaf)dcache2transaddr.uncache<=1'b1;
    else dcache2transaddr.uncache<=1'b0;
end
endmodule