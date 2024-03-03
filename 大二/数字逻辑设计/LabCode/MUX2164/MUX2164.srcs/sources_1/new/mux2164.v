`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/15 11:02:24
// Design Name: 
// Module Name: mux2164
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


module mux2164(
    input [63:0] I0,
    input [63:0] I1,
    input s,
    output [63:0] o
    );

    assign o = s? I1:I0;
endmodule
