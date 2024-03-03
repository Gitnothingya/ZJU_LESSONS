module IMem
#(parameter
    SIZE = 8096,
    WIDTH = 32
) (
    input [WIDTH - 1:0] addr,
    output [WIDTH - 1:0] data
);
    
    wire [$clog2(SIZE)+1:0] i_addr = addr[$clog2(SIZE)+1:0];

    (* ram_style = "block" *) reg [WIDTH - 1:0] mem[0:SIZE - 1];
    initial $readmemh("imem_data1.mem", mem);

    assign data = mem[i_addr >> 2];
    
endmodule