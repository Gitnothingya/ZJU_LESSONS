`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 16:50:54
// Design Name: 
// Module Name: adc
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


module adc(
    input [31:0] A,
    input [31:0] B,
    input C0,
    output [32:0] S
    );
    wire B_Notation=C0^1'b0;
    wire [31:0]B_inv = {32{C0}}^B;
    assign S= {1'b0,A}+C0+{B_Notation,B_inv} ;
endmodule
