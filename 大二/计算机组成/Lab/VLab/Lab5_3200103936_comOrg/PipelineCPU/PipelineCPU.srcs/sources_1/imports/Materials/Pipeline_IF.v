`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 16:46:31
// Design Name: 
// Module Name: IF
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
    input clk,
    input rst,
    input en,
    input [31:0] PC_in_IF, //外部来的跳转PC
    input PCSrc,        //选外部来的跳转PC还是内部的PC+4
    output wire [31:0] PC_out
    );

    wire [31:0] PC_in;
    assign PC_in = (PCSrc == 0) ? PC_out + 4 : PC_in_IF;

    //PC模块，就是个D触发器
    PC pc_0(
        .clk(clk),
        .rst(rst),
        .PC_in(PC_in), //下一周期的预PC值
        .CE(en),
        .PC_out(PC_out) //当前的PC值
    );


endmodule
