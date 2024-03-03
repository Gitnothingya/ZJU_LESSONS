module cmu (
        // CPU side
		input clk,
		input rst,
		input [31:0] addr_rw,
		input en_r,
		input en_w,
        input [2:0] u_b_h_w,
		input [31:0] data_w,
		output [31:0] data_r,
		output stall,

        // mem side
		output reg mem_cs_o = 0,
		output reg mem_we_o = 0,
		output reg [31:0] mem_addr_o = 0,
		input [31:0] mem_data_i,
		output [31:0] mem_data_o,
		input mem_ack_i,

        // debug info
        output [2:0] cmu_state,

        output [31:0] storeword1,
        output [31:0] storeword2,
        output [31:0] storeword3,
        output [31:0] data_write
	);

    `include "addr_define.vh"

    reg [ADDR_BITS-1:0] cache_addr = 0;
    reg cache_load = 0;
    reg cache_store = 0;
    reg cache_edit = 0;
    reg [2:0] cache_u_b_h_w = 0;
    reg [WORD_BITS-1:0] cache_din = 0;
    wire cache_hit;
    wire [WORD_BITS-1:0] cache_dout;    //[31:0]
    wire cache_valid;
    wire cache_dirty;
    wire [TAG_BITS-1:0] cache_tag;    // [22:0]

    assign data_write = cache_din;

    cache CACHE (
        .clk(~clk),
        .rst(rst),
        .addr(cache_addr),
        .load(cache_load),
        .store(cache_store),
        .edit(cache_edit),
        .invalid(1'b0),
        .u_b_h_w(cache_u_b_h_w),
        .din(cache_din),
        .hit(cache_hit),
        .dout(cache_dout),
        .valid(cache_valid),
        .dirty(cache_dirty),
        .tag(cache_tag),
        .storeword1(storeword1),
        .storeword2(storeword2),
        .storeword3(storeword3)
    );

    localparam
        S_IDLE = 0,
        S_PRE_BACK = 1,
        S_BACK = 2,
        S_FILL = 3,
        S_WAIT = 4;

    reg [2:0]state = 0;
    reg [2:0]next_state = 0;
    reg [ELEMENT_WORDS_WIDTH-1:0] word_count = 0; // [1:0]
    reg [ELEMENT_WORDS_WIDTH-1:0] next_word_count = 0; // [1:0]
    assign cmu_state = state;

    always @ (posedge clk) begin
        if (rst) begin
            state <= S_IDLE;
            word_count <= 2'b00;
        end
        else begin
            state <= next_state;// 状态更新
            word_count <= next_word_count;// 计数器更新
        end
    end

    // state ctrl
    always @ (*) begin
        if (rst) begin
            next_state = S_IDLE;
            next_word_count = 2'b00;
        end
        else begin
            case (state)
                S_IDLE: begin
                    if (en_r || en_w) begin
                        if (cache_hit)
                            next_state = S_IDLE;// 命中，直接读取数据，状态无需转移
                        else if (cache_valid && cache_dirty)
                            next_state = S_PRE_BACK;// 块被修改，替换前需要先写回内存
                        else
                            next_state = S_FILL;// 干净块，直接替换
                    end
                    next_word_count = 2'b00;// 计数器置零，为写回cache块和mem块准备
                end

                S_PRE_BACK: begin
                    next_state = S_BACK;//该状态为第一次写回做准备
                    next_word_count = 2'b00;// 计数器置零，为写回cache块准备
                end

                S_BACK: begin
                    if (mem_ack_i && word_count == {ELEMENT_WORDS_WIDTH{1'b1}})    // 2'b11 in default case
                        next_state = S_FILL;// 计数器11时，块内所有字都被写回内存，需要转移状态
                    else
                        next_state = S_BACK;// 计数器未满时，状态不转移

                    if (mem_ack_i)
                        next_word_count = word_count + 1;//每次ack说明mem写回一字，在最大值2'b11时，会再次自增溢出置0，因此无需主动置0
                    else
                        next_word_count = word_count;// 否则计数器不自增
                end

                S_FILL: begin
                    if (mem_ack_i && word_count == {ELEMENT_WORDS_WIDTH{1'b1}})
                        next_state = S_WAIT;// 计数器11，说明替换的块被全部读取写入cache，需要转移状态
                    else
                        next_state = S_FILL;// 否则状态不转移

                    if (mem_ack_i)
                        next_word_count = word_count + 1;//每从内存读取一次数据，计数器自增1
                    else
                        next_word_count = word_count;// 否则不自增
                end

                S_WAIT: begin
                    next_state = S_IDLE;//cache替换成功后进行的数据读取
                    next_word_count = 2'b00;
                end
            endcase
        end
    end
    
    // cache ctrl
    always @ (*) begin
        case(state)
            S_IDLE, S_WAIT: begin
                // @IDLE hit情况下读写数据
                // @WAIT 在cache miss替换后进行的数据读写
                // cache和CPU的交互读写，将外面传入的控制信号传入cache即可
                cache_addr = addr_rw;
                cache_load = en_r;
                cache_edit = en_w;
                cache_store = 1'b0;
                cache_u_b_h_w = u_b_h_w;
                cache_din = data_w ;
            end
            S_BACK, S_PRE_BACK: begin
                // 用于cache向内存写入
                // 因为会影响LRU计数，所以不能使用load信号。
                // u_b_h_w应该也可以不用管，反正是一个字全部取出
                cache_addr = {addr_rw[ADDR_BITS-1:BLOCK_WIDTH], next_word_count, {ELEMENT_WORDS_WIDTH{1'b0}}};
                cache_load = 1'b0;
                cache_edit = 1'b0;
                cache_store = 1'b0;
                cache_u_b_h_w = 3'b010;
                cache_din = 32'b0;
            end
            S_FILL: begin
                // 将内存中的数据读取到cache中
                // 应该是为了内存更好模拟现实所以也需要多个周期，只有ack信号到来时才有数据写入cache
                cache_addr = {addr_rw[ADDR_BITS-1:BLOCK_WIDTH], word_count, {ELEMENT_WORDS_WIDTH{1'b0}}};
                cache_load = 1'b0;
                cache_edit = 1'b0;
                cache_store = mem_ack_i;
                cache_u_b_h_w = 3'b010;
                cache_din = mem_data_i;
            end
        endcase
    end
    assign data_r = cache_dout;

    // mem ctrl
    always @ (*) begin
        case (next_state)
            S_IDLE, S_PRE_BACK, S_WAIT: begin
                mem_cs_o = 1'b0;
                mem_we_o = 1'b0;
                mem_addr_o = 32'b0;
            end

            S_BACK: begin
                mem_cs_o = 1'b1;
                mem_we_o = 1'b1;
                mem_addr_o = {cache_tag, addr_rw[ADDR_BITS-TAG_BITS-1:BLOCK_WIDTH], next_word_count, {ELEMENT_WORDS_WIDTH{1'b0}}};
            end

            S_FILL: begin
                mem_cs_o = 1'b1;
                mem_we_o = 1'b0;
                mem_addr_o = {addr_rw[ADDR_BITS-1:BLOCK_WIDTH], next_word_count, {ELEMENT_WORDS_WIDTH{1'b0}}};// {[31:4], 2bits 00}
            end
        endcase
    end
    assign mem_data_o = cache_dout;

    assign stall = (next_state != S_IDLE);

endmodule
