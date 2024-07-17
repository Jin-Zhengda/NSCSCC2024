module axi_interface(
    input                   logic                   clk,
    input                   logic                   resetn,     // 低有效
    input                   logic                   flush,      // 给定值0，忽略该信号
    // input                   logic [5:0]             stall,
    // output                  logic                   stallreq, // Stall请求

    // Cache接口
    input                   logic                   cache_ce,   // axi_ce_o
    input                   logic                   cache_wen,  // axi_wen_o
    input                   logic                   cache_ren,  // axi_ren_o
    input wire [3:0]         cache_wsel,         // cache_wsel_i
    input   logic [31:0]      cache_raddr,       // axi_raddr_o
    input   logic [31:0]      cache_waddr,       // axi_waddr_o
    input   logic [31:0]     cache_wdata,        // axi_wdata_o
    input                   logic                   cache_rready, // Cache读准备好      axi_rready_o
    input                   logic                   cache_wvalid, // Cache写数据准备好  axi_wvalid_o
    input                   logic                   cache_wlast,  // Cache写最后一个数据 axi_wlast_o
    output                  logic                   wdata_resp_o, // 写响应信号，每个beat发一次，成功则可以传下一数据   wdata_resp_i

    // AXI接口
    input logic [1:0] cache_burst_type,  // 固定为增量突发（地址递增的突发），2'b01
    input logic [2:0] cache_burst_size,  // 固定为四个字节， 3'b010
    input   logic [7:0]      cacher_burst_length,       // 固定为8， 8'b00000111 axi_rlen_o   单位到底是transfer还是byte啊，注意这个点，我也不太确定，大概率是transfer
    input   logic [7:0]      cachew_burst_length,       // 固定为8， 8'b00000111 axi_wlen_o   A(W/R)LEN 表示传输的突发长度（burst length），其值为实际传输数据的数量减 1
                                                        // logic [1:0]   burst_type;            顶层模块直接给这两个值赋定值就行
                                                        // logic [2:0]    burst_size;
                                                        // assign burst_type = 2'b01;
                                                        // assign burst_size = 3'b010;
    // AXI读接口
    output logic [3:0] arid,
    output logic [31:0] araddr,
    output logic [7:0] arlen,
    output logic [2:0] arsize,
    output logic [1:0] arburst,
    output logic [1:0] arlock,
    output logic [3:0] arcache,
    output logic [2:0] arprot,
    output logic arvalid,
    input arready,
    // AXI读返回接口
    input logic [3:0] rid,
    input logic [31:0] rdata,
    input logic [1:0] rresp,
    input rlast,
    input rvalid,
    output logic rready,

    output logic [31:0] rdata_o,       // rdata_i
    output logic        rdata_valid_o, // rdata_valid_i

    // AXI写接口
    output logic [ 3:0] awid,
    output logic [31:0] awaddr,
    output logic [ 7:0] awlen,
    output logic [ 2:0] awsize,
    output logic [ 1:0] awburst,
    output logic [ 1:0] awlock,
    output logic [ 3:0] awcache,
    output logic [ 2:0] awprot,
    output logic        awvalid,
    input               awready,
    // AXI写数据接口
    output logic [ 3:0] wid,
    output logic [31:0] wdata,
    output logic [ 3:0] wstrb,
    output logic        wlast,
    output logic        wvalid,
    input               wready,
    // AXI写响应接口
    input  logic [ 3:0] bid,
    input  logic [ 1:0] bresp,
    input               bvalid,
    output              bready
);

    enum logic [2:0] {
        AXI_IDLE,
        ARREADY,
        RVALID,
        AWREADY,
        WREADY,
        BVALID
    }
        rcurrent_state, rnext_state, wcurrent_state, wnext_state;

    // AXI参数设置
    assign arid         = 4'b0000;
    assign arlock       = 1'b0;
    assign arprot       = 3'b000;
    assign awid         = 4'b0000;
    assign awlock       = 1'b0;
    assign awprot       = 3'b000;
    assign wid          = 4'b0000;
    assign bready       = 1'b1;

    // AXI写响应信号
    assign wdata_resp_o = (wcurrent_state == WREADY) ? wready : 1'b0;

    // 状态机
    always_ff @(posedge clk) begin
        if (resetn == 1'b0 || flush == 1'b1) begin
            rcurrent_state <= AXI_IDLE;
            wcurrent_state <= AXI_IDLE;
        end else begin
            rcurrent_state <= rnext_state;
            wcurrent_state <= wnext_state;
        end
    end

    // 读状态机
    always_comb begin
        case (rcurrent_state)
            AXI_IDLE: begin
                if (cache_ce && cache_ren && !(cache_raddr == awaddr && wnext_state != AXI_IDLE))
                    rnext_state = ARREADY;
                else rnext_state = AXI_IDLE;
            end
            ARREADY: begin
                if (arready) rnext_state = RVALID;
                else rnext_state = ARREADY;
            end
            RVALID: begin
                if (!rvalid && !rready && rdata_valid_o) rnext_state = AXI_IDLE;
                else rnext_state = RVALID;
            end
            default: rnext_state = AXI_IDLE;
        endcase
    end

    // 写状态机
    always_comb begin
        case (wcurrent_state)
            AXI_IDLE: begin
                if (cache_ce && cache_wen) wnext_state = AWREADY;
                else wnext_state = AXI_IDLE;
            end
            AWREADY: begin
                if (awready) wnext_state = WREADY;
                else wnext_state = AWREADY;
            end
            WREADY: begin
                if (wready && wlast) wnext_state = BVALID;
                else wnext_state = WREADY;
            end
            BVALID: begin
                if (bvalid) wnext_state = AXI_IDLE;
                else wnext_state = BVALID;
            end
            default: wnext_state = AXI_IDLE;
        endcase
    end

    // 输出控制
    always_ff @(posedge clk) begin
        if (resetn == 1'b0 || flush == 1'b1) begin
            araddr        <= 32'h00000000;
            arlen         <= 8'b0000;
            arsize        <= 3'b100;
            arburst       <= 2'b01;
            arcache       <= 4'b0000;
            arvalid       <= 1'b0;
            rready        <= 1'b0;
            rdata_o       <= 32'h00000000;
            rdata_valid_o <= 1'b0;
            awaddr        <= 32'h00000000;
            awlen         <= 8'b0000;
            awsize        <= 3'b100;
            awburst       <= 2'b01;
            awcache       <= 4'b0000;
            awvalid       <= 1'b0;
            wvalid        <= 1'b0;
            wdata         <= 32'h00000000;
            wstrb         <= 4'b1111;
            wlast         <= 1'b0;
        end else begin
            case (rcurrent_state)
                AXI_IDLE: begin
                    rready <= 1'b0;
                    rdata_o <= 32'h00000000;
                    rdata_valid_o <= 1'b0;
                    if (cache_ce && cache_ren && !(cache_raddr == awaddr && wnext_state != AXI_IDLE)) begin
                        arlen <= cacher_burst_length;
                        arsize <= cache_burst_size;     // 默认为4个字节，不用cache_rsel去选择了，注意看会不会出bug    
                        arburst <= cache_burst_type;
                        arcache <= 4'b0000;
                        arvalid <= 1'b1;
                        araddr <= cache_raddr;
                    end else begin
                        arvalid <= 1'b0;
                        araddr  <= 32'h00000000;
                        arlen   <= 8'b0000;
                        arburst <= 2'b01;
                        arcache <= 4'b0000;
                    end
                end
                ARREADY: begin
                    if (arready) begin
                        araddr  <= 32'h00000000;
                        arlen   <= 8'b0000;
                        arburst <= 2'b01;
                        arcache <= 4'b0000;
                        arvalid <= 1'b0;
                        rready  <= 1'b1;
                    end
                end
                RVALID: begin
                    rdata_valid_o <= rvalid;
                    if (rvalid && rlast) begin
                        rdata_o <= rdata;
                        rready  <= 1'b0;
                    end else if (rvalid) begin
                        rdata_o <= rdata;
                    end else if (!rvalid && !rready && rdata_valid_o) begin
                        wstrb  <= 4'b1111;
                        arsize <= 3'b010;
                    end
                end
                default: ;
            endcase

            case (wcurrent_state)
                AXI_IDLE: begin
                    if (cache_ce && cache_wen) begin
                        awlen <= cachew_burst_length;
                        if (cache_wsel == 4'b0001 || cache_wsel == 4'b0010 || 
                            cache_wsel == 4'b0100 || cache_wsel == 4'b1000) begin
                            awsize <= 3'b000;
                        end else if (cache_wsel == 4'b0011 || cache_wsel == 4'b1100) begin
                            awsize <= 3'b001;
                        end else begin
                            awsize <= cache_burst_size;         // 此阶段cache_wsel固定传为4'b1111，所以会固定的执行这条语句，即awsize的值会固定为3'b010，即四个字节
                        end
                        awburst <= cache_burst_type;
                        awcache <= 4'b0000;
                        awvalid <= 1'b1;
                        awaddr  <= cache_waddr;
                        wstrb   <= cache_wsel;
                        wlast   <= 1'b0;
                    end else begin
                        wvalid  <= 1'b0;
                        wdata   <= 32'h00000000;
                        wlast   <= 1'b0;
                        awaddr  <= 32'h00000000;
                        awlen   <= 8'b0000;
                        awburst <= 2'b01;
                        awcache <= 4'b0000;
                        awvalid <= 1'b0;
                    end
                end
                AWREADY: begin
                    if (awready) begin
                        awlen   <= 8'b0000;
                        awburst <= 2'b01;
                        awcache <= 4'b0000;
                        awvalid <= 1'b0;
                        wvalid  <= 1'b0;
                        wdata   <= cache_wdata;
                        wlast   <= cache_wlast;
                    end
                end
                WREADY: begin
                    if (wready && wlast && wvalid) begin
                        wvalid <= 1'b0;
                        wdata  <= cache_wdata;
                        wlast  <= 1'b0;
                    end else if (wdata_resp_o) begin
                        wvalid <= 1'b1;
                        wdata  <= cache_wdata;
                        wlast  <= cache_wlast;
                    end else begin
                        wvalid <= wvalid;//1'b0
                        wdata  <= wdata;//cache_wdata;
                        wlast  <= wlast;//cache_wlast;
                    end
                end
                BVALID: begin
                    wvalid <= 1'b0;
                    wlast  <= 1'b0;
                    wstrb  <= 4'b1111;
                    awsize <= 3'b010;
                    if (bvalid) begin
                        awaddr <= 32'h00000000;
                    end
                end
                default: ;
            endcase
        end
    end

endmodule

