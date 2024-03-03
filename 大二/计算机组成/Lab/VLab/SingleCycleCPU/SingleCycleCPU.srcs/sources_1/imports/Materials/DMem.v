module DMem #(parameter
    SIZE = 8096,
    WIDTH = 32
) (
    input clk,
    input wen,
    input [WIDTH - 1:0] addr,
    input [WIDTH - 1:0] i_data,
    output [WIDTH - 1:0] o_data
);

    wire [$clog2(SIZE)+1:0] d_addr = addr[$clog2(SIZE)+1:0];

    (* ram_style = "block" *) reg [WIDTH - 1:0] mem[0:SIZE - 1];
    initial $readmemh("dmem_data2.mem", mem);

    always @(posedge clk) begin
        if (wen) begin
            mem[d_addr >> 2] <= i_data;
        end
    end
    assign o_data = mem[d_addr >> 2];
    
endmodule