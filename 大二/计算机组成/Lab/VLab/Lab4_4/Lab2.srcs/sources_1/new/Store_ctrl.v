`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/09 09:07:07
// Design Name: 
// Module Name: Store_ctrl
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


module Store_ctrl(
    input wire  [2:0] Stype,
    input wire  data_ram_we,
    input wire [31:0] source_addr,
    input wire [31:0] data_in,
    output reg [3:0] wea,
    output reg [31:0] data_out
    );
    wire [1:0] pos = source_addr%4;

    always @* begin
        data_out = data_in << (pos*8);
        case(data_ram_we)
            1'b0: wea = 4'b0000;
            1'b1:
                case(Stype)
                    3'b000:
                    case(pos)
                        2'b00: wea = 4'b0001;
                        2'b01: wea = 4'b0010;
                        2'b10: wea = 4'b0100;
                        2'b11: wea = 4'b1000;
                    endcase
                    3'b001:
                    case(pos)
                        2'b00: wea = 4'b0011;
                        2'b01: wea = 4'b0110;
                        2'b10: wea = 4'b1100;
                    endcase
                    3'b010:wea = 4'b1111;
                endcase
        endcase
    end
endmodule
