`include "Defines.vh"

module Core (
    `VGA_DBG_Core_Outputs
    input clk, rst,
    input [31:0] inst, //32位指令
    input [31:0] dmem_o_data, //DMem的数据
    output [31:0] imem_addr, //下一个执行的指令地址，由PC管理
    output dmem_wen, //DMem写使能
    output [31:0] dmem_addr, //DMem的地址
    output [31:0] dmem_i_data //写到DMem的数据
);

    ///////////////////////////////////////////////////////////////////////////////////// IF
    wire [31:0] PC_IF;  //表示IF的PC输出,即当前IF取到的指令的PC
    assign imem_addr = PC_IF; 

    wire en_IF;

    ///////////////////////////////////////////////////////////////////////////////////// IF/ID
    wire [31:0] PC_IFID;
    wire [31:0] inst_IFID;

    wire en_IFID;
    wire NOP_IFID;
    wire valid_IFID;

    ///////////////////////////////////////////////////////////////////////////////////// ID   
    wire [31:0] pcp4_ID;
    wire [31:0] pcpimm_ID;
    wire [4:0] rd_ID;
    wire [31:0] rs1_val_ID;
    wire [31:0] rs2_val_ID;
    wire [31:0] imm_ID;
    wire ALUSrc_B_ID;
    wire [3:0] alu_ctrl_ID;
    wire mem_wen_ID;
    wire mem_ren_ID;
    wire [2:0] MemtoReg_ID;
    wire reg_wen_ID;
    wire [31:0] PC_BJ_ID;
    wire PCSrc_ID; 
    wire [4:0] rs1_ID;
    wire [4:0] rs2_ID;

    ///////////////////////////////////////////////////////////////////////////////////// ID/EX
    wire [31:0] pcp4_IDEX;
    wire [31:0] pcpimm_IDEX;
    wire [4:0] rd_IDEX;
    wire [31:0] rs1_val_IDEX;
    wire [31:0] rs2_val_IDEX;
    wire [31:0] imm_IDEX;
    wire ALUSrc_B_IDEX;
    wire [3:0] alu_ctrl_IDEX;
    wire mem_wen_IDEX;
    wire mem_ren_IDEX;
    wire [2:0] MemtoReg_IDEX;
    wire reg_wen_IDEX;
    wire [4:0] rs1_IDEX;
    wire [4:0] rs2_IDEX;
    wire [31:0] inst_IDEX;

    wire NOP_IDEX;
    wire valid_IDEX;

    ///////////////////////////////////////////////////////////////////////////////////// EX
    wire [31:0] rs2_val_EX;
    wire [31:0] alu_res_EX;

    ///////////////////////////////////////////////////////////////////////////////////// EX/MEM
    wire [31:0] pcp4_EXMEM;
    wire [31:0] pcpimm_EXMEM;
    wire [4:0] rd_EXMEM;
    wire [31:0] alu_res_EXMEM;
    wire [31:0] rs2_val_EXMEM;
    wire mem_wen_EXMEM;
    wire mem_ren_EXMEM;
    wire [2:0] MemtoReg_EXMEM;
    wire reg_wen_EXMEM;
    wire [31:0] imm_EXMEM;
    wire [31:0] inst_EXMEM;
    wire [31:0] forward_data_EXMEM;
    wire valid_EXMEM;

    ///////////////////////////////////////////////////////////////////////////////////// MEM

    ///////////////////////////////////////////////////////////////////////////////////// MEM/WB
    wire [31:0] pcp4_MEMWB;
    wire [31:0] pcpimm_MEMWB;
    wire [4:0] rd_MEMWB;
    wire [31:0] alu_res_MEMWB;
    wire [31:0] dmem_o_data_MEMWB;
    wire [2:0] MemtoReg_MEMWB;
    wire reg_wen_MEMWB;
    wire [31:0] imm_MEMWB;
    wire [31:0] inst_MEMWB;
    wire valid_MEMWB;

    ///////////////////////////////////////////////////////////////////////////////////// WB
    wire [31:0] reg_i_data_WB;


    /////////////////////////////////////////////////////////////////////////////////////              
    `VGA_DBG_Core_Assignments


    Pipeline_IF IF_0(
        .clk(clk),
        .rst(rst),
        .en(en_IF),
        .PC_in_IF(PC_BJ_ID),
        .PCSrc(PCSrc_ID),
        .PC_out(PC_IF)
    );


    IF_ID IF_ID_0(
        .clk(clk),
        .rst(rst),
        .en(en_IFID),
        .PC_in(PC_IF),
        .inst_in(inst),
        .NOP_IFID(NOP_IFID),
        .PC_out(PC_IFID),
        .inst_out(inst_IFID),
        .valid_IFID(valid_IFID)
    );      

    Pipeline_ID ID_0(
        `VGA_DBG_RegFile_Arguments
        .clk(clk),
        .rst(rst),
        .reg_wen_in(reg_wen_MEMWB),
        .rd_in(rd_MEMWB),
        .reg_i_data(reg_i_data_WB),
        .inst(inst_IFID),
        .pc(PC_IFID),
        //Harzard，包括load-use和控制竞争
        .rd_IDEX(rd_IDEX),
        .mem_ren_IDEX(mem_ren_IDEX),
        .reg_wen_IDEX(reg_wen_IDEX),
        .rd_EXMEM(rd_EXMEM),
        .mem_ren_EXMEM(mem_ren_EXMEM),
        .reg_wen_EXMEM(reg_wen_EXMEM),
        .forward_data_EXMEM(forward_data_EXMEM),

        .pcp4(pcp4_ID),
        .pcpimm(pcpimm_ID),
        .rd(rd_ID),
        .rs1_val(rs1_val_ID),
        .rs2_val(rs2_val_ID),
        .imm(imm_ID),
        .ALUSrc_B(ALUSrc_B_ID),
        .alu_ctrl(alu_ctrl_ID),
        .mem_wen(mem_wen_ID),
        .mem_ren(mem_ren_ID),
        .MemtoReg(MemtoReg_ID),
        .reg_wen(reg_wen_ID),
        .PC_BJ(PC_BJ_ID),
        .PCSrc(PCSrc_ID),
        //用于EX级的forwarding
        .rs1(rs1_ID),
        .rs2(rs2_ID),
        //Harzard
        .en_IF(en_IF),
        .en_IFID(en_IFID),
        .NOP_IDEX(NOP_IDEX),
        //Control stall
        .NOP_IFID(NOP_IFID)
    );


    ID_EX ID_EX_0(
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .pcp4_in(pcp4_ID),
        .pcpimm_in(pcpimm_ID),
        .rd_in(rd_ID),
        .rs1_val_in(rs1_val_ID),
        .rs2_val_in(rs2_val_ID),
        .imm_in(imm_ID),
        .ALUSrc_B_in(ALUSrc_B_ID),
        .alu_ctrl_in(alu_ctrl_ID),
        .mem_wen_in(mem_wen_ID),
        .mem_ren_in(mem_ren_ID),
        .MemtoReg_in(MemtoReg_ID),
        .reg_wen_in(reg_wen_ID),
        .inst_in(inst_IFID),
        //forwarding
        .rs1_in(rs1_ID),
        .rs2_in(rs2_ID),
        //
        .NOP_IDEX(NOP_IDEX),
        .valid_in(valid_IFID),

        .pcp4_out(pcp4_IDEX),
        .pcpimm_out(pcpimm_IDEX),
        .rd_out(rd_IDEX),
        .rs1_val_out(rs1_val_IDEX),
        .rs2_val_out(rs2_val_IDEX),
        .imm_out(imm_IDEX),
        .ALUSrc_B_out(ALUSrc_B_IDEX),
        .alu_ctrl_out(alu_ctrl_IDEX),
        .mem_wen_out(mem_wen_IDEX),
        .mem_ren_out(mem_ren_IDEX),
        .MemtoReg_out(MemtoReg_IDEX),
        .reg_wen_out(reg_wen_IDEX),
        .inst_out(inst_IDEX),
        //forwarding
        .rs1_out(rs1_IDEX),
        .rs2_out(rs2_IDEX),
        //
        .valid_out(valid_IDEX)

    );

    Pipeline_EX EX_0(
        .rs1_val(rs1_val_IDEX),
        .rs2_val_in(rs2_val_IDEX),
        .imm(imm_IDEX),
        .ALUSrc_B(ALUSrc_B_IDEX),
        .alu_ctrl(alu_ctrl_IDEX),

        //forwarding
        .rd_EXMEM(rd_EXMEM),
        .reg_wen_EXMEM(reg_wen_EXMEM),
        .forward_data_EXMEM(forward_data_EXMEM),
        .rd_MEMWB(rd_MEMWB),
        .reg_wen_MEMWB(reg_wen_MEMWB),
        .forward_data_WB(reg_i_data_WB),
        .rs1(rs1_IDEX),
        .rs2(rs2_IDEX),

        .rs2_val_out(rs2_val_EX),
        .alu_res(alu_res_EX)
    );

    EX_MEM EX_MEM_0(
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .pcp4_in(pcp4_IDEX),
        .pcpimm_in(pcpimm_IDEX),
        .rd_in(rd_IDEX),
        .alu_res_in(alu_res_EX),
        .rs2_val_in(rs2_val_EX),
        .mem_wen_in(mem_wen_IDEX),
        .mem_ren_in(mem_ren_IDEX),
        .MemtoReg_in(MemtoReg_IDEX),
        .reg_wen_in(reg_wen_IDEX),
        .inst_in(inst_IDEX),
        .imm_in(imm_IDEX),
        .valid_in(valid_IDEX),
        .pcp4_out(pcp4_EXMEM),
        .pcpimm_out(pcpimm_EXMEM),
        .rd_out(rd_EXMEM),
        .alu_res_out(alu_res_EXMEM),
        .rs2_val_out(rs2_val_EXMEM),
        .mem_wen_out(mem_wen_EXMEM),
        .mem_ren_out(mem_ren_EXMEM),
        .MemtoReg_out(MemtoReg_EXMEM),
        .reg_wen_out(reg_wen_EXMEM),
        .inst_out(inst_EXMEM),
        .imm_out(imm_EXMEM),
        .forward_data(forward_data_EXMEM),
        .valid_out(valid_EXMEM)
    );

    Pipeline_MEM MEM_0(
        .alu_res(alu_res_EXMEM),
        .rs2_val(rs2_val_EXMEM),
        .mem_wen(mem_wen_EXMEM),
        .dmem_wen(dmem_wen),
        .dmem_addr(dmem_addr),
        .dmem_i_data(dmem_i_data)
    );

    MEM_WB MEM_WB_0(
        .clk(clk),
        .rst(rst),
        .en(1'b1),
        .pcp4_in(pcp4_EXMEM),
        .pcpimm_in(pcpimm_EXMEM),
        .rd_in(rd_EXMEM),
        .alu_res_in(alu_res_EXMEM),
        .dmem_o_data_in(dmem_o_data),
        .MemtoReg_in(MemtoReg_EXMEM),
        .reg_wen_in(reg_wen_EXMEM),
        .inst_in(inst_EXMEM),
        .imm_in(imm_EXMEM),
        .valid_in(valid_EXMEM),
        .pcp4_out(pcp4_MEMWB),
        .pcpimm_out(pcpimm_MEMWB),
        .rd_out(rd_MEMWB),
        .alu_res_out(alu_res_MEMWB),
        .dmem_o_data_out(dmem_o_data_MEMWB),
        .MemtoReg_out(MemtoReg_MEMWB),
        .reg_wen_out(reg_wen_MEMWB),
        .inst_out(inst_MEMWB),
        .imm_out(imm_MEMWB),
        .valid_out(valid_MEMWB)
    );


    Pipeline_WB WB_0(
        .pcp4(pcp4_MEMWB),
        .pcpimm(pcpimm_MEMWB),
        .alu_res(alu_res_MEMWB),
        .dmem_o_data(dmem_o_data_MEMWB),
        .imm(imm_MEMWB),
        .MemtoReg(MemtoReg_MEMWB),
        .reg_i_data(reg_i_data_WB)
    );


endmodule
