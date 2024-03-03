`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/10 14:32:27
// Design Name: 
// Module Name: Alu
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



module Alu(
    input[31:0] a_val,
    input[31:0] b_val,
    input[3:0] ctrl,
    output reg[31:0] result
    );

    always @(*) begin
        case (ctrl)
            `ALU_ADD: result = a_val + b_val; 
            `ALU_SUB: result = a_val - b_val;
            `ALU_SLL: result = a_val << b_val[4:0]; //逻辑左移，补0
            `ALU_SLT: case ({a_val[31],b_val[31]}) //set less than
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
            `ALU_SLTU: result = a_val < b_val ? 1 : 0; //set less than for unsigned number
            `ALU_XOR: result = a_val ^ b_val;
            `ALU_SRL: result = a_val >> b_val[4:0]; //逻辑右移，补0
            `ALU_SRA: result = ($signed(a_val)) >>> b_val[4:0]; //算术右移
            `ALU_OR: result = a_val | b_val;
            `ALU_AND: result = a_val & b_val;
            default: result = 32'hx;
        endcase
    end

endmodule
