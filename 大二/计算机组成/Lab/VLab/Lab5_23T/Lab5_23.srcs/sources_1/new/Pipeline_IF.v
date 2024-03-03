`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/02 12:12:16
// Design Name: 
// Module Name: Pipeline_IF
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


module Pipeline_IF(
    input clk_IF,
    input rst_IF,
    input en_IF,
    input [31:0] PC_in_IF,
    input PCSrc,

    output [31:0] PC_out_IF
    );

    wire [31:0] pc4;
    assign pc4 = PC_out_IF + 32'h4;
    wire [31:0] pc_next;
    assign pc_next = PCSrc ? PC_in_IF : pc4;

    PCReg PC(
        .clk(clk_IF),
        .rst(rst_IF),
        .CE(en_IF),
        .D(pc_next),
        .Q(PC_out_IF)
    );

endmodule
