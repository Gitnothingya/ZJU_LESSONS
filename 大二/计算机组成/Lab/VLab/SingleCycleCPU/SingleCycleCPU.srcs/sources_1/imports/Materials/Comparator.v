`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 15:16:05
// Design Name: 
// Module Name: Comparator
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

module Comparator(
    input[31:0] a_val,
    input[31:0] b_val,
    input[2:0] ctrl,
    output reg result
    );

    always @(*) begin
        case (ctrl)
            `CMP_EQ: result = (a_val == b_val) ? 1 : 0;
            `CMP_NE: result = (a_val != b_val) ? 1 : 0;
            `CMP_LT: case ({a_val[31],b_val[31]})
                2'b00: begin
                    if(a_val[30:0] < b_val[30:0]) result = 1;
                    else result = 0;
                end
                2'b01: result = 0;
                2'b10: result = 1;
                2'b11: begin
                    if(a_val[30:0] < b_val[30:0]) result = 1;
                    else result = 0;
                end
                default: result = 32'hx;
            endcase
            `CMP_LTU: result = (a_val < b_val) ? 1 : 0;
            `CMP_GE: case ({a_val[31],b_val[31]})
                2'b00: begin
                    if(a_val[30:0] >= b_val[30:0]) result = 1;
                    else result = 0;
                end
                2'b01: result = 1;
                2'b10: result = 0;
                2'b11: begin
                    if(a_val[30:0] >= b_val[30:0]) result = 1;
                    else result = 0;
                end
                default: result = 32'hx;
            endcase
            `CMP_GEU: result = (a_val >= b_val) ? 1 : 0;
            default: result = 1'bx;
        endcase
        
    end



endmodule
