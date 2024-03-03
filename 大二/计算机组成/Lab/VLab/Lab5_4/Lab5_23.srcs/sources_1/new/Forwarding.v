`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/13 22:30:10
// Design Name: 
// Module Name: Forwarding
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


module Forwarding(
    input [4:0] Rs1_addr_IDEX,
    input [4:0] Rs2_addr_IDEX,
    input Rs1_used,
    input Rs2_used,
    input [4:0] Rd_addr_EXMem,
    input RegWrite_ExMem,
    input [4:0] Rd_addr_MemWB,
    input RegWrite_MemWB,

    output reg [1:0] ForwardA,
    output reg [1:0] ForwardB

    );

    always @* begin
        if(Rs1_used & RegWrite_ExMem &(Rs1_addr_IDEX ==Rd_addr_EXMem))begin
            ForwardA = 2'b01;//从Mem阶段前递
        end
        else if(Rs1_used & RegWrite_ExMem &(Rs1_addr_IDEX ==Rd_addr_MemWB)) begin
            ForwardA = 2'b10;//从WB阶段前递
        end
        else begin
            ForwardA = 2'b00;//无前递
        end

        if(Rs2_used & RegWrite_ExMem &(Rs2_addr_IDEX ==Rd_addr_EXMem))begin
            ForwardB = 2'b01;//从Mem阶段前递
        end
        else if(Rs2_used & RegWrite_ExMem &(Rs2_addr_IDEX ==Rd_addr_MemWB)) begin
            ForwardB = 2'b10;//从WB阶段前递
        end
        else begin
            ForwardB = 2'b00;//无前递
        end
    end

endmodule
