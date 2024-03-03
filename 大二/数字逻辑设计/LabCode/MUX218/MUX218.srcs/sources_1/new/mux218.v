`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 15:44:54
// Design Name: 
// Module Name: mux218
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


module mux218(
    input [7:0] I0,
    input [7:0] I1,
    input s,
    output [7:0] o
    );
    assign o = s? I1:I0;
endmodule
