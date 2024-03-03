`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/03 11:50:04
// Design Name: 
// Module Name: CPUT
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


module CPUT(
    input       clk,
    input       rst,
    input [31:0]Data_in,
    input [31:0]inst_IF,

    output [31:0] PC_out_IF,
    output [31:0] inst_out_IF,//从top直接引?

    output [31:0] PC_out_ID,
    output [31:0] inst_ID,


    output [31:0] PC_out_EX,
    output [31:0] inst_Ex,//
    output [4:0]  Rd_Ex,//
    output [4:0]  Rs1_Ex,//
    output [4:0]  Rs2_Ex,//
    output [31:0] Rs1_val_Ex,//
    output [31:0] Rs2_val_Ex,//
    output reg_wen_Ex,//
    output is_imm,//
    output [31:0] imm,//
    output is_branch,//
    output is_jal,//
    output is_jalr,//
    output is_auipc,//
    output is_lui,//
    output MemRW_Ex,

    output MemRW_Mem,
    output [31:0] PC_out_Mem,
    output [31:0] Addr_out,
    output [31:0] Data_out,
    output [31:0] inst_Mem,//
    output [4:0] Rd_Mem,//
    output reg_wen_Mem,//
    output [31:0] mem_i_data,//
    output [31:0] alu_res,//
    output [2:0] Store_T,

    output [31:0] PC_out_WB,//
    output [31:0] inst_out_WB,//
    output [31:0] Data_out_WB,
    output [4:0] Rd_WB,//
    output reg_wen_WB,//

    output [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,
    output [31:0] x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,
    output [31:0] x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31
    );

//ID_pip
wire [4:0] Rd_addr_out_ID;
wire [31:0] Rs1_out_ID;
wire [31:0] Rs2_out_ID;
wire [31:0] Imm_out_ID;
wire ALUSrc_B_ID;
// wire Branch_ID;
// wire BranchN_ID;
wire MemRW_ID;
// wire Jump_ID;
wire RegWrite_out_ID;
wire [3:0] ALU_control_ID;
wire [1:0] MemtoReg_ID;

wire [2:0] Fun3_ID;//inst[14:12]
wire ImmtoReg_ID;//即inst[5]
wire PCSrc_ID;//在ID部分就判断
wire [31:0] PC_cal_ID;//PC的数
wire [4:0] is_all_ID;//branch,jal,jalr,auipc,lui


//IDEX_reg
wire [31:0] PC_out_IDEX;
wire [31:0] Rs1_out_IDEX;
wire [31:0] Rs2_out_IDEX;
wire [31:0] Imm_out_IDEX;
wire [4:0] Rd_addr_out_IDEX;
wire [3:0] ALU_control_out_IDEX;
wire [1:0] MemtoReg_out_IDEX;
wire ALUSrc_B_out_IDEX;
// wire Branch_out_IDEX;
// wire BranchN_out_IDEX;
// wire Jump_out_IDEX;
wire RegWrite_out_IDEX;

wire [31:0] PC_cal_out_IDEX;
wire [4:0] is_all_out_IDEX;
wire ImmtoReg_out_IDEX;
wire [2:0] Fun3_out_IDEX;
wire [31:0] inst_out_IDEX;



//EX_pip
wire [31:0] PC4_out_EX;
wire zero_out_EX;
wire [31:0] ALU_out_EX;
wire [31:0] Rs2_out_EX;


//EXMem_reg
wire [31:0]PC_out_EXMem;
wire [31:0]PC4_out_EXMem;
wire [4:0]Rd_addr_out_EXMem;
wire zero_out_EXMem;
// wire Branch_out_EXMem;
// wire BranchN_out_EXMem;
// wire Jump_out_EXMem;
wire [1:0]MemtoReg_out_EXMem;
wire RegWrite_out_EXMem;
wire [31:0] PCcal_out_ExMem;
wire [4:0] is_all_out_ExMem;
wire Immtoreg_out_ExMem;
wire [2:0] Fun3_out_ExMem;
wire [31:0] inst_out_ExMem;
wire [31:0] Imm_out_ExMem;

//Mem_pip
// wire PCSrc;
wire [31:0] Data_reg;


//MemWB
wire [31:0]PC4_out_MemWB;
wire [4:0]Rd_addr_out_MemWB;
wire [31:0]ALU_out_MemWB;
wire [31:0]DMem_data_out_MemWB;
wire [1:0]MemtoReg_out_MemWB;
wire RegWrite_out_MemWB;
wire [31:0]inst_out_MemWB;
wire [31:0]PCcal_out_MemWB;
wire Immtoreg_out_MemWB;
wire [31:0] Imm_out_MemWB;

//WB
wire [31:0] Data_reg_WB;
wire [31:0] PC_out_MemWB;
    Pipeline_IF IF_pip(
        .clk_IF(clk),
        .rst_IF(rst),
        .en_IF(1'b1),
        .PC_in_IF(PC_cal_ID),
        .PCSrc(PCSrc_ID),

        .PC_out_IF(PC_out_IF)
    );
    assign inst_out_IF = inst_IF;

    IF_reg_ID IFID(
        .clk_IFID(clk),
        .rst_IFID(rst),
        .en_IFID(1'b1),
        .PC_in_IFID(PC_out_IF),
        .inst_in_IFID(inst_IF),

        .PC_out_IFID(PC_out_ID),
        .inst_out_IFID(inst_ID)
    );


    Pipeline_ID ID_pip(
        .clk_ID(clk),
        .rst_ID(rst),
        .RegWrite_in_ID(RegWrite_out_MemWB),
        .Rd_addr_ID(Rd_addr_out_MemWB),
        .Wt_data_ID(Data_out_WB),
        .Inst_in_ID(inst_ID),
        .PC_in_ID(PC_out_ID),

        .Rd_addr_out_ID(Rd_addr_out_ID),
        .Rs1_out_ID(Rs1_out_ID),
        .Rs2_out_ID(Rs2_out_ID),
        .Imm_out_ID(Imm_out_ID),
        .ALUSrc_B_ID(ALUSrc_B_ID),
        .ALU_control_ID(ALU_control_ID),
        // .Branch_ID(Branch_ID),
        // .BranchN_ID(BranchN_ID),
        .MemRW_ID(MemRW_ID),
        .Fun3_ID(Fun3_ID),
        // .Jump_ID(Jump_ID),
        .MemtoReg_ID(MemtoReg_ID),
        .RegWrite_out_ID(RegWrite_out_ID),
        .ImmtoReg_ID(ImmtoReg_ID),
        .PCSrc_ID(PCSrc_ID),
        .PC_cal_ID(PC_cal_ID),
        .is_all_ID(is_all_ID),

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
        .x31(x31)
    );


    ID_reg_Ex IDEX(
        .clk_IDEX(clk),
        .rst_IDEX(rst),
        .en_IDEX(1'b1),
        .PC_in_IDEX(PC_out_ID),
        .Rd_addr_IDEX(Rd_addr_out_ID),
        .Rs1_in_IDEx(Rs1_out_ID),
        .Rs2_in_IDEX(Rs2_out_ID),
        .Imm_in_IDEX(Imm_out_ID),
        .ALUSrc_B_in_IDEX(ALUSrc_B_ID),
        .ALU_control_in_IDEX(ALU_control_ID),
        // .Branch_in_IDEX(Branch_ID),
        // .BranchN_in_IDEX(BranchN_ID),
        .MemRW_in_IDEX(MemRW_ID),
        // .Jump_in_IDEX(Jump_ID),
        .MemtoReg_in_IDEX(MemtoReg_ID),
        .RegWrite_in_IDEX(RegWrite_out_ID),
        .PC_cal_in_IDEX     (PC_cal_ID),
        .is_all_in_IDEX     (is_all_ID),
        .ImmtoReg_in_IDEX   (ImmtoReg_ID),
        .Fun3_in_IDEX       (Fun3_ID),
        .inst_in_IDEX       (inst_ID),


        .PC_out_IDEX(PC_out_IDEX),
        .Rd_addr_out_IDEX(Rd_addr_out_IDEX),
        .Rs1_out_IDEX(Rs1_out_IDEX),
        .Rs2_out_IDEX(Rs2_out_IDEX),
        .Imm_out_IDEX(Imm_out_IDEX),
        .ALUSrc_B_out_IDEX(ALUSrc_B_out_IDEX),
        .ALU_control_out_IDEX(ALU_control_out_IDEX),
        //.Branch_out_IDEX(Branch_out_IDEX),
        //.BranchN_out_IDEX(BranchN_out_IDEX),
        .MemRW_out_IDEX(MemRW_Ex),
        //.Jump_out_IDEX(Jump_out_IDEX),
        .MemtoReg_out_IDEX(MemtoReg_out_IDEX),
        .RegWrite_out_IDEX(RegWrite_out_IDEX),
        .PC_cal_out_IDEX     (PC_cal_out_IDEX),//
        .is_all_out_IDEX     (is_all_out_IDEX),//
        .ImmtoReg_out_IDEX   (ImmtoReg_out_IDEX),//
        .Fun3_out_IDEX       (Fun3_out_IDEX),//
        .inst_out_IDEX       (inst_out_IDEX)
    );


    Pipeline_Ex EX_pip(
        .PC_in_EX(PC_out_IDEX),
        .Rs1_in_EX(Rs1_out_IDEX),
        .Rs2_in_EX(Rs2_out_IDEX),
        .Imm_in_EX(Imm_out_IDEX),
        .ALUSrc_B_in_EX(ALUSrc_B_out_IDEX),
        .ALU_control_in_EX(ALU_control_out_IDEX),

        // .PC_out_EX(PC_out_EX),
        .PC4_out_EX(PC4_out_EX),
        .zero_out_EX(zero_out_EX),
        .ALU_out_EX(ALU_out_EX),
        .Rs2_out_EX(Rs2_out_EX)
    );

assign PC_out_EX    = PC_out_IDEX;
assign inst_Ex      = inst_out_IDEX;
assign Rd_Ex        = Rd_addr_out_IDEX;
assign Rs1_Ex       = 0;
assign Rs2_Ex       = 0;
assign Rs1_val_Ex   = Rs1_out_IDEX;
assign Rs2_val_Ex   = Rs2_out_IDEX;
assign reg_wen_Ex   = RegWrite_out_IDEX;
assign is_imm       = ALUSrc_B_out_IDEX;
assign imm          = Imm_out_IDEX;
assign is_branch    = is_all_out_IDEX[4];
assign is_jal       = is_all_out_IDEX[3];
assign is_jalr      = is_all_out_IDEX[2];
assign is_auipc     = is_all_out_IDEX[1];
assign is_lui       = is_all_out_IDEX[0];




    Ex_reg_Mem EXMem(
        .clk_EXMem(clk),
        .rst_EXMem(rst),
        .en_EXMem(1'b1),
        .PC_in_EXMem(PC_out_IDEX),
        .PC4_in_EXMem(PC4_out_EX),
        .Rd_addr_EXMem(Rd_addr_out_IDEX),
        .zero_in_EXMem(zero_out_EX),
        .ALU_in_EXMem(ALU_out_EX),
        .Rs2_in_EXMem(Rs2_out_EX),
        // .Branch_in_EXMem(Branch_out_IDEX),
        // .BranchN_in_EXMem(BranchN_out_IDEX),
        .MemRW_in_EXMem(MemRW_Ex),
        // .Junp_in_EXMem(Jump_out_IDEX),
        .MemtoReg_in_EXMem(MemtoReg_out_IDEX),
        .RegWrite_in_EXMem(RegWrite_out_IDEX),
        .PCcal_in_ExMem(PC_cal_out_IDEX),//
        .is_all_in_ExMem(is_all_out_IDEX),//
        .Immtoreg_in_ExMem(ImmtoReg_out_IDEX),//
        .Fun3_in_ExMem(Fun3_out_IDEX),//
        .inst_in_ExMem(inst_out_IDEX),
        .Imm_in_ExMem(Imm_out_IDEX),

        .PC_out_EXMem(PC_out_EXMem),
        .PC4_out_EXMem(PC4_out_EXMem),
        .Rd_addr_out_EXMem(Rd_addr_out_EXMem),
        .zero_out_EXMem(zero_out_EXMem),
        .ALU_out_EXMem(Addr_out),
        .Rs2_out_EXMem(Data_out),
        // .Branch_out_EXMem(Branch_out_EXMem),
        // .BranchN_out_EXMem(BranchN_out_EXMem),
        .MemRW_out_EXMem(MemRW_Mem),
        // .Jump_out_EXMem(Jump_out_EXMem),
        .MemtoReg_out_EXMem(MemtoReg_out_EXMem),
        .RegWrite_out_EXMem(RegWrite_out_EXMem),
        .PCcal_out_ExMem    (PCcal_out_ExMem),//
        .is_all_out_ExMem       (is_all_out_ExMem),//
        .Immtoreg_out_ExMem     (Immtoreg_out_ExMem),//
        .Fun3_out_ExMem     (Fun3_out_ExMem),//
        .inst_out_ExMem     (inst_out_ExMem),
        .Imm_out_ExMem      (Imm_out_ExMem)
    );


    Load_Ctrl Lctrl(
        .Ltype(Fun3_out_ExMem),
        .Data_in(Data_in),
        .Data_reg(Data_reg)
    );
assign PC_out_Mem = PC_out_EXMem;
assign inst_Mem = inst_out_ExMem;
assign Rd_Mem   = Rd_addr_out_EXMem;
assign reg_wen_Mem = RegWrite_out_EXMem;
assign mem_i_data = Data_reg;
assign alu_res = Addr_out;
assign Store_T = Fun3_out_ExMem;
    // Pipeline_Mem Mem(
    //     .zero_in_Mem(zero_out_EXMem),
    //     .Branch_in_Mem(BranchN_out_EXMem),
    //     .BranchN_in_Me(BranchN_out_EXMem),
    //     .Jump_in_Mem(Jump_out_EXMem),

    //     .PCSrc(PCSrc)
    // );

    Mem_reg_WB MemWB(
        .clk_MemWB(clk),
        .rst_MemWB(rst),
        .en_MemWB(1'b1),
        .PC_in_MemWB(PC_out_EXMem),
        .PC4_in_MemWB(PC4_out_EXMem),
        .Rd_addr_MemWB(Rd_addr_out_EXMem),
        .ALU_in_MemWB(Addr_out),
        .DMem_data_MemWB(Data_reg),
        .MemtoReg_in_MemWB(MemtoReg_out_EXMem),
        .RegWrite_in_MemWB(RegWrite_out_EXMem),
        .PCcal_in_MemWB(PCcal_out_ExMem),
        .Immtoreg_in_MemWB(Immtoreg_out_ExMem),
        .inst_in_MemWB(inst_out_ExMem),
        .Imm_in_MemWB(Imm_out_ExMem),

        .PC_out_MemWB(PC_out_MemWB),
        .PC4_out_MemWB(PC4_out_MemWB),
        .Rd_addr_out_MemWB(Rd_addr_out_MemWB),
        .ALU_out_MemWB(ALU_out_MemWB),
        .DMem_data_out_MemWB(DMem_data_out_MemWB),
        .MemtoReg_out_MemWB(MemtoReg_out_MemWB),
        .RegWrite_out_MemWB(RegWrite_out_MemWB),
        .PCcal_out_MemWB(PCcal_out_MemWB),
        .Immtoreg_out_MemWB(Immtoreg_out_MemWB),
        .inst_out_MemWB(inst_out_MemWB),
        .Imm_out_MemWB(Imm_out_MemWB)
    );


    assign Data_reg_WB = Immtoreg_out_MemWB ? Imm_out_MemWB : PCcal_out_MemWB ;
    assign Data_out_WB = MemtoReg_out_MemWB[1] ? (MemtoReg_out_MemWB[0]
                                                    ?Data_reg_WB : PC4_out_MemWB) 
                                                : (MemtoReg_out_MemWB[0]
                                                    ?DMem_data_out_MemWB : ALU_out_MemWB);
    
assign PC_out_WB = PC_out_MemWB;
assign inst_out_WB = inst_out_MemWB;
assign Rd_WB = Rd_addr_out_MemWB;
assign reg_wen_WB = RegWrite_out_MemWB;
    
    // Pipeline_WB WB_pip(
    //     .PC4_in_WB(PC4_out_MemWB),
    //     .ALU_in_WB(ALU_out_MemWB),
    //     .DMem_data_WB(DMem_data_out_MemWB),
    //     .MemtoReg_in_WB(MemtoReg_out_MemWB),
    //     .Data_out_WB(Data_out_WB)
    // );



endmodule
