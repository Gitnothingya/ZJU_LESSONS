module PC (
    input clk,
    input rst,
    input PCSrc_csr,
    input [31:0] PC_in, //下一周期的预PC值
    input [31:0] PC_csr,
    output reg [31:0] PC_out //当前的PC值
);

    always @(posedge clk or posedge rst) begin
        if(rst) PC_out = 0;
        else if(PCSrc_csr) PC_out = PC_csr;
        else PC_out = PC_in;
    end
    
endmodule