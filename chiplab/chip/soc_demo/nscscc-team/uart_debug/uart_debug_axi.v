// 串口下载使用的axi读写
module uart_debug_axi(

    input           clk,
    input           rst_n,

    //uart debug req 信号
    input           uart_debug_req,
    input           uart_debug_we,
    input    [31:0] uart_debug_addr,
    input    [31:0] uart_debug_wdata,

    //uart debug response 信号
    output reg         store_finish,
    output reg         load_finish,

    //AXI interface 
    //Read address channel
    output      [ 3:0] arid,
    output reg  [31:0] araddr,
    output      [ 3:0] arlen,
    output      [ 2:0] arsize,
    output      [ 1:0] arburst,
    output      [ 1:0] arlock,
    output      [ 3:0] arcache,
    output      [ 2:0] arprot,
    output reg         arvalid,
    input              arready,
    //Read data channel
    input    [ 3:0] rid,
    input    [31:0] rdata,
    input    [ 1:0] rresp,
    input           rlast,
    input           rvalid,
    output          rready,
    //Write address channel
    output   [ 3:0] awid,
    output reg      [31:0] awaddr,
    output   [ 3:0] awlen,
    output   [ 2:0] awsize,
    output   [ 1:0] awburst,
    output   [ 1:0] awlock,
    output   [ 3:0] awcache,
    output   [ 2:0] awprot,
    output reg         awvalid,
    input           awready,
    //Write data channel
    output   [ 3:0] wid,
    output reg  [31:0] wdata,
    output   [ 3:0] wstrb,
    output reg         wlast,
    output reg         wvalid,
    input           wready,
    //Write response channel
    input    [ 3:0] bid,
    input    [ 1:0] bresp,
    input           bvalid,
    output          bready

    );

    reg    [31:0] uart_debug_addr_r;
    reg    [31:0] uart_debug_wdata_r;
    wire urat_debug_wreq;
    wire urat_debug_rreq;

    // 状态
    localparam S_IDLE       = 3'h0;
    localparam S_STORE_ADDR = 3'h1;
    localparam S_STORE_DATA = 3'h2;
    localparam S_STORE_RES  = 3'h3;
    localparam S_LOAD_ADDR  = 3'h4;
    localparam S_LOAD_DATA  = 3'h5;

    reg[2:0] state;
    reg[2:0] next_state;

