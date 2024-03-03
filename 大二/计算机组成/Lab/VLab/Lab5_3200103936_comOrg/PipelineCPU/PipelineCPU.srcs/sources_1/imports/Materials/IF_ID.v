`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 15:40:25
// Design Name: 
// Module Name: IF_ID
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
`include "Defines.vh"

module IF_ID(
    input clk, 
    input rst,
    input en,  //使能
    input [31:0] PC_in,    //指令对应的PC值
    input [31:0] inst_in,  //取到的指令
    input NOP_IFID,

    output reg [31:0] PC_out,
    output reg [31:0] inst_out,
    output reg valid_IFID
    );

    always @(posedge clk or posedge rst) begin
        if(rst) begin  //reset
            PC_out <= 0;
            inst_out <= 0;
            valid_IFID <= 0;
        end
        else if(en) begin  //enable
            if(NOP_IFID) begin  //要变成bubble
                PC_out <= 0;
                inst_out <= `NOP_INST;
                valid_IFID <= 0;
            end
            else begin
                PC_out <= PC_in;
                inst_out <= inst_in;
                valid_IFID <= 1;
            end
        end
        //否则就保持不变
    end

endmodule
