`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/20 21:36:20
// Design Name: 
// Module Name: DataPath
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


module DataPath(
    input wire Branch,
    input wire Jump,
    input wire [31:0] Data_in,
    input wire [1:0] MemtoReg,
    input wire ALUSrc_B,
    input wire [1:0] ImmSel,
    input wire [31:0] inst_field,
    input wire [2:0] ALU_operation,
    input wire clk,
    input wire rst,
    input wire RegWrite,

    output [31:0] ALU_out,
    output [31:0] Data_out,
    output [31:0] PC_out,
    output [31:0] x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,
    output [31:0] x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,
    output [31:0] x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,
    output [31:0] Imm_out,pc_branch,a_val,b_val
    );
    
    wire [31:0] and_2;
    wire [31:0] add_c0;
    wire [31:0] add_c1;
    //wire [31:0] Imm_out;
    wire zero;
    wire [31:0] Rs1_data;
    wire [31:0] mux4T1o0;
    wire [31:0] and_2_res;
    wire [31:0] mux2T1_o0;
    wire [31:0] mux2T1_o1;
    wire [31:0] mux2T1_o3;

    assign pc_branch = mux2T1_o3;
    assign a_val = Rs1_data;
    assign b_val = mux2T1_o0;

    assign add_c1 = Imm_out + PC_out ;//PC branch
    assign add_c0 = 32'h4 + PC_out ;//PC + 4
    assign and_2_res = Branch & zero;
    assign mux2T1_o1 = and_2_res ? add_c1 : add_c0; //is_branch? 1
    assign mux2T1_o3 = Jump ? add_c1 : mux2T1_o1;//is_jump? 1


    ImmGen immgen(.ImmSel(ImmSel),
                  .inst_field(inst_field),
                  .Imm_out(Imm_out)
                  );
    
    // mux4132_0 mux4T1_o0(.s(MemtoReg),
    //                      .I0(ALU_out),
    //                      .I1(Data_in),
    //                      .I2(add_c0),
    //                      .I3(add_c0),
    //                      .o(mux4T1o0)
    //                      );
    assign mux4T1o0 = MemtoReg[1] ? add_c0 : (MemtoReg[0] ? Data_in : ALU_out) ;//写入reg的数据，1x PC+4,00 ALU,01 Data_in(Mem?)
    
    assign mux2T1_o0 = ALUSrc_B ? Imm_out : Data_out;

    RegFile32 Regs(.clk(clk),
                   .rst(rst),
                   .RegWrite(RegWrite),
                   .Rs1_addr(inst_field[19:15]),
                   .Rs2_addr(inst_field[24:20]),
                   .Wt_addr(inst_field[11:7]),
                   .Wt_data(mux4T1o0),
                   .Rs1_data(Rs1_data),
                   .Rs2_data(Data_out),
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

    PCReg PC(.clk(clk),
             .rst(rst),
             .CE(1'b1),
             .D(mux2T1_o3),
             .Q(PC_out));

    ALUT ALU(.A(Rs1_data),
                .B(mux2T1_o0),
                .operator(ALU_operation),
                .res(ALU_out),
                .zero(zero));

endmodule
