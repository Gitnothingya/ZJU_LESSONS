`include "Defines.vh"

module Csr(
    `VGA_DBG_Csr_Outputs //Debug信号
    input clk, rst,
    input ext_int,            //外部中断，硬件中断
    input tim_int,             //时钟中断
    input wen,               //写使能
    input[11:0] ind,         //访问的csr的index
    input[1:0] ctrl,         //控制信号
    input[31:0] i_data,      //输入
    input[31:0] Cause,       //例外中断或mret
    input[31:0] inst,
    input[31:0] pc,
    input[31:0] pc_branch,
    input[31:0] alu_res,
    output reg[31:0] r_data,  //输出，即记录csr的寄存器
    output wire[2:0] ien,
    output reg[31:0] csr_pc
);

    reg[31:0] mstatus_o;
    
    /*Interrupt[31] 0表示exception，1表示中断, ExceptionCode[30:0]，
    表示中断/异常的原因*/
    reg[31:0] mcause_o;

    reg[31:0] mepc_o;
    reg[31:0] mtval_o;

    //存中断处理程序的入口地址, BASE[31:2], MODE[1:0] = 0, BASE[31:2]->PC
    reg[31:0] mtvec_o;

    reg[31:0] mie_o;
    reg[31:0] mip_o;

    reg[31:0] temp; //存中间结果

    assign ien = {mstatus_o[3], mie_o[11], mie_o[7]};

    `VGA_DBG_Csr_Assignments

    always @(*) begin
        case (ind)
            `CSR_MSTATUS: r_data = mstatus_o;
            `CSR_MIE: r_data = mie_o;
            `CSR_MIP: r_data = mip_o;
            `CSR_MEPC: r_data = mepc_o;
            `CSR_MCAUSE: r_data = mcause_o;
            `CSR_MTVAL: r_data = mtval_o;
            `CSR_MTVEC: r_data = mtvec_o;
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if(rst == 1) begin
            mstatus_o <= 0;
            mcause_o <= 0;
            mepc_o <= 0;
            mtval_o <= 0;
            mtvec_o <= 0;
            mie_o <= 0;
            mip_o <= 0;
            temp <= 0; 
        end
        else if(Cause == `CSR_NORMAL) begin
            if(wen) begin //指令访问
                case (ctrl)
                    `CSR_CTRL_W: temp = i_data; 
                    `CSR_CTRL_S: temp = r_data | i_data;
                    `CSR_CTRL_C: temp = r_data & i_data;
                endcase
                
                case (ind)
                    `CSR_MSTATUS: mstatus_o = temp;
                    `CSR_MIE: mie_o = temp;
                    //`CSR_MIP: mip_o = temp; 只读
                    `CSR_MEPC: mepc_o = temp;
                    //`CSR_MCAUSE: mcause_o = temp; 只读
                    `CSR_MTVAL: mtval_o = temp;
                    `CSR_MTVEC: mtvec_o = temp;
                endcase
            end
        end
        else begin  //有中断或exception或mret
            if(Cause == `CSR_MRET) begin
                mstatus_o[3] = mstatus_o[7];
                mstatus_o[7] = 1'b1;
                csr_pc = mepc_o;
            end
            else begin //中断或exception
                mcause_o = Cause;
                csr_pc = {mtvec_o[31:2], 2'b0};
                mepc_o = pc; //软件里判断是否需要+4
                mstatus_o[7] = mstatus_o[3];
                //mstatus_o[3] = 0; 只能通过软件给0，否则是逻辑电路，Cause会立马变NORMAL，跳不过去
                case (Cause)
                    `CSR_CAUSE_ILLEGAL_INST: mtval_o = inst;
                    `CSR_CAUSE_LOAD_ADDR_MISALIGN: mtval_o = alu_res;
                    `CSR_CAUSE_STORE_ADDR_MISALIGN: mtval_o = alu_res;
                    `CSR_CAUSE_INST_ADDR_MISALIGN: mtval_o = pc_branch; 
                    default: mtval_o = 0;
                endcase
            end
        end
    end

    always @(*) begin
        mip_o[7] = tim_int;
        mip_o[11] = ext_int;
    end

endmodule
