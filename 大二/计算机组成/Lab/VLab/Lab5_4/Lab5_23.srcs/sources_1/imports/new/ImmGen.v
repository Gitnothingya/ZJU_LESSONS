`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/28 15:24:25
// Design Name: 
// Module Name: ImmGen
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


module ImmGen(
    input wire [2:0] ImmSel,
    input wire [31:0] inst_field,
    output reg [31:0] Imm_out
    );

    always@ * begin
        case (ImmSel)
            3'b000:begin//U型
                Imm_out = {inst_field[31:12],12'h000};
            end
            3'b001:begin//I型
                Imm_out = {{21{inst_field[31]}},inst_field[30:20]};
            end
            3'b010:begin//S型
                Imm_out = {{21{inst_field[31]}},inst_field[30:25],inst_field[11:7]};
            end
            3'b011:begin//B型
                Imm_out = {{20{inst_field[31]}},inst_field[7],inst_field[30:25],inst_field[11:8],1'b0};
            end
            3'b100:begin//J型
                Imm_out = {{12{inst_field[31]}},inst_field[19:12],inst_field[20],inst_field[30:21],1'b0};
            end
            default: Imm_out = 32'hx;
        endcase

    end


endmodule
