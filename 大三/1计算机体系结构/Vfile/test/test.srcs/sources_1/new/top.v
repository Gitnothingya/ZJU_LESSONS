`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/06 16:01:07
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,
    input [3:0] pc,
    input value,
    output reg [3:0] value_out,
    output reg [7:0] all
    );
    reg [7:0] cache [15:0];
    integer i;
initial begin
    for(i=0;i<16;i=i+1)
        cache[i]=8'd0;
    cache[0][3:0] = 4'b1111;
    cache[1][3:0] = 4'b1010;
    cache[2][4:1] = 4'b1111;
    cache[3][5:2] = 4'b1111;
    cache[4][6:0] = 7'b1001011;
    cache[5][3:0] = 4'b1111;
    cache[6][3:0] = 4'b1111;
    cache[7][3:0] = 4'b1111;
    cache[8][3:0] = 4'b1111;
    cache[9][3:0] = 4'b1111;
    cache[10][3:0] = 4'b1111;
   

end
    always @(posedge clk)begin
        value_out[3:0] = cache[pc][3:0];
        all[7:0] = cache[pc][7:0];
    end
    
endmodule
