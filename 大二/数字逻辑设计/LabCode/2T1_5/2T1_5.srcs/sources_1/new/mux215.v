`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/03 16:54:07
// Design Name: 
// Module Name: mux215
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


module mux215(
    input [4:0] I0,
    input [4:0] I1,
    input s,
    output [4:0] o
    );

    assign o = s? I1:I0;
endmodule
