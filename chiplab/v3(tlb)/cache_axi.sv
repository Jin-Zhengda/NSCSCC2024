module cache_axi(
    input logic                   clk,      
    input logic                   rst,      // 高有效

    input wire[3:0]               cache_wsel_i,     // duncache_write_wstrb
    
    // ICache: Read Channel
    input logic                   inst_ren_i,       // rd_req
    input logic [31:0]            inst_araddr_i,    // rd_addr
    output logic                  inst_rvalid_o,    // ret_valid 读完8个32位数据之后才给高有效信号
    output logic [255:0]          inst_rdata_o,     // ret_data
    
    // DCache: Read Channel
    input logic                   data_ren_i,       // rd_req
    input logic [31:0]            data_araddr_i,    // rd_addr
    output logic                  data_rvalid_o,    // ret_valid 写完8个32位信号之后才给高有效信号
    output logic [255:0]          data_rdata_o,     // ret_data
    
    // DCache: Write Channel
    input logic                   data_wen_i,       // wr_req
    input logic [255:0]           data_wdata_i,     // wr_data
    input logic [31:0]            data_awaddr_i,    // wr_addr
    output logic                  data_bvalid_o,    // 在顶层模块直接定义     logic   data_bvalid_o; 下面会给它赋值并输出
    
    //I-uncached Read channel
	input wire                 iucache_ren_i,
	input wire[31:0]           iucache_addr_i,
	output reg                 iucache_rvalid_o,
	output reg[31:0]           iucache_rdata_o, 

    //D-uncache: Read Channel
    input wire                 ducache_ren_i,
    input wire [31:0]          ducache_araddr_i,
    output reg                 ducache_rvalid_o,   
    output reg [31:0]          ducache_rdata_o,

    //D-uncache: Write Channel
	input wire 					ducache_wen_i,
	input wire [31:0]	     	ducache_wdata_i,
    input wire [31:0]	        ducache_awaddr_i,
    output reg 					ducache_bvalid_o,

    // AXI Communicate
    output logic                  axi_ce_o,

    output wire[3:0]              axi_wsel_o,    // 连接总线的wstrb
    
    // AXI read
    input logic [31:0]            rdata_i,
    input logic                   rdata_valid_i,
    output logic                  axi_ren_o,
    output logic                  axi_rready_o,
    output logic [31:0]           axi_raddr_o,
    output logic [7:0]            axi_rlen_o,
    
    // AXI write
    input logic                   wdata_resp_i,
    output logic                  axi_wen_o,
    output logic [31:0]           axi_waddr_o,
    output logic [31:0]           axi_wdata_o,
    output logic                  axi_wvalid_o,
    output logic                  axi_wlast_o,
    output logic [7:0]            axi_wlen_o    
);

    // Define state enum
    typedef enum logic [3:0] {
        STATE_READ_FREE,
        STATE_READ_ICACHE,
        STATE_READ_IUNCACHED,
        STATE_READ_DCACHE,
        STATE_READ_DUNCACHED,
        STATE_WRITE_FREE,
        STATE_WRITE_BUSY,
        STATE_WRITE_DUNCACHED
    } StateType;

    // State variables
    StateType read_state, write_state;
    logic [2:0] read_count, write_count;

    // Default assignments
    assign axi_ce_o = rst ? 1'b0 : 1'b1;

    ///////////////////////////////////////////////////////////////
    //////////////////////////Main Body////////////////////////////
    ///////////////////////////////////////////////////////////////

    // READ(DCache first && uncache first) -- 自定义规定
    // State transition for read and write operation
    // Read state machine
    always_ff @(posedge clk) begin
        if (rst) 
            read_state <= STATE_READ_FREE;
        else case (read_state)
            STATE_READ_FREE: begin
                if (ducache_ren_i) 
                    read_state <= STATE_READ_DUNCACHED;
                else if (data_ren_i) 
                    read_state <= STATE_READ_DCACHE;
                else if (iucache_ren_i) 
                    read_state <= STATE_READ_IUNCACHED;
                else if (inst_ren_i) 
                    read_state <= STATE_READ_ICACHE;
            end
            STATE_READ_DUNCACHED: 
                if (rdata_valid_i) read_state <= STATE_READ_FREE;
            STATE_READ_DCACHE: 
                if (rdata_valid_i && read_count == 3'h7) read_state <= STATE_READ_FREE;
            STATE_READ_IUNCACHED: 
                if (rdata_valid_i) read_state <= STATE_READ_FREE;
            STATE_READ_ICACHE: 
                if (rdata_valid_i && read_count == 3'h7) read_state <= STATE_READ_FREE;
        endcase
    end

    // Write state machine
    always_ff @(posedge clk) begin
        if (rst) 
            write_state <= STATE_WRITE_FREE;
        else case (write_state)
            STATE_WRITE_FREE: begin
                if (ducache_wen_i) 
                    write_state <= STATE_WRITE_DUNCACHED;
                else if (data_wen_i) 
                    write_state <= STATE_WRITE_BUSY;
            end
            STATE_WRITE_DUNCACHED: 
                if (wdata_resp_i) write_state <= STATE_WRITE_FREE;
            STATE_WRITE_BUSY: 
                if (wdata_resp_i && write_count == 3'h7) write_state <= STATE_WRITE_FREE;
        endcase
    end

    // Counter for read and write operations
    always_ff @(posedge clk) begin
        if (rst) begin
            read_count <= 3'h0;
            write_count <= 3'h0;
        end else begin
            if (read_state == STATE_READ_FREE)
                read_count <= 3'h0;
            else if (rdata_valid_i)
                read_count <= read_count + 1;
            
            if (write_state == STATE_WRITE_FREE)
                write_count <= 3'h0;
            else if (wdata_resp_i)
                write_count <= write_count + 1;
        end
    end

    // AXI
    assign axi_ren_o   = (read_state == STATE_READ_FREE) ? 1'b0 : 1'b1;
    assign axi_rready_o = axi_ren_o; // ready when starts reading
    
    // 如果突发长度为8的话，按道理是cpu给的地址直接低五位置0就行了，这样实现的话应该也不影响(应该还能算是可以适应突发长度改变的情况)
    // 后面七个地址会被直接忽略了，如果真的出bug了记得关注这个地方
	assign axi_raddr_o = (read_state == STATE_READ_DUNCACHED) ? ducache_araddr_i:
	                     (read_state == STATE_READ_DCACHE)    ? {data_araddr_i[31:5],read_count,2'b00}:
	                     (read_state == STATE_READ_IUNCACHED) ? iucache_addr_i:
						 (read_state == STATE_READ_ICACHE)    ? {inst_araddr_i[31:5],read_count,2'b00}:
						 32'h0;

    // ICache/I-uncached/DCache
    always_ff @(posedge clk) begin
        if (read_state == STATE_READ_ICACHE && rdata_valid_i == 1'b1 && read_count == 3'h7)
            inst_rvalid_o <= 1'b1;
        else if (read_state == STATE_READ_IUNCACHED && rdata_valid_i == 1'b1)
            iucache_rvalid_o <= 1'b1;
        else begin
            inst_rvalid_o <= 1'b0;
            iucache_rvalid_o <= 1'b0;
        end
    end

    always_ff @(posedge clk) begin
        if (read_state == STATE_READ_DCACHE && rdata_valid_i == 1'b1 && read_count == 3'h7)
            data_rvalid_o <= 1'b1;
        else
            data_rvalid_o <= 1'b0;
    end

    // D-uncached
    always_ff @(posedge clk) begin
        if (read_state == STATE_READ_DUNCACHED && rdata_valid_i == 1'b1)
            ducache_rvalid_o <= 1'b1;
        else
            ducache_rvalid_o <= 1'b0;
    end

    // Assigning data for ICache/DCache reads
    always_ff @(posedge clk) begin
        if (rdata_valid_i) begin
            case (read_count)
                3'h0: inst_rdata_o[32*1-1:32*0] <= rdata_i;
                3'h1: inst_rdata_o[32*2-1:32*1] <= rdata_i;
                3'h2: inst_rdata_o[32*3-1:32*2] <= rdata_i;
                3'h3: inst_rdata_o[32*4-1:32*3] <= rdata_i;
                3'h4: inst_rdata_o[32*5-1:32*4] <= rdata_i;
                3'h5: inst_rdata_o[32*6-1:32*5] <= rdata_i;
                3'h6: inst_rdata_o[32*7-1:32*6] <= rdata_i;
                3'h7: inst_rdata_o[32*8-1:32*7] <= rdata_i;
            endcase
        end
    end

    always_ff @(posedge clk) begin
        if (rdata_valid_i) begin
            case (read_count)
                3'h0: data_rdata_o[32*1-1:32*0] <= rdata_i;
                3'h1: data_rdata_o[32*2-1:32*1] <= rdata_i;
                3'h2: data_rdata_o[32*3-1:32*2] <= rdata_i;
                3'h3: data_rdata_o[32*4-1:32*3] <= rdata_i;
                3'h4: data_rdata_o[32*5-1:32*4] <= rdata_i;
                3'h5: data_rdata_o[32*6-1:32*5] <= rdata_i;
                3'h6: data_rdata_o[32*7-1:32*6] <= rdata_i;
                3'h7: data_rdata_o[32*8-1:32*7] <= rdata_i;
            endcase
        end
    end

    // Uncached rdata_o
    always_ff @(posedge clk) begin
        if (rst) begin
            iucache_rdata_o <= 32'd0;
            ducache_rdata_o <= 32'd0;
        end else begin
            if (rdata_valid_i && read_state == STATE_READ_DUNCACHED) begin
                ducache_rdata_o <= rdata_i;
            end
            if (rdata_valid_i && read_state == STATE_READ_IUNCACHED) begin
                iucache_rdata_o <= rdata_i;
            end
        end
    end

    // WRITE
    // AXI
    assign axi_wen_o    = (write_state == STATE_WRITE_FREE) ? 1'b0 : 1'b1;
    assign axi_wvalid_o = (write_state == STATE_WRITE_FREE) ? 1'b0 : 1'b1;
    
	assign axi_wlen_o   = (write_state == STATE_WRITE_DUNCACHED) ? 8'h0 : 8'h7; // byte select  这个信号我有点懵
    assign axi_rlen_o   = (read_state == STATE_READ_IUNCACHED || read_state == STATE_READ_DUNCACHED ) ? 8'h0 : 8'h7;//byte select

    assign axi_wsel_o = (write_state == STATE_WRITE_DUNCACHED) ? cache_wsel_i : 4'b1111;

    // 如果突发长度为8的话，按道理是cpu给的地址直接低五位置0就行了，这样实现的话应该也不影响(应该还能算是可以适应突发长度改变的情况)
    // 后面七个地址会被直接忽略了，如果真的出bug了记得关注这个地方
    assign axi_waddr_o = (write_state == STATE_WRITE_DUNCACHED) ?
                         ducache_awaddr_i : {data_awaddr_i[31:5], write_count, 2'b00};

    assign axi_wlast_o = (write_state == STATE_WRITE_BUSY && write_count == 3'h7) ? 
                          1'b1 : (write_state == STATE_WRITE_DUNCACHED) ? 1'b1 : 1'b0; // write last word

    // DCache
    always_ff @(posedge clk) begin
        data_bvalid_o <= (write_state == STATE_WRITE_BUSY && wdata_resp_i && write_count == 3'h7) ? 1'b1 : 1'b0;
    end
    // D-uncached
    always_ff @(posedge clk) begin
        ducache_bvalid_o <= (write_state == STATE_WRITE_DUNCACHED && wdata_resp_i) ? 1'b1 : 1'b0;
    end

    always_comb begin
        if(write_state == STATE_WRITE_DUNCACHED) begin
            axi_wdata_o = ducache_wdata_i;
        end else begin
            case (write_count)
                3'h0: axi_wdata_o = data_wdata_i[32*1-1:32*0];
                3'h1: axi_wdata_o = data_wdata_i[32*2-1:32*1];
                3'h2: axi_wdata_o = data_wdata_i[32*3-1:32*2];
                3'h3: axi_wdata_o = data_wdata_i[32*4-1:32*3];
                3'h4: axi_wdata_o = data_wdata_i[32*5-1:32*4];
                3'h5: axi_wdata_o = data_wdata_i[32*6-1:32*5];
                3'h6: axi_wdata_o = data_wdata_i[32*7-1:32*6];
                3'h7: axi_wdata_o = data_wdata_i[32*8-1:32*7];
                default: axi_wdata_o = 32'h0;
            endcase
        end
    end

endmodule
