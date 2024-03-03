`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/19 14:49:38
// Design Name: 
// Module Name: Regs
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


module Regs(    input clk,
				input rst,
				input [4:0] Rs1_addr, 
				input [4:0] Rs2_addr, 
				input [4:0] Wt_addr, 
				input [31:0]Wt_data, 
				input RegWrite, 
				output [31:0] Rs1_data, 
				output [31:0] Rs2_data
    );
    reg [31:0] register [1:31]; 				// r1 - r31
    integer i;
    
        assign Rs1_data = (Rs1_addr == 0)? 0 : register[Rs1_addr];      // read
        assign Rs2_data = (Rs2_addr == 0)? 0 : register[Rs2_addr];      // read
        
        always @(posedge clk or posedge rst) 
          begin
            if (rst==1)      begin              // reset
                for (i=1; i<32; i=i+1)
                register[i] <= 0;    //i;
            end 
            else begin
                 if ((Wt_addr != 0) && (RegWrite == 1))     // write
                 register[Wt_addr] <= Wt_data;
            end
        end
endmodule
