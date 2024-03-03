`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/02 14:20:46
// Design Name: 
// Module Name: Ex_reg_Mem
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


module Ex_reg_Mem(
    input clk_EXMem,
    input rst_EXMem,
    input en_EXMem,
    input [31:0]PC_in_EXMem,
    input [31:0]PC4_in_EXMem,
    input [4:0]Rd_addr_EXMem,
    input zero_in_EXMem,
    input [31:0]ALU_in_EXMem,
    input [31:0]Rs2_in_EXMem,
        //input Branch_in_EXMem,
        //input BranchN_in_EXMem,
    input MemRW_in_EXMem,
        //input Junp_in_EXMem,
    input [1:0]MemtoReg_in_EXMem,
    input RegWrite_in_EXMem,
    input [31:0] PCcal_in_ExMem,
    input [4:0] is_all_in_ExMem,
    input Immtoreg_in_ExMem,
    input [2:0] Fun3_in_ExMem,
    input [31:0] inst_in_ExMem,
    input [31:0] Imm_in_ExMem,

    output reg [31:0]PC_out_EXMem,
    output reg [31:0]PC4_out_EXMem,
    output reg [4:0]Rd_addr_out_EXMem,
    output reg zero_out_EXMem,
    output reg [31:0]ALU_out_EXMem,
    output reg [31:0]Rs2_out_EXMem,
        //output reg Branch_out_EXMem,
        //output reg BranchN_out_EXMem,
    output reg MemRW_out_EXMem,
        //output reg Jump_out_EXMem,
    output reg [1:0]MemtoReg_out_EXMem,
    output reg RegWrite_out_EXMem,
    output reg [31:0] PCcal_out_ExMem,
    output reg [4:0] is_all_out_ExMem,
    output reg Immtoreg_out_ExMem,
    output reg [2:0] Fun3_out_ExMem,
    output reg [31:0] inst_out_ExMem,
    output reg [31:0] Imm_out_ExMem
    );

    always @(posedge clk_EXMem or posedge rst_EXMem) begin
        if(rst_EXMem==1)begin
            PC_out_EXMem = 0;
            PC4_out_EXMem = 0;
            Rd_addr_out_EXMem = 0;
            zero_out_EXMem = 0;
            ALU_out_EXMem = 0;
            Rs2_out_EXMem = 0;
            // Branch_out_EXMem = 0;
            // BranchN_out_EXMem = 0;
            MemRW_out_EXMem = 0;
            // Jump_out_EXMem = 0;
            MemtoReg_out_EXMem = 0;
            RegWrite_out_EXMem = 0;
            PCcal_out_ExMem      = 0;
            is_all_out_ExMem     = 0;
            Immtoreg_out_ExMem   = 0;
            Fun3_out_ExMem       = 0;
            inst_out_ExMem       = 0;
            Imm_out_ExMem        = 0;
        end
        else if(en_EXMem==1)begin
            PC_out_EXMem = PC_in_EXMem;
            PC4_out_EXMem = PC4_in_EXMem;
            Rd_addr_out_EXMem = Rd_addr_EXMem;
            zero_out_EXMem = zero_in_EXMem;
            ALU_out_EXMem = ALU_in_EXMem;
            Rs2_out_EXMem = Rs2_in_EXMem;
            // Branch_out_EXMem = Branch_in_EXMem;
            // BranchN_out_EXMem = BranchN_in_EXMem;
            MemRW_out_EXMem = MemRW_in_EXMem;
            // Jump_out_EXMem = Junp_in_EXMem;
            MemtoReg_out_EXMem = MemtoReg_in_EXMem;
            RegWrite_out_EXMem = RegWrite_in_EXMem;
            PCcal_out_ExMem      = PCcal_in_ExMem;
            is_all_out_ExMem     = is_all_in_ExMem;
            Immtoreg_out_ExMem   = Immtoreg_in_ExMem;
            Fun3_out_ExMem       = Fun3_in_ExMem;
            inst_out_ExMem       = inst_in_ExMem;
            Imm_out_ExMem        = Imm_in_ExMem;
        end
    end

endmodule
