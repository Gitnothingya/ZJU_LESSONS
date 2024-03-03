`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/02 12:30:35
// Design Name: 
// Module Name: Pipeline_ID
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


module Pipeline_ID(
    input clk_ID,
    input rst_ID,
    input RegWrite_in_ID,
    input [4:0]Rd_addr_ID,
    input [31:0]Wt_data_ID,
    input [31:0]Inst_in_ID,
    input [31:0] PC_in_ID,//用于计算PC值

    output [4:0]Rd_addr_out_ID,
    output [31:0]Rs1_out_ID,
    output [31:0]Rs2_out_ID,
    output [31:0]Imm_out_ID,
    output ALUSrc_B_ID,
    output [3:0]ALU_control_ID,//ALU计算控制信号16
        //output [5:0] Branch_ID,//branch 跳转使能
    output MemRW_ID,//内存存储,top判断
    output [2:0] Fun3_ID,//inst[14:12]
        //output [1:0] Jump_ID,
    output [1:0] MemtoReg_ID,
    output ImmtoReg_ID,//即inst[5]
    output RegWrite_out_ID,
    output PCSrc_ID,//在ID部分就判断
    output [31:0]PC_cal_ID,//PC的数
    output [4:0] is_all_ID,//branch,jal,jalr,auipc,lui

    output [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,
    output [31:0] x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,
    output [31:0] x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31

    );
    wire [5:0] Branch_ID;
    wire [1:0] Jump_ID;
    wire [2:0] ImmSel;
    wire [31:0] ALU_out;
    wire zero;
    wire [31:0] PC_imm;
    wire [31:0] PC_jalr;
    wire is_branch,is_jal,is_jalr;
    reg is_auipc,is_lui;



    assign ImmtoReg_ID = Inst_in_ID[5];
    assign Rd_addr_out_ID = Inst_in_ID[11:7];

    RegFile32 Regs(.clk(clk_ID),
                   .rst(rst_ID),
                   .RegWrite(RegWrite_in_ID),
                   .Rs1_addr(Inst_in_ID[19:15]),
                   .Rs2_addr(Inst_in_ID[24:20]),
                   .Wt_addr(Rd_addr_ID),
                   .Wt_data(Wt_data_ID),
                   .Rs1_data(Rs1_out_ID),
                   .Rs2_data(Rs2_out_ID),
                   .x0(x0),
                   .x1(x1),
                   .x2(x2),
                   .x3(x3),
                   .x4(x4),
                   .x5(x5),
                   .x6(x6),
                   .x7(x7),
                   .x8(x8),
                   .x9(x9),
                   .x10(x10),
                   .x11(x11),
                   .x12(x12),
                   .x13(x13),
                   .x14(x14),
                   .x15(x15),
                   .x16(x16),
                   .x17(x17),
                   .x18(x18),
                   .x19(x19),
                   .x20(x20),
                   .x21(x21),
                   .x22(x22),
                   .x23(x23),
                   .x24(x24),
                   .x25(x25),
                   .x26(x26),
                   .x27(x27),
                   .x28(x28),
                   .x29(x29),
                   .x30(x30),
                   .x31(x31));
    cpu_ctrl ctrl_unit(
        .OPcode(Inst_in_ID[6:2]),
        .Fun3(Inst_in_ID[14:12]),
        .Fun7(Inst_in_ID[30]),
        .ImmSel(ImmSel),
        .ALUSrc_B(ALUSrc_B_ID),
        .MemtoReg(MemtoReg_ID),
        .Jump(Jump_ID),
        .Branch(Branch_ID),
        .RegWrite(RegWrite_out_ID),
        .MemRW(MemRW_ID),
        .ALU_Control(ALU_control_ID)
    );
    ImmGen immgen(
        .ImmSel(ImmSel),
        .inst_field(Inst_in_ID),
        .Imm_out(Imm_out_ID)
    );
//以下为PC判断
    ALUT alu_B(
        .A(Rs1_out_ID),
        .B(Rs2_out_ID),
        .operator(ALU_control_ID),
        .res(ALU_out),
        .zero(zero)
    );
    assign is_branch = |(Branch_ID[5:0] &{{~ALU_out[0]},ALU_out[0],{~ALU_out[0]},ALU_out[0],{~zero},zero});
    assign PC_imm = PC_in_ID + Imm_out_ID;
    assign PC_jalr = Rs1_out_ID + Imm_out_ID;
    assign PC_cal_ID = Jump_ID[1] ? PC_jalr :PC_imm;
    assign PCSrc_ID = |{is_branch,Jump_ID[1:0]};
    assign is_jal = Jump_ID[0];
    assign is_jalr = Jump_ID[1];
    always @(*) begin
        if(Inst_in_ID[6:2]==5'b00101)begin
            is_lui = 0;
            is_auipc = 1;
        end
        else if(Inst_in_ID[6:2]==5'b01101)begin
            is_lui = 1;
            is_auipc = 0;
        end
        else begin
            is_lui = 0;
            is_auipc = 0;
        end
    end
    assign is_all_ID = {is_branch,is_jal,is_jalr,is_auipc,is_lui};
    assign Fun3_ID = Inst_in_ID[14:12];

endmodule
