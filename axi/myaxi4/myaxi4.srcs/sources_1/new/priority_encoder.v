`timescale 1ns / 1ps

//对输入请求信号进行优先级编码，确定具有最高优先级的请求，并提供对应的输出
/***
输入 input_unencoded：这是一个 WIDTH 位宽的输入端口，用于输入需要进行优先级编码的信号。
    每个位表示一个请求信号，如果该位被置为 1，则表示对应的请求信号存在；如果置为 0，则表示该请求信号不存在。

输出 output_valid：这是一个单比特的输出端口，用于表示是否存在有效的请求信号。
    如果至少有一个输入请求信号被编码，output_valid 将被置为 1；否则，它将被置为 0。

输出 output_encoded：这是一个 $clog2(WIDTH)$ 位宽的输出端口，用于输出已编码的请求信号的索引。
    该索引表示具有最高优先级的请求信号在输入端口 input_unencoded 中的位置。

输出 output_unencoded：这是一个 WIDTH 位宽的输出端口，用于输出未经编码的请求信号。
    如果 input_unencoded 中的某个请求信号被编码，则在对应的位置上，output_unencoded 会输出 1；否则，输出 0。
***/
/*
 * Priority encoder module
 */
module priority_encoder #
(
    parameter WIDTH = 4,
    // LSB priority selection
    parameter LSB_HIGH_PRIORITY = 0
)
(
    input wire [WIDTH - 1 : 0] input_unencoded,
    output wire output_valid,
    output wire [$clog2(WIDTH) - 1 : 0] output_encoded,
    output wire [WIDTH - 1 : 0] output_unencoded
);


/***
在这个参数中，LEVELS 的作用是确定优先级编码器中输出索引的位宽。
如果 WIDTH 大于 2，那么 LEVELS 就是 WIDTH 的对数（向上取整），这个值用于确定输出索引所需的位数。
否则，如果 WIDTH 不大于 2，LEVELS 就被设置为 1，以确保至少有一个索引位。

然后，W 的计算是为了得到一个更大的值，用于在优先级编码器中使用。
它被定义为 2 的 LEVELS 次方。
这个值的作用是为了确保输出索引能够覆盖所有可能的输入组合，即使 WIDTH 比较小的情况下，也能够提供足够的位数来表示索引。
***/
parameter LEVELS = WIDTH > 2 ? $clog2(WIDTH) : 1;
parameter W = 2 ** LEVELS;

// pad input to even power of two
wire [W - 1 : 0] input_padded = {{(W - WIDTH){1'b0}}, input_unencoded};

wire [W / 2 - 1 : 0] stage_valid[LEVELS - 1 : 0];
wire [W / 2 - 1 : 0] stage_enc[LEVELS - 1 : 0];

generate
    genvar l, n;

    // process input bits; genarate valid bit and encoded bit for each pair
    for (n = 0; n < W / 2; n = n + 1) begin : loop_in
        assign stage_valid[0][n] = |input_padded[n * 2 + 1 : n * 2];    //有效位表示输入位对中是否有至少一个位为高电平
        if(LSB_HIGH_PRIORITY) begin
            // bit 0 is highest priority
            assign stage_enc[0][n] = !input_padded[n * 2 + 0];
        end else begin
            // bit 0 is lowest priority
            assign stage_enc[0][n] = input_padded[n * 2 + 1];
        end
    end

    // compress down to single valid bit and encoded bus
    for (l = 1; l < LEVELS; l = l + 1) begin : loop_level
        for (n = 0; n < W / (2 * 2 ** l); n = n + 1) begin : loop_compress
            assign stage_valid[l][n] = |stage_valid[l - 1][n * 2 + 1 : n * 2];
            if(LSB_HIGH_PRIORITY) begin
                // bit 0 is highest priority
                assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+0] ? {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]} : {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]};
            end else begin
                // bit 0 is lowest priority
                assign stage_enc[l][(n+1)*(l+1)-1:n*(l+1)] = stage_valid[l-1][n*2+1] ? {1'b1, stage_enc[l-1][(n*2+2)*l-1:(n*2+1)*l]} : {1'b0, stage_enc[l-1][(n*2+1)*l-1:(n*2+0)*l]};
            end 
        end
    end
endgenerate

assign output_valid = stage_valid[LEVELS - 1];
assign output_encoded = stage_enc[LEVELS - 1];
assign output_unencoded = 1 << output_encoded;

endmodule


/***
这段代码实现了一个优先级编码器模块，用于对输入的请求信号进行优先级编码，并确定具有最高优先级的请求。下面是代码的作用及输入输出的解释：

输入 input_unencoded：这是一个 WIDTH 位宽的输入端口，用于输入需要进行优先级编码的信号。每个位表示一个请求信号，如果该位被置为 1，则表示对应的请求信号存在；如果置为 0，则表示该请求信号不存在。

输出 output_valid：这是一个单比特的输出端口，用于表示是否存在有效的请求信号。如果至少有一个输入请求信号被编码，output_valid 将被置为 1；否则，它将被置为 0。

输出 output_encoded：这是一个 $clog2(WIDTH)$ 位宽的输出端口，用于输出已编码的请求信号的索引。该索引表示具有最高优先级的请求信号在输入端口 input_unencoded 中的位置。

输出 output_unencoded：这是一个 WIDTH 位宽的输出端口，用于输出未经编码的请求信号。如果 input_unencoded 中的某个请求信号被编码，则在对应的位置上，output_unencoded 会输出 1；否则，输出 0。

该代码首先对输入信号进行预处理，将其填充为最接近且大于等于输入宽度的2的幂次方的长度，以便进行后续的优先级编码。然后，通过层层压缩，生成单一的有效位和编码信号，以确定具有最高优先级的请求信号。
***/