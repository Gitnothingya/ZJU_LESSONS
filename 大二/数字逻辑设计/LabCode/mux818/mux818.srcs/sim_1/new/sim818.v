`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2022/03/03 22:31:53
// Design Name:
// Module Name: sim818
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


module sim818();
    // mux818 Inputs
    reg   [7:0]  I0 = 0 ;
    reg   [7:0]  I1 = 0 ;
    reg   [7:0]  I2 = 0 ;
    reg   [7:0]  I3 = 0 ;
    reg   [7:0]  I4 = 0 ;
    reg   [7:0]  I5 = 0 ;
    reg   [7:0]  I6 = 0 ;
    reg   [7:0]  I7 = 0 ;
    reg   [2:0]  s  = 0 ;
    
    // mux818 Outputs
    wire  [7:0]  o;
    
    initial
    begin
        I0 = 8'h0;
        I1 = 8'h1;
        I2 = 8'h2;
        I3 = 8'h3;
        I4 = 8'h4;
        I5 = 8'h5;
        I6 = 8'h6;
        I7 = 8'h7;
        s  = 0;#50;
        s  = 1;#50;
        s  = 2;#50;
        s  = 3;#50;
        s  = 4;#50;
        s  = 5;#50;
        s  = 6;#50;
        s  = 7;#50;
    end
    mux818  u_mux818 (I0 ,I1 ,I2 ,I3 ,I4 ,I5 ,I6 ,I7 ,s  ,o);
endmodule
