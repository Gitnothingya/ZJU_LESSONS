`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/29 16:48:06
// Design Name: 
// Module Name: ID
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
`include "Defines.vh"

module Pipeline_ID(
    `VGA_DBG_RegFile_Outputs
    input clk,
    input rst,
    input reg_wen_in,
    input [4:0] rd_in,
    input [31:0] reg_i_data,
    input [31:0] inst,
    input [31:0] pc,
    //Harzard
    input [4:0] rd_IDEX,
    input mem_ren_IDEX,
    input reg_wen_IDEX,
    input [4:0] rd_EXMEM,
    input mem_ren_EXMEM,
    input reg_wen_EXMEM,
    input [31:0] forward_data_EXMEM,    
    
    output wire [31:0] pcp4,    //jal, jalr, rd = pc + 4
    output wire [31:0] pcpimm,  //auipc, rd = pc + imm
    output wire [4:0] rd,
    output wire [31:0] rs1_val,   //rs1_val
    output wire [31:0] rs2_val,   //rs2_val
    output wire [31:0] imm,   //立即数
    output wire ALUSrc_B,    
    output wire [3:0] alu_ctrl, //ALU 选择控制
    output wire mem_wen,          //内存写使能
    output wire mem_ren,           //表征是不是load指令
    output wire [2:0] MemtoReg, 
    output wire reg_wen,           //寄存器堆读写
    output wire [31:0] PC_BJ,   //跳转PC
    output wire PCSrc,           //PC select
    //forwarding
    output wire [4:0] rs1,
    output wire [4:0] rs2,

    //Data stall
    output reg en_IF,
    output reg en_IFID,
    output reg NOP_IDEX,
    //Control stall
    output reg NOP_IFID
    );

    //指令与寄存器组
    assign rs1 = inst[19:15];
    assign rs2 = inst[24:20];
    assign rd = inst[11:7];

    //指令与控制器
    wire [4:0] OPcode;
    wire [2:0] Fun3;
    wire Fun7;
    wire Ins29;
    assign OPcode = inst[6:2];
    assign Fun3 = inst[14:12];
    assign Fun7 = inst[30];

    //控制信号线
    wire [2:0] ImmSel; //选择立即数产生模式
    wire [1:0]Jump;
    wire is_branch;
    wire [2:0] cmp_ctrl;

    //比较器结果，未必准确
    wire cmp_res;

    //考虑竞争后的线
    wire [31:0] rs1_val_rv;
    wire [31:0] rs2_val_rv;

    //jal, jalr, auipc -> rd
    assign pcp4 = pc + 4;
    assign pcpimm = pc + imm;

    /////////////////////////////////////////////////////////////////////////// Harzard处理开始
    wire rs1_used;
    wire rs2_used;

    assign rs1_used = (OPcode == `OPCODE_ALUOP) | (OPcode == `OPCODE_ALUOP_IMM) | (OPcode == `OPCODE_LOAD) | (OPcode == `OPCODE_JALR) | (OPcode == `OPCODE_STORE) | (OPcode == `OPCODE_BRANCH);
    assign rs2_used = (OPcode == `OPCODE_ALUOP) | (OPcode == `OPCODE_STORE) | (OPcode == `OPCODE_BRANCH);

    wire [1:0] state;
    localparam NORMAL = 2'b00;
    localparam FORWARDA = 2'b01;
    localparam FORWARDB = 2'b10;
    localparam STALL = 2'b11;

    assign state = ((reg_wen_IDEX & rs1_used)&(rd_IDEX != 0)&(rd_IDEX == rs1)
                    | (reg_wen_IDEX & rs2_used)&(rd_IDEX != 0)&(rd_IDEX == rs2)
                    | (mem_ren_EXMEM & rs1_used)&(rd_EXMEM != 0)&(rd_EXMEM != 0)&(rd_EXMEM == rs1)
                    | (mem_ren_EXMEM & rs2_used)&(rd_EXMEM != 0)&(rd_EXMEM != 0)&(rd_EXMEM == rs2)) ? STALL 
                    : (reg_wen_EXMEM & rs1_used)&(rd_EXMEM != 0)&(rd_EXMEM != 0)&(rd_EXMEM == rs1)  ? FORWARDA
                    : (reg_wen_EXMEM & rs2_used)&(rd_EXMEM != 0)&(rd_EXMEM != 0)&(rd_EXMEM == rs2)  ? FORWARDB
                    :  NORMAL;

    assign rs1_val_rv = (state == FORWARDA) ? forward_data_EXMEM : rs1_val;
    assign rs2_val_rv = (state == FORWARDB) ? forward_data_EXMEM : rs2_val;

    //PC跳转控制
    assign PC_BJ = (Jump == `JUMP_JAL || is_branch && cmp_res) ? (pc + imm) : (imm + rs1_val_rv); //jalr
    assign PCSrc = (is_branch & cmp_res) | (Jump != `NOJUMP);

    always @(*) begin
        if(OPcode == `OPCODE_BRANCH | OPcode == `OPCODE_JALR | OPcode == `OPCODE_JAL) begin
            if(state == STALL) begin
                en_IF <= 0;
                en_IFID <= 0;
                NOP_IFID <= 0;
                NOP_IDEX <= 1;
            end
            else if(PCSrc) begin
                en_IF <= 1;
                en_IFID <= 1;
                NOP_IFID <= 1;
                NOP_IDEX <= 0;
            end
            else begin
                en_IF <= 1;
                en_IFID <= 1;
                NOP_IFID <= 0;
                NOP_IDEX <= 0;
            end
        end
        else begin //只检测load-use
            if(mem_ren_IDEX & ((rs1_used & rd_IDEX == rs1) | (rs2_used & rd_IDEX == rs2))) begin    //Data_stall
                en_IF <= 0;
                en_IFID <= 0;
                NOP_IDEX <= 1;
                NOP_IFID <= 0;
            end
            else begin  //不需要stall和插bubble
                en_IF <= 1;
                en_IFID <= 1;
                NOP_IDEX <= 0;
                NOP_IFID <= 0;
            end
        end
    end

    /////////////////////////////////////////////////////////////////////////// Harzard处理结束


    RegFile reg_file(
        `VGA_DBG_RegFile_Arguments
        .clk(~clk),  
        .rst(rst),
        .wen(reg_wen_in),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd_in),
        .i_data(reg_i_data),
        .rs1_val(rs1_val),
        .rs2_val(rs2_val)
    );

    Controller controller(
        .OPcode(OPcode), 
        .Fun3(Fun3),   
        .Fun7(Fun7), 
        //input MIO_ready,
        .ImmSel(ImmSel),
        .ALUSrc_B(ALUSrc_B), 
        .MemtoReg(MemtoReg),
        .Jump(Jump),
        .Branch(is_branch),
        .RegWrite(reg_wen),
        .MemRead(mem_ren),
        .MemWrite(mem_wen),
        .ALU_Control(alu_ctrl),
        .cmp_ctrl(cmp_ctrl)
        //output reg CPU_MIO
    );

    //立即数产生器
    ImmGen immgen(
        .inst(inst),
        .ImmSel(ImmSel),
        .Imm_out(imm)
    );

    Comparator comparator(
        .a_val(rs1_val_rv),
        .b_val(rs2_val_rv),
        .ctrl(cmp_ctrl),
        .result(cmp_res)
    );

endmodule
