`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/21 16:41:52
// Design Name: 
// Module Name: PCReg
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


module PCReg(
    input wire clk,
    input wire rst,
    input wire CE,
    input wire [31:0] D,
    output reg [31:0] Q
    );
    always @(posedge clk or posedge rst) begin
        if(rst == 1) Q <= 32'h00000000;
        else if(CE == 1) Q <= D;
    end
endmodule
