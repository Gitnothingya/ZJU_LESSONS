`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 19:00:50
// Design Name: 
// Module Name: sim415
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


module sim415();
    reg   [4:0]  I0 = 0 ;
    reg   [4:0]  I1 = 0 ;
    reg   [4:0]  I2 = 0 ;
    reg   [4:0]  I3 = 0 ;
    reg   [1:0]  s  = 0 ;
    wire  [4:0]  o;
    initial
    begin
    I0 = 5'h0;I1 = 5'h1;
    I2 = 5'h2;I3 = 5'h3;
    s  = 0;#50;s  = 1;#50;
    s  = 2;#50;s  = 3;#50;
    end
    mux415  u_mux818 (I0,I1,I2,I3,s,o);
endmodule
