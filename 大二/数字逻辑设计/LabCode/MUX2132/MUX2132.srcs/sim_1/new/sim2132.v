`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 18:44:59
// Design Name: 
// Module Name: sim2132
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


module sim2132();
    reg [31:0] I0;
    reg [31:0] I1;
    reg s;
    wire [31:0]o;
    initial begin 
    I0=32'hffffffff;
    I1=32'h00000000;
    s=1'b0;
    #100;
    s=1'b1;    
    end
    mux2132 mux(I0,I1,s,o);
endmodule
