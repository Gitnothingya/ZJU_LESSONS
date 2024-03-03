`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/14 15:55:12
// Design Name: 
// Module Name: mux8132
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


module mux8132(input [31:0] I0,
              input [31:0] I1,
              input [31:0] I2,
              input [31:0] I3,
              input [31:0] I4,
              input [31:0] I5,
              input [31:0] I6,
              input [31:0] I7,
              input [2:0] s,
              output reg [31:0] o
    );
    always @(*) begin
        case (s)
            3'h0:o     = I0;
            3'h1:o     = I1;
            3'h2:o     = I2;
            3'h3:o     = I3;
            3'h4:o     = I4;
            3'h5:o     = I5;
            3'h6:o     = I6;
            3'h7:o     = I7;
            default: o = 8'h0;
        endcase
    end
endmodule
