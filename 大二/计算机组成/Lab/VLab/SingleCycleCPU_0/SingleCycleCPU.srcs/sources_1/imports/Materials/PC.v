module PC (
    input clk,
    input rst,
    input [31:0] PC_in, //下一周期的预PC值
    output reg [31:0] PC_out //当前的PC值
);

    always @(posedge clk or posedge rst) begin
        if(rst) PC_out = 0;
        else PC_out = PC_in;
    end
    
endmodule