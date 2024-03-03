`include "Defines.vh"

module Core (
    `VGA_DBG_Core_Outputs
    input clk, rst,
    input [31:0] inst, //32位指令
    input [31:0] dmem_o_data, //DMem的数据
    output [31:0] imem_addr, //下一个执行的指令地址，由PC管理
    output dmem_wen, //DMem写使能
    output [31:0] dmem_addr, //DMem的地址
    output [31:0] dmem_i_data, //写到DMem的数据
    input ext_int,            //外部中断，硬件中断
    input tim_int             //时钟中断
);

    wire [31:0] alu_res;
    wire cmp_res;
    wire [31:0] rs1_val, rs2_val;
    wire [31:0] a_val, b_val;
    wire [4:0] rs1, rs2, rd;
    wire [31:0] reg_i_data;

    //异常处理
    wire [31:0] Cause;
    wire [1:0] cause_p1;
    wire LNotAlign;
    wire SNotAlign;
    wire PCNotAlign;
    wire ExtInt;
    wire TimInt;
    wire PCSrc_CSR; //大写
    reg csr_jump;

    //控制信号线
    wire ALUSrc_B; //ALU第二个输入的选择
    wire [2:0] ImmSel; //选择立即数产生模式
    wire [2:0] MemtoReg; //选择输入寄存器组的数据
    wire [1:0]Jump;
    wire is_branch;
    wire reg_wen;
    wire mem_ren; //暂时好像没什么用
    wire mem_wen;
    wire [3:0] alu_ctrl;
    wire [2:0] cmp_ctrl;
    wire reg_wen1;

    assign reg_wen1 = reg_wen && (Cause == `CSR_NORMAL);

    //立即数产生器
    wire [31:0] imm;

    //指令与寄存器组
    assign rs1 = inst[19:15];
    assign rs2 = inst[24:20];
    assign rd = inst[11:7];

    //ALU的输入
    assign a_val = rs1_val;
    assign b_val = (ALUSrc_B == `RS2_TO_ALU) ? rs2_val : imm;

    //PC线
    wire [31:0] PC_in;
    wire [31:0] pc;
    assign imem_addr = pc; 

    //DMEM的输入
    //assign dmem_read = mem_ren; //读使能
    assign dmem_wen = mem_wen && (Cause == `CSR_NORMAL); //写使能
    assign dmem_addr = alu_res; //地址
    assign dmem_i_data = rs2_val; //数据

    //指令与控制器
    wire [4:0] OPcode;
    wire [2:0] Fun3;
    wire Fun7;
    wire Ins29;
    assign OPcode = inst[6:2];
    assign Fun3 = inst[14:12];
    assign Fun7 = inst[30];
    assign Ins29 = inst[29];

    //Csr
    wire csr_wen;
    wire csr_wen1; 
    wire [11:0] csr_ind; 
    wire [1:0] csr_ctrl;
    wire [31:0] csr_i_data; 
    wire [31:0] csr_r_data;
    wire CSRSrc;
    wire[2:0] ien;
    wire[31:0] csr_pc;

    assign csr_wen1 = csr_wen && (Cause == `CSR_NORMAL);
    assign csr_ind = inst[31:20];
    assign csr_i_data = (CSRSrc == `REG_TO_CSR) ? rs1_val : imm;

    //纯属为了能Debug而补充的信号，与本人设计无关，为了不改变原先设计，就重新定义命名了
    wire [31:0] pc_branch; //
    wire is_imm;
    wire is_auipc; //
    wire is_lui; //
    wire is_jal; //
    wire is_jalr; //
    wire do_branch; //

    assign is_jal = (Jump == `JUMP_JAL);
    assign is_jalr = (Jump == `JUMP_JALR);
    assign is_auipc = (inst[6:2] == `OPCODE_AUIPC);
    assign is_lui = (inst[6:2] == `OPCODE_LUI);
    assign do_branch = (Jump || (is_branch && cmp_res));
    assign is_imm = !(ImmSel == `IMM_N);
    //辅助
    assign pc_branch = do_branch ? PC_in : 0;




    /////////////////////////////////////////////////////////////////////////////////////

    //REGFILE的数据输入
    assign reg_i_data = MemtoReg == `ALU_TO_REG ? alu_res : MemtoReg == `DMEM_TO_REG ? dmem_o_data : MemtoReg == `IMM_TO_REG ? imm : MemtoReg == `IMMPPC_TO_REG ? imm + pc : MemtoReg == `CSR_TO_REG ? csr_r_data : pc + 4;

    //PC控制
    assign PC_in = (Jump == `JUMP_JAL || is_branch && cmp_res) ? (pc + imm) : (Jump == `JUMP_JALR) ? (pc + rs1_val) : (pc + 4); //jalr rs1和rd相同有问题

    //异常处理
    assign LNotAlign = (OPcode == `OPCODE_LOAD) && (alu_res[1:0] != 2'b00);
    assign SNotAlign = (OPcode == `OPCODE_STORE) && (alu_res[1:0] != 2'b00);
    assign PCNotAlign = (pc_branch[1:0] != 2'b00);
    assign ExtInt = ien[1] && ext_int;
    assign TimInt = ien[0] && tim_int;

    assign Cause = (!ien[2]) ? `CSR_NORMAL : ExtInt ? `CSR_CAUSE_M_EXTERNAL_INT : TimInt ? `CSR_CAUSE_M_TIMER_INT : 
        LNotAlign ? `CSR_CAUSE_LOAD_ADDR_MISALIGN : SNotAlign ? `CSR_CAUSE_STORE_ADDR_MISALIGN : 
        PCNotAlign ? `CSR_CAUSE_INST_ADDR_MISALIGN : (cause_p1 == `ILLINS) ? `CSR_CAUSE_ILLEGAL_INST : 
        (cause_p1 == `ECALL) ? `CSR_CAUSE_ECALL_FROM_M : (cause_p1 == `MRET) ? `CSR_MRET : `CSR_NORMAL; 

    assign PCSrc_CSR = csr_jump;

    always @(negedge clk) begin
        csr_jump = (Cause != `CSR_NORMAL);
    end

                   
    `VGA_DBG_Core_Assignments

    //模块
    Alu alu(
        .a_val(a_val),
        .b_val(b_val),
        .ctrl(alu_ctrl),
        .result(alu_res)
    );

    Comparator comparator(
        .a_val(rs1_val),
        .b_val(rs2_val),
        .ctrl(cmp_ctrl),
        .result(cmp_res)
    );

    RegFile reg_file(
        `VGA_DBG_RegFile_Arguments
        .clk(~clk),
        .rst(rst),
        .wen(reg_wen1),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .i_data(reg_i_data),
        .rs1_val(rs1_val),
        .rs2_val(rs2_val)
    );

    Csr csr(
        `VGA_DBG_Csr_Arguments
        .clk(~clk),
        .rst(rst),
        .ext_int(ext_int),            //外部中断，硬件中断
        .tim_int(tim_int),             //时钟中断
        .wen(csr_wen1),
        .ind(csr_ind),
        .ctrl(csr_ctrl),
        .i_data(csr_i_data),
        .Cause(Cause),
        .inst(inst),
        .pc(pc),
        .pc_branch(pc_branch),
        .alu_res(alu_res),
        .r_data(csr_r_data),
        .ien(ien),
        .csr_pc(csr_pc)
    );

    Controller controller(
        .OPcode(OPcode), 
        .Fun3(Fun3),   
        .Fun7(Fun7),
        .Ins29(Ins29),    
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
        .cmp_ctrl(cmp_ctrl),
        .csr_ctrl(csr_ctrl),
        .CSRSrc(CSRSrc),
        .csr_wen(csr_wen),
        .cause_p1(cause_p1)
        //output reg CPU_MIO
    );

    //立即数产生器
    ImmGen immgen(
        .inst(inst),
        .ImmSel(ImmSel),
        .Imm_out(imm)
    );

    //PC模块，就是个D触发器
    PC pc_0(
        .clk(clk),
        .rst(rst),
        .PCSrc_csr(PCSrc_CSR),
        .PC_in(PC_in), //下一周期的预PC值
        .PC_csr(csr_pc), //来自src的PC值
        .PC_out(pc) //当前的PC值
    );

endmodule
