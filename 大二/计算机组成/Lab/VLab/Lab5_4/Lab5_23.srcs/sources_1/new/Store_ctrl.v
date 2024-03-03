`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/01 16:01:41
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
    wire [1:0] pos = source_addr[1:0];

    always @* begin
        data_out = data_in << (pos*8);
        case(data_ram_we)
            1'b0: wea = 4'b0000;
            1'b1:begin
                if(Stype == 3'b000) begin
                    if(pos == 2'b00) begin
                        wea = 4'b0001;
                    end
                    else if(pos == 2'b01) begin
                        wea = 4'b0010;
                    end
                    else if(pos == 2'b10) begin
                        wea = 4'b0100;
                    end
                    else if(pos == 2'b11) begin
                        wea = 4'b1000;
                    end
                    else wea = 4'b0000;
                end
                else if(Stype == 3'b001) begin
                    if(pos == 2'b00) begin
                        wea = 4'b0011;
                    end
                    else if(pos == 2'b01) begin
                        wea = 4'b0110;
                    end
                    else if(pos == 2'b10) begin
                        wea = 4'b1100;
                    end
                    else wea = 4'b0000;
                end
                else if(Stype == 3'b010) begin
                    wea = 4'b1111;
                end
                else wea = 4'b0000;
            end
            default: wea = 4'b0000;
        endcase
    end
endmodule