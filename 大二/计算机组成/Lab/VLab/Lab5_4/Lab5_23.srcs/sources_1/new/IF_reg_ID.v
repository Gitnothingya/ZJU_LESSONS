`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/02 12:25:24
// Design Name: 
// Module Name: IF_reg_ID
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


module IF_reg_ID(
    input clk_IFID,
    input rst_IFID,
    input en_IFID,
    input NOP_IFID,
    input [31:0]PC_in_IFID,
    input [31:0]inst_in_IFID,

    output reg [31:0]PC_out_IFID,
    output reg [31:0]inst_out_IFID
    );

    always @(posedge clk_IFID or posedge rst_IFID) begin
        if(rst_IFID==1)begin
            PC_out_IFID     = 0;
            inst_out_IFID   = 0;
        end
        else if(en_IFID==1) begin
            if(NOP_IFID == 1) begin
                PC_out_IFID     = 0;
                inst_out_IFID   = 32'h00000033;
            end
            else begin
                PC_out_IFID     = PC_in_IFID ;
                inst_out_IFID   = inst_in_IFID;
            end
        end
    end



endmodule
