`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/04 21:49:31
// Design Name: 
// Module Name: mux2132
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


module mux2132(
    input [31:0] I0,
    input [31:0] I1,
    input s,
    output [31:0] o
    );

    assign o = s? I1:I0;
endmodule
