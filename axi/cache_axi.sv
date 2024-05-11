module cache_axi(
    input logic                   clk,      
    input logic                   rst,      // 高有效
    
    // ICache: Read Channel
    input logic                   inst_ren_i,       // rd_req
    input logic [31:0]            inst_araddr_i,    // rd_addr
    output logic                  inst_rvalid_o,    // ret_valid
    output logic [255:0]          inst_rdata_o,     // ret_data
    
    // DCache: Read Channel
    input logic                   data_ren_i,       // rd_req
    input logic [31:0]            data_araddr_i,    // rd_addr
    output logic                  data_rvalid_o,    // ret_valid
    output logic [255:0]          data_rdata_o,     // ret_data
    
    // DCache: Write Channel
    input logic                   data_wen_i,       // wr_req
    input logic [255:0]           data_wdata_i,     // wr_data
    input logic [31:0]            data_awaddr_i,    // wr_addr
    output logic                  data_bvalid_o,    // ret_valid
    
    // AXI Communicate
    output logic                  axi_ce_o,
    
    // AXI read
    input logic [31:0]            rdata_i,
    input logic                   rdata_valid_i,
    output logic                  axi_ren_o,
    output logic                  axi_rready_o,
    output logic [31:0]           axi_raddr_o,
    output logic [3:0]            axi_rlen_o,
    
    // AXI write
    input logic                   wdata_resp_i,
    output logic                  axi_wen_o,
    output logic [31:0]           axi_waddr_o,
    output logic [31:0]           axi_wdata_o,
    output logic                  axi_wvalid_o,
    output logic                  axi_wlast_o,
    output logic [3:0]            axi_wlen_o    
);

    // Define state enum
    typedef enum logic [1:0] {
        STATE_READ_FREE,
        STATE_READ_DCACHE,
        STATE_READ_ICACHE,
        STATE_WRITE_FREE,
        STATE_WRITE_BUSY
    } StateType;

    // State variables
    StateType read_state, write_state;
    logic [2:0] read_count, write_count;

    // Default assignments
    assign axi_ce_o = rst ? 1'b0 : 1'b1;

    ///////////////////////////////////////////////////////////////
    //////////////////////keep data(MASK)//////////////////////////
    ///////////////////////////////////////////////////////////////

    // ICache: Read Channel
    logic [31:0]  inst_araddr_2;

    // DCache: Read Channel
    logic [31:0]  data_araddr_2;

    // DCache: Write Channel
    logic [255:0]       data_wdata_2;
    logic [31:0]  data_awaddr_2;

    always_ff @(posedge clk) begin
        if (rst) begin
            inst_araddr_2 <= '0;
            data_araddr_2 <= '0;
            data_wdata_2 <= '0;
            data_awaddr_2 <= '0;
        end else begin
            if (read_state == STATE_READ_DCACHE || read_state == STATE_READ_ICACHE)
                inst_araddr_2 <= inst_araddr_i; 
            if (write_state == STATE_WRITE_BUSY) begin
                data_wdata_2  <= data_wdata_i;     
                data_awaddr_2 <= data_awaddr_i;
            end
        end
    end

    ///////////////////////////////////////////////////////////////
    //////////////////////////Main Body////////////////////////////
    ///////////////////////////////////////////////////////////////

    // READ(DCache first)
    // State transition for read operation
    always_ff @(posedge clk) begin
        if (rst) begin
            read_state <= STATE_READ_FREE;
            write_state <= STATE_WRITE_FREE;
        end else begin
            case (read_state)
                STATE_READ_FREE: begin
                    if (data_ren_i) // DCache
                        read_state <= STATE_READ_DCACHE;
                    else if (inst_ren_i) // ICache
                        read_state <= STATE_READ_ICACHE;
                end
                STATE_READ_DCACHE, STATE_READ_ICACHE: begin
                    if (rdata_valid_i && read_count == 3'h7) // last read successful
                        read_state <= STATE_READ_FREE;
                end
            endcase
            case (write_state)
                STATE_WRITE_FREE: begin
                    if (data_wen_i) // Write
                        write_state <= STATE_WRITE_BUSY;
                end
                STATE_WRITE_BUSY: begin
                    if (wdata_resp_i && write_count == 3'h7) // last write successful
                        write_state <= STATE_WRITE_FREE;
                end
            endcase
        end
    end

    // Counter for read operations
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
    assign axi_raddr_o = (read_state == STATE_READ_DCACHE) ? {data_araddr_2[31:5], read_count, 2'b00} :
                         (read_state == STATE_READ_ICACHE) ? {inst_araddr_2[31:5], read_count, 2'b00} :
                         32'h0;

    // ICache/DCache
    always_ff @(posedge clk) begin
        case (read_state)
            STATE_READ_ICACHE: inst_rvalid_o <= (rdata_valid_i && read_count == 3'h7);
            STATE_READ_DCACHE: data_rvalid_o <= (rdata_valid_i && read_count == 3'h7);
            default: begin   
                inst_rvalid_o <= 1'b0;
                data_rvalid_o <= 1'b0;
            end
        endcase
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

    // WRITE

    // AXI
    assign axi_wen_o    = (write_state == STATE_WRITE_FREE) ? 1'b0 : 1'b1;
    assign axi_wvalid_o = (write_state == STATE_WRITE_FREE) ? 1'b0 : 1'b1;
    
    assign axi_wlen_o   = 4'h7; // byte select

    assign axi_waddr_o  = {data_awaddr_2[31:5], write_count, 2'b00};
    assign axi_wlast_o  = (write_state == STATE_WRITE_BUSY && write_count == 3'h7) ? 1'b1 : 1'b0; // write last word
    
    // DCache
    always_ff @(posedge clk) begin
        data_bvalid_o <= (write_state == STATE_WRITE_BUSY && wdata_resp_i && write_count == 3'h7) ? 1'b1 : 1'b0;
    end

    always_comb begin
        case (write_count)
            3'h0: axi_wdata_o <= data_wdata_2[32*1-1:32*0];
            3'h1: axi_wdata_o <= data_wdata_2[32*2-1:32*1];
            3'h2: axi_wdata_o <= data_wdata_2[32*3-1:32*2];
            3'h3: axi_wdata_o <= data_wdata_2[32*4-1:32*3];
            3'h4: axi_wdata_o <= data_wdata_2[32*5-1:32*4];
            3'h5: axi_wdata_o <= data_wdata_2[32*6-1:32*5];
            3'h6: axi_wdata_o <= data_wdata_2[32*7-1:32*6];
            3'h7: axi_wdata_o <= data_wdata_2[32*8-1:32*7];
            default: axi_wdata_o <= 32'h0;
        endcase
    end

endmodule


