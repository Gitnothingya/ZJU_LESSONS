`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2022/03/03 21:32:24
// Design Name:
// Module Name: mux415
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


module mux415(input [4:0] I0,
              input [4:0] I1,
              input [4:0] I2,
              input [4:0] I3,
              input [1:0]s,
              output reg [4:0] o);

always @(*) begin
    case (s)
        2'h0: o = I0;
        2'h1: o = I1;
        2'h2: o = I2;
        2'h3: o = I3;
        default:;
    endcase
end

endmodule
