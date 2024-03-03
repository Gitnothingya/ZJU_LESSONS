`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/05 12:46:37
// Design Name: 
// Module Name: Load_Ctrl
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


module Load_Ctrl(
    input [2:0] Ltype,
    input [31:0] Data_in,
    output reg [31:0] Data_reg
    );

    always @* begin
        case(Ltype)
            3'b000:begin 
                Data_reg = {{24{Data_in[7]}},Data_in[7:0]};
            end
            3'b001:begin
                Data_reg = {{16{Data_in[15]}},Data_in[15:0]};
            end
            3'b010:begin
                Data_reg = Data_in;
            end
            3'b100:begin
                Data_reg = {24'h000000,Data_in[7:0]};
            end
            3'b101:begin
                Data_reg = {16'h0000,Data_in[15:0]};
            end
        endcase
    end





endmodule
