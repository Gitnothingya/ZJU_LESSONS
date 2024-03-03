`include "Defines.vh"

module Csr(
    `VGA_DBG_Csr_Outputs //Debug�ź�
    input clk, rst,
    input ext_int,            //�ⲿ�жϣ�Ӳ���ж�
    input tim_int,             //ʱ���ж�
    input wen,               //дʹ��
    input[11:0] ind,         //���ʵ�csr��index
    input[1:0] ctrl,         //�����ź�
    input[31:0] i_data,      //����
    input[31:0] Cause,       //�����жϻ�mret
    input[31:0] inst,
    input[31:0] pc,
    input[31:0] pc_branch,
    input[31:0] alu_res,
    output reg[31:0] r_data,  //���������¼csr�ļĴ���
    output wire[2:0] ien,
    output reg[31:0] csr_pc
);

    reg[31:0] mstatus_o;
    
    /*Interrupt[31] 0��ʾexception��1��ʾ�ж�, ExceptionCode[30:0]��
    ��ʾ�ж�/�쳣��ԭ��*/
    reg[31:0] mcause_o;

    reg[31:0] mepc_o;
    reg[31:0] mtval_o;

    //���жϴ���������ڵ�ַ, BASE[31:2], MODE[1:0] = 0, BASE[31:2]->PC
    reg[31:0] mtvec_o;

    reg[31:0] mie_o;
    reg[31:0] mip_o;

    reg[31:0] temp; //���м���

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
            if(wen) begin //ָ�����
                case (ctrl)
                    `CSR_CTRL_W: temp = i_data; 
                    `CSR_CTRL_S: temp = r_data | i_data;
                    `CSR_CTRL_C: temp = r_data & i_data;
                endcase
                
                case (ind)
                    `CSR_MSTATUS: mstatus_o = temp;
                    `CSR_MIE: mie_o = temp;
                    //`CSR_MIP: mip_o = temp; ֻ��
                    `CSR_MEPC: mepc_o = temp;
                    //`CSR_MCAUSE: mcause_o = temp; ֻ��
                    `CSR_MTVAL: mtval_o = temp;
                    `CSR_MTVEC: mtvec_o = temp;
                endcase
            end
        end
        else begin  //���жϻ�exception��mret
            if(Cause == `CSR_MRET) begin
                mstatus_o[3] = mstatus_o[7];
                mstatus_o[7] = 1'b1;
                csr_pc = mepc_o;
            end
            else begin //�жϻ�exception
                mcause_o = Cause;
                csr_pc = {mtvec_o[31:2], 2'b0};
                mepc_o = pc; //������ж��Ƿ���Ҫ+4
                mstatus_o[7] = mstatus_o[3];
                //mstatus_o[3] = 0; ֻ��ͨ�������0���������߼���·��Cause�������NORMAL��������ȥ
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
