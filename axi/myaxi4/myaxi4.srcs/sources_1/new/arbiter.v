`timescale 1ns / 1ps

// arbiter —— 用于协调多个请求和响应之间的访问
/***
该模块中各个参数的解释：
    PORTS：表示模块中有多少个端口（请求和响应对）需要进行仲裁
    ARB_TYPE_ROUND_ROBIN：表示选择仲裁的方法，如果为 1，表示采用轮询仲裁；如果为 0，表示采用其他仲裁方法。
        —— 轮询仲裁是一种基本的仲裁方式，其原理是按照一定的顺序依次轮流选择每个请求，使得每个请求都有机会被授予访问权限。
        —— 在轮询仲裁中，每个请求会按照其出现的顺序依次被选中，然后被分配授权。
    ARB_BLOCK：表示是否启用阻塞仲裁，如果为 1，表示启用；如果为 0，表示禁用。
    ARB_BLOCK_ACK：表示在请求被阻塞时如何处理响应，如果非零，表示在收到响应时阻塞请求；如果为零，表示在请求被阻塞时取消请求。
    ARB_LSB_HIGH_PRIORITY：表示是否使用最低位优先级选择请求，在轮询仲裁时可能有用。

该模块有以下端口：
    clk：时钟信号。
    rst：复位信号，用于初始化模块状态。
    request：每个端口发送的请求信号，长度为 PORTS。
    acknowledge：每个端口发送的响应信号，长度也为 PORTS。
    grant：仲裁器选择的端口，表示给哪个请求授予访问权限。
    grant_valid：表示授予权限信号的有效性。
    grant_encoded：编码后的授予权限信号。

该仲裁器的作用是根据请求和响应信号，以及仲裁参数进行决策，选择哪个请求应该被授予访问权限，并将该决定输出到 grant 端口。
***/


/*
 * Arbiter module
 */

module arbiter # 
(
    parameter PORTS = 4,
    // select round robin arbitration
    parameter ARB_TYPE_ROUND_ROBIN = 0,
    // blocking arbiter enable
    parameter ARB_BLOCK = 0,
    // block on acknowledge assert when nonzero, request deassert when 0
    parameter ARB_BLOCK_ACK = 1,
    // LSB priority selection
    parameter ARB_LSB_HIGH_PRIORITY = 0
)
(
    input  wire                     clk,
    input  wire                     rst,

    input  wire [PORTS-1:0]         request,
    input  wire [PORTS-1:0]         acknowledge,

    output wire [PORTS-1:0]         grant,
    output wire                     grant_valid,
    output wire [$clog2(PORTS)-1:0] grant_encoded
);

reg [PORTS - 1 : 0] grant_reg = 0, grant_next;
reg grant_valid_reg = 0, grant_valid_next;
reg[$clog2(PORTS) - 1 : 0] grant_encoded_reg = 0, grant_encoded_next;

assign grant_valid = grant_valid_reg;
assign grant = grant_reg;
assign grant_encoded = grant_encoded_reg;

wire request_valid;
wire [$clog2(PORTS) - 1 : 0] request_index;
wire [PORTS - 1 : 0] request_mask;


/***
在这个情境中，掩码的作用是在优先级编码器中限制一些请求的优先级。
具体来说，通过将请求与掩码进行按位与运算，我们可以在一些情况下阻止特定请求参与仲裁。
这种情况可能发生在某些请求需要暂时被忽略或者在仲裁过程中需要特殊处理的情况下。

没有使用掩码的情况下，所有的请求信号都将直接输入到优先级编码器中，而不考虑是否需要暂时屏蔽某些请求。
使用掩码后，只有符合掩码规则的请求才会被传递给优先级编码器。
***/
priority_encoder #(
    .WIDTH(PORTS),
    .LSB_HIGH_PRIORITY(ARB_LSB_HIGH_PRIORITY)
)
priority_encoder_inst (
    .input_unencoded(request),
    .output_valid(request_valid),
    .output_encoded(request_index),
    .output_unencoded(request_mask)
);

reg [PORTS - 1 : 0] mask_reg = 0, mask_next;

wire masked_request_valid;
wire [$clog2(PORTS) - 1 : 0] masked_request_index;
wire [PORTS - 1 : 0] masked_request_mask;

priority_encoder #(
    .WIDTH(PORTS),
    .LSB_HIGH_PRIORITY(ARB_LSB_HIGH_PRIORITY)
)
priority_encoder_masked (
    .input_unencoded(request & mask_reg),
    .output_valid(masked_request_valid),
    .output_encoded(masked_request_index),
    .output_unencoded(masked_request_mask)
);

always @(*) begin
    grant_next = 0;
    grant_valid_next = 0;
    grant_encoded_next = 0;
    mask_next = mask_reg;

    // 如果启用了阻塞模式且不等待确认，且当前已授予的请求仍然被请求，则将保持授权和有效性
    if(ARB_BLOCK && !ARB_BLOCK_ACK && (grant_reg & request)) begin
        // granted request still asserted: hoid it
        grant_valid_next = grant_valid_reg;
        grant_next = grant_reg;
        grant_encoded_next = grant_encoded_reg;
    // 如果启用了阻塞模式且等待确认，且当前已授予的请求尚未被确认，则将保持授权和有效性
    end else if(ARB_BLOCK && ARB_BLOCK_ACK && grant_valid && !(grant_reg & acknowledge)) begin
        // granted request not yet acknowledged: hoid it
        grant_valid_next = grant_valid_reg;
        grant_next = grant_reg;
        grant_encoded_next = grant_encoded_reg;
    end else if(request_valid) begin
        if(ARB_TYPE_ROUND_ROBIN) begin  // 如果采用轮询方式仲裁
            if(masked_request_valid) begin  // 如果屏蔽后的请求有效，则将下一个授予设置为该请求，并根据优先级设置掩码
                grant_valid_next = 1;
                grant_next = masked_request_mask;
                grant_encoded_next = masked_request_index;
                if(ARB_LSB_HIGH_PRIORITY) begin
                    mask_next = {PORTS{1'b1}} << (masked_request_index + 1);
                end else begin
                    mask_next = {PORTS{1'b1}} >> (PORTS - masked_request_index);
                end
            end else begin
                grant_valid_next = 1;
                grant_next = request_mask;
                grant_encoded_next = request_index;
                if(ARB_LSB_HIGH_PRIORITY) begin
                    mask_next = {PORTS{1'b1}} << (request_index + 1);
                end else begin
                    mask_next = {PORTS{1'b1}} >> (PORTS - request_index);
                end
            end
        end else begin
            grant_valid_next = 1;
            grant_next = request_mask;
            grant_encoded_next = request_index;
        end
    end
end

always @(posedge clk) begin
    if(rst) begin
        grant_reg <= 0;
        grant_valid_reg <= 0;
        grant_encoded_reg <= 0;
        mask_reg <= 0;
    end else begin
        grant_reg <= grant_next;
        grant_valid_reg <= grant_valid_next;
        grant_encoded_reg <= grant_encoded_next;
        mask_reg <= mask_next;
    end
end


endmodule
