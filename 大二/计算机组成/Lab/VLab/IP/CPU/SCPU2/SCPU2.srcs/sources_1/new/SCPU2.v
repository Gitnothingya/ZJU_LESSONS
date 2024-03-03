`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/14 16:35:27
// Design Name: 
// Module Name: SCPU2
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


module SCPU2(
    input clk,
    input [31:0]inst_in,
    input rst,
    input [31:0]Data_in,
    input MIO_ready,
    output MemRW,
    output [31:0]PC_out,
    output [31:0]Addr_out,
    output CPU_MIO,
    output [31:0]Data_out
    );
    wire [1:0] ImmSel;
    wire ALUSrc_B;
    wire [1:0]MemtoReg;
    wire Jump;
    wire Branch;
    wire RegWrite;
    wire [2:0]ALU_Control;


    SCPU_ctrl ctrl(.OPcode(inst_in[6:2]),
                   .Fun3(inst_in[14:12]),
                   .Fun7(inst_in[30]),
                   .MIO_ready(MIO_ready),
                   .ImmSel(ImmSel),
                   .ALUSrc_B(ALUSrc_B),
                   .MemtoReg(MemtoReg),
                   .Jump(Jump),
                   .Branch(Branch),
                   .RegWrite(RegWrite),
                   .MemRW(MemRW),
                   .ALU_Control(ALU_Control),
                   .CPU_MIO(CPU_MIO));
    DataPath  datapath(.clk(clk),
                       .rst(rst),
                       .inst_field(inst_in),
                       .Data_in(Data_in),
                       .ALU_Control(ALU_Control),
                       .ImmSel(ImmSel),
                       .MemtoReg(MemtoReg),
                       .ALUSrc_B(ALUSrc_B),
                       .Jump(Jump),
                       .Branch(Branch),
                       .RegWrite(RegWrite),
                       .PC_out(PC_out),
                       .Data_out(Data_out),
                       .ALU_out(Addr_out));


endmodule
