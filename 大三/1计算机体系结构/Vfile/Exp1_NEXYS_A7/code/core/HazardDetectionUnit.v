`timescale 1ps/1ps

module HazardDetectionUnit(
    input clk,
    input Branch_ID, rs1use_ID, rs2use_ID,
    input[1:0] hazard_optype_ID,
    input[4:0] rd_EXE, rd_MEM, rs1_ID, rs2_ID, rs2_EXE,
    input rd_w_EXE, rd_w_MEM,//add new signal
    input[4:0] OP_ID, OP_EXE, OP_MEM,//add new logic
    output reg PC_EN_IF, reg_FD_EN, reg_FD_stall, reg_FD_flush,
        reg_DE_EN, reg_DE_flush, reg_EM_EN, reg_EM_flush, reg_MW_EN,
    output reg forward_ctrl_ls,
    output reg [1:0] forward_ctrl_A, forward_ctrl_B
);
            //according to the diagram, design the Hazard Detection Unit
    //forwarding
    always @* begin
        //forward_A
        if(rs1use_ID & rd_w_EXE & (rs1_ID == rd_EXE) & (rs1_ID != 0) ) begin//ex forward
            forward_ctrl_A = 2'b01;
        end
        else if(rs1use_ID & rd_w_MEM & (rs1_ID == rd_MEM) & (OP_EXE == 5'b00000 ) & (rs1_ID != 0) ) begin//mem load forward
            forward_ctrl_A = 2'b11;
        end
        else if(rs1use_ID & rd_w_MEM & (rs1_ID == rd_MEM) & (rs1_ID != 0) )begin//mem alu forward
            forward_ctrl_A = 2'b10;
        end
        else begin
            forward_ctrl_A = 2'b00;//no forward
        end
        //forward_B
        if(rs2use_ID & rd_w_EXE & (rs2_ID == rd_EXE) & (rs2_ID != 0) ) begin
            forward_ctrl_B = 2'b01;
        end
        else if(rs2use_ID & rd_w_MEM & (rs2_ID == rd_MEM) & (OP_EXE == 5'b00000 ) & (rs2_ID != 0) ) begin
            forward_ctrl_B = 2'b11;
        end
        else if(rs2use_ID & rd_w_MEM & (rs2_ID == rd_MEM) & (rs2_ID != 0) )begin
            forward_ctrl_B = 2'b10;
        end
        else begin
            forward_ctrl_B = 2'b00;
        end
        //forward_ls
        if((OP_EXE == 5'b01000) & (OP_MEM == 5'b00000) & (rs2_EXE == rd_MEM) & (rs2_EXE != 0) )begin //load rd == store rs2
            forward_ctrl_ls = 1;
        end
        else begin
            forward_ctrl_ls = 0;
        end
    end

    //stall
    always @* begin
        if(OP_EXE == 5'b00000 ) begin
            if( (rs1use_ID & rs1_ID == rd_EXE & (rs1_ID != 0) ) |
                (rs2use_ID & rs2_ID == rd_EXE & (rs2_ID != 0) & OP_ID != 5'b01000) 
            ) begin
                PC_EN_IF     <= 0;//Ex为load，前面全部阻塞，不取指令
                reg_FD_stall <= 1;//寄存器不变
                reg_FD_flush <= 0;//IFID不用插入nop
                reg_DE_flush <= 1;//IDEX插入nop填补空缺的EX段

                reg_FD_EN    <= 1;//
                reg_DE_EN    <= 1;//
                reg_EM_EN    <= 1;
                reg_EM_flush <= 0;
                reg_MW_EN    <= 1;
            end
            else begin//store指令的rs2有前递，普通执行下去即可
                PC_EN_IF     <= 1;//取新指令
                reg_FD_stall <= 0;//无特殊情况
                reg_FD_flush <= 0;//
                reg_DE_flush <= 0;//

                reg_FD_EN    <= 1;//
                reg_DE_EN    <= 1;//
                reg_EM_EN    <= 1;
                reg_EM_flush <= 0;
                reg_MW_EN    <= 1;
            end
        end
        else if(Branch_ID)begin
            PC_EN_IF     <= 1;//接纳新的指令
            reg_FD_stall <= 0;//不停顿
            reg_FD_flush <= 1;//丢弃旧指令,ID插入nop,IF进入新指令，旧指令消失
            reg_DE_flush <= 0;//IDEX不用变，跳转指令继续运行
            //不变项
            reg_FD_EN    <= 1;//
            reg_DE_EN    <= 1;//
            reg_EM_EN    <= 1;
            reg_EM_flush <= 0;
            reg_MW_EN    <= 1;
        end
        else begin
            PC_EN_IF     <= 1;
            reg_FD_stall <= 0;
            reg_FD_flush <= 0;
            reg_DE_flush <= 0;

            reg_FD_EN    <= 1;//
            reg_DE_EN    <= 1;//
            reg_EM_EN    <= 1;
            reg_EM_flush <= 0;
            reg_MW_EN    <= 1;
        end
    end





endmodule