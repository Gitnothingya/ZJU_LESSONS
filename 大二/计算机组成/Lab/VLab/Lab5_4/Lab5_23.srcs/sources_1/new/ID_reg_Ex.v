`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/02 14:20:19
// Design Name: 
// Module Name: ID_reg_Ex
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


module ID_reg_Ex(
    input clk_IDEX,
    input rst_IDEX,
    input en_IDEX,
    input NOP_IDEX,
    input [31:0]PC_in_IDEX,
    input [31:0]PC_cal_in_IDEX,
    input [4:0]Rd_addr_IDEX,
    input [31:0]Rs1_in_IDEx,
    input [31:0]Rs2_in_IDEX,
    input [31:0]Imm_in_IDEX,
    input ALUSrc_B_in_IDEX,
    input [3:0]ALU_control_in_IDEX,
    //input Branch_in_IDEX,
    //input BranchN_in_IDEX,
    input MemRW_in_IDEX,
    //input Jump_in_IDEX,
    input [1:0]MemtoReg_in_IDEX,
    input RegWrite_in_IDEX,
    input [4:0] is_all_in_IDEX,//
    input ImmtoReg_in_IDEX,//
    input [2:0]Fun3_in_IDEX,//
    input [31:0] inst_in_IDEX,
    //hazard
    input [4:0] Rs1_addr_in_IDEX,
    input [4:0] Rs2_addr_in_IDEX,
    input Rs1_used_in_IDEX,
    input Rs2_used_in_IDEX,
    input [4:0] OPcode_in_IDEX,

    output reg [31:0]PC_out_IDEX,
    output reg [31:0]PC_cal_out_IDEX,
    output reg [4:0]Rd_addr_out_IDEX,
    output reg [31:0]Rs1_out_IDEX,
    output reg [31:0]Rs2_out_IDEX,
    output reg [31:0]Imm_out_IDEX,
    output reg ALUSrc_B_out_IDEX,
    output reg [3:0]ALU_control_out_IDEX,
    //output Branch_out_IDEX,
    //output BranchN_out_IDEX,
    output reg MemRW_out_IDEX,
    //output Jump_out_IDEX,
    output reg [1:0]MemtoReg_out_IDEX,
    output reg RegWrite_out_IDEX,
    output reg [4:0] is_all_out_IDEX,//
    output reg ImmtoReg_out_IDEX,//
    output reg [2:0]Fun3_out_IDEX,//
    output reg [31:0]inst_out_IDEX,
output reg [4:0] Rs1_addr_out_IDEX,
output reg [4:0] Rs2_addr_out_IDEX,
output reg Rs1_used_out_IDEX,
output reg Rs2_used_out_IDEX,
output reg [4:0] OPcode_out_IDEX
    );

    always @(posedge clk_IDEX or posedge rst_IDEX) begin
        if(rst_IDEX==1) begin
            PC_out_IDEX             = 0;
            PC_cal_out_IDEX         = 0;
            Rd_addr_out_IDEX        = 0;
            Rs1_out_IDEX            = 0;
            Rs2_out_IDEX            = 0;
            Imm_out_IDEX            = 0;
            ALUSrc_B_out_IDEX       = 0;
            ALU_control_out_IDEX    = 0;
            MemRW_out_IDEX          = 0;
            MemtoReg_out_IDEX       = 0;
            RegWrite_out_IDEX       = 0;
            is_all_out_IDEX         = 0;
            ImmtoReg_out_IDEX       = 0;
            Fun3_out_IDEX           = 0;
            inst_out_IDEX           = 0;

            Rs1_addr_out_IDEX       = 0;
            Rs2_addr_out_IDEX       = 0;
            Rs1_used_out_IDEX       = 0;
            Rs2_used_out_IDEX       = 0;
            OPcode_out_IDEX         = 0;
        end
        else if(en_IDEX==1) begin
            if(NOP_IDEX == 1)begin
                PC_out_IDEX             = 0;
                PC_cal_out_IDEX         = 0;
                Rd_addr_out_IDEX        = 0;
                Rs1_out_IDEX            = 0;
                Rs2_out_IDEX            = 0;
                Imm_out_IDEX            = 0;
                ALUSrc_B_out_IDEX       = 0;
                ALU_control_out_IDEX    = 0;
                MemRW_out_IDEX          = 0;
                MemtoReg_out_IDEX       = 0;
                RegWrite_out_IDEX       = 0;
                is_all_out_IDEX         = 0;
                ImmtoReg_out_IDEX       = 0;
                Fun3_out_IDEX           = 0;
                inst_out_IDEX           = 32'h00000033;

                Rs1_addr_out_IDEX       = 0;
                Rs2_addr_out_IDEX       = 0;
                Rs1_used_out_IDEX       = 0;
                Rs2_used_out_IDEX       = 0;
                OPcode_out_IDEX         = 0;
            end
            else begin
                PC_out_IDEX             = PC_in_IDEX;
                PC_cal_out_IDEX         = PC_cal_in_IDEX;
                Rd_addr_out_IDEX        = Rd_addr_IDEX;
                Rs1_out_IDEX            = Rs1_in_IDEx;
                Rs2_out_IDEX            = Rs2_in_IDEX;
                Imm_out_IDEX            = Imm_in_IDEX;
                ALUSrc_B_out_IDEX       = ALUSrc_B_in_IDEX;
                ALU_control_out_IDEX    = ALU_control_in_IDEX;
                MemRW_out_IDEX          = MemRW_in_IDEX;
                MemtoReg_out_IDEX       = MemtoReg_in_IDEX;
                RegWrite_out_IDEX       = RegWrite_in_IDEX;
                is_all_out_IDEX         = is_all_in_IDEX;
                ImmtoReg_out_IDEX       = ImmtoReg_in_IDEX;
                Fun3_out_IDEX           = Fun3_in_IDEX;
                inst_out_IDEX           = inst_in_IDEX;

                Rs1_addr_out_IDEX       = Rs1_addr_in_IDEX;
                Rs2_addr_out_IDEX       = Rs2_addr_in_IDEX;
                Rs1_used_out_IDEX       = Rs1_used_in_IDEX;
                Rs2_used_out_IDEX       = Rs2_used_in_IDEX;
                OPcode_out_IDEX         = OPcode_in_IDEX  ;
            end
        end
    end

endmodule
