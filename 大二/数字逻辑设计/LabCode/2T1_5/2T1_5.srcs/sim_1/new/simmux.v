`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/03 16:57:53
// Design Name: 
// Module Name: simmux
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


module simmux();

    reg [4:0] I0;
    reg [4:0] I1;
    reg s;
    wire [4:0]o;
    
    initial begin 
    I0=5'b11111;
    I1=5'b00000;
    s=1'b0;
    #100;
    s=1'b1;    
    
    end
    mux215 mux(I0,I1,s,o);
    
    
    
    
    
endmodule
