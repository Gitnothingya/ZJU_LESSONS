module PC (
    input clk,
    input rst,
    input [31:0] PC_in, //下一周期的预PC值
    input CE,
    output reg [31:0] PC_out //当前的PC值
);

    always @(posedge clk or posedge rst) begin
        if(rst) PC_out <= 0;
        else if(CE) PC_out = PC_in;
        //否则不变
    end
    
endmodule