`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/09 16:39:18
// Design Name: 
// Module Name: srl32
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


module srl32(    input [31:0] A,
				 input [31:0] B,
				 output [31:0] res

    );
    assign res = B >> 1;
endmodule