/***********************BEGIN of 状态机********************************/
    always @(posedge clk or negedge rst_n) begin
        if(~rst_n)
            state <= S_IDLE;
        else begin
            state <= next_state;
        end
    end

    //状态跳转控制
    always @(*) begin
        case(state)
            S_IDLE : begin
                if(urat_debug_wreq)
                    next_state = S_STORE_ADDR;
                else if(urat_debug_rreq)
                    next_state = S_LOAD_ADDR;
                else
                    next_state = S_IDLE;
            end
            S_STORE_ADDR : begin
                if(awready)
                    next_state = S_STORE_DATA;
                else
                    next_state = S_STORE_ADDR;
            end
            S_STORE_DATA : begin
                if(wready)
                    next_state = S_STORE_RES;
                else
                    next_state = S_STORE_DATA;
            end
            S_STORE_RES : begin
                if((bid == 4'h2)&(bresp == 2'h0)&(bvalid))
                    next_state = S_IDLE;
                else
                    next_state = S_STORE_RES;
            end
            S_LOAD_ADDR : begin
                if(arready)
                    next_state = S_LOAD_DATA;
                else
                    next_state = S_LOAD_ADDR;
            end
            S_LOAD_DATA : begin
                if((rid == 4'h2)&(rresp == 2'h0)&(rlast == 1'h1)&(rvalid == 1'h1))
                    next_state = S_IDLE;
                else
                    next_state = S_LOAD_DATA;
            end
            default     :begin
                next_state = S_IDLE;
            end
        endcase
    end

    //AXI访存输出控制
    assign arid         = 4'h2;
    assign arlen        = 4'h0;
    assign arsize       = 3'h2;
    assign arburst      = 2'h1;
    assign arlock       = 2'h0;
    assign arcache      = 4'h0;
    assign arprot       = 3'h0;
    assign rready       = 1'h1;
    assign awid         = 4'h2;
    assign awlen        = 4'h0;
    assign awsize       = 3'h2;
    assign awburst      = 2'h1;
    assign awlock       = 2'h0;
    assign awcache      = 4'h0;
    assign awprot       = 3'h0;
    assign wid          = 4'h2;
    assign wstrb        = 4'hf;
    assign bready       = 1'h1;    

    always @(*) begin
        case(state)
            S_IDLE : begin
                araddr          = 32'h0;
                arvalid         = 1'h0;
                awaddr          = 32'h0;
                awvalid         = 1'h0;
                wdata           = 32'h0;
                wlast           = 1'h0;
                wvalid          = 1'h0;
                store_finish    = 1'h0;
                load_finish     = 1'h0;
            end
            S_STORE_ADDR : begin
                araddr          = 32'h0;
                arvalid         = 1'h0;
                awaddr          = uart_debug_addr_r;
                awvalid         = 1'h1;
                wdata           = 32'h0;
                wlast           = 1'h0;
                wvalid          = 1'h0;
                store_finish    = 1'h0;
                load_finish     = 1'h0;
            end
            S_STORE_DATA : begin
                araddr          = 32'h0;
                arvalid         = 1'h0;
                awaddr          = 32'h0;
                awvalid         = 1'h0;
                wdata           = uart_debug_wdata_r;
                wlast           = 1'h1;
                wvalid          = 1'h1;
                store_finish    = 1'h0;
                load_finish     = 1'h0;
            end
            S_STORE_RES : begin
                araddr          = 32'h0;
                arvalid         = 1'h0;
                awaddr          = 32'h0;
                awvalid         = 1'h0;
                wdata           = 32'h0;
                wlast           = 1'h0;
                wvalid          = 1'h0;
                load_finish     = 1'h0;
                if((bid == 4'h2)&(bresp == 2'h0)&(bvalid))
                    store_finish    = 1'h1;
                else
                    store_finish    = 1'h0;
            end
            S_LOAD_ADDR : begin
                araddr          = uart_debug_addr_r;
                arvalid         = 1'h1;
                awaddr          = 32'h0;
                awvalid         = 1'h0;
                wdata           = 32'h0;
                wlast           = 1'h0;
                wvalid          = 1'h0;
                store_finish    = 1'h0;
                load_finish     = 1'h0;
            end
            S_LOAD_DATA : begin
                araddr          = 32'h0;
                arvalid         = 1'h0;
                awaddr          = 32'h0;
                awvalid         = 1'h0;
                wdata           = 32'h0;
                wlast           = 1'h0;
                wvalid          = 1'h0;
                store_finish    = 1'h0;
                if((rid == 4'h2)&(rresp == 2'h0)&(rlast == 1'h1)&(rvalid == 1'h1))
                    load_finish     = 1'h1;
                else
                    load_finish     = 1'h0;
            end
            default : begin
                araddr          = 32'h0;
                arvalid         = 1'h0;
                awaddr          = 32'h0;
                awvalid         = 1'h0;
                wdata           = 32'h0;
                wlast           = 1'h0;
                wvalid          = 1'h0;
                store_finish    = 1'h0;
                load_finish     = 1'h0;
            end
        endcase
    end
/***********************END of 状态机********************************/

assign urat_debug_wreq = uart_debug_req & uart_debug_we;
assign urat_debug_rreq = uart_debug_req & (~uart_debug_we);

always @(posedge clk or negedge rst_n) begin
        if(~rst_n)begin
            uart_debug_addr_r <= 32'h0;
            uart_debug_wdata_r <= 32'h0;
        end
        else begin
            if(urat_debug_wreq)begin
                uart_debug_addr_r <= uart_debug_addr;
                uart_debug_wdata_r <= uart_debug_wdata;
            end
            else if(urat_debug_rreq)begin
                uart_debug_addr_r <= uart_debug_addr;
                uart_debug_wdata_r <= 32'h0;
            end
            else begin
                uart_debug_addr_r <= uart_debug_addr_r;
                uart_debug_wdata_r <= uart_debug_wdata_r;
            end
        end
    end

endmodule
