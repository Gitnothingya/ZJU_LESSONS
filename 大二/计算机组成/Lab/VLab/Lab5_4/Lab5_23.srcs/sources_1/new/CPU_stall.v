`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/06/13 22:30:39
// Design Name: 
// Module Name: CPU_stall
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


module CPU_stall(
    input [4:0] OPcode_ID,
    input [4:0] OPcode_IDEX,
    input [4:0] Rs1_addr_ID,
    input [4:0] Rs2_addr_ID,
    input Rs1_used,
    input Rs2_used,
    input PCSrc_ID,
    input [4:0] Rd_addr_IDEX,
    input  RegWrite_IDEX,
    input [4:0] Rd_addr_EXMem,
    input RegWrite_ExMem,
    input [4:0] Rd_addr_MemWB,
    input RegWrite_MemWB,

    output reg en_IF,
    output reg en_IFID,
    output reg NOP_IFID,
    output reg NOP_IDEX
    );




    always @* begin
        if(OPcode_ID == 5'b11000 | OPcode_ID == 5'b11011 | OPcode_ID == 5'b11001) begin
            if( RegWrite_IDEX & Rs1_used & (Rs1_addr_ID == Rd_addr_IDEX) & Rs1_addr_ID != 0
              | RegWrite_IDEX & Rs2_used & (Rs2_addr_ID == Rd_addr_IDEX) & Rs2_addr_ID != 0
              | RegWrite_ExMem & Rs1_used & (Rs1_addr_ID == Rd_addr_EXMem) & Rs1_addr_ID != 0
              | RegWrite_ExMem & Rs2_used & (Rs2_addr_ID == Rd_addr_EXMem) & Rs2_addr_ID != 0
              | RegWrite_MemWB & Rs1_used & (Rs1_addr_ID == Rd_addr_MemWB) & Rs1_addr_ID != 0
              | RegWrite_MemWB & Rs2_used & (Rs2_addr_ID == Rd_addr_MemWB) & Rs2_addr_ID != 0    ) begin
                en_IF <= 0;
                en_IFID <= 0;
                NOP_IFID <= 0;
                NOP_IDEX <=1;
                //��תָ���ǰ��������������û��ǰ�ݣ�Ҫ��WB���
                //ifֹͣȡָ�ifid��idֹͣ���У�idexʹ��NOP
            end
            else if(PCSrc_ID) begin
                en_IF <= 1;
                en_IFID <= 1;
                NOP_IFID <= 1;
                NOP_IDEX <=0;
                //ȷ����ת��
                //if����ȡָ�ifid ��ǰ����һ��NOP������ȥ
            end
            else begin
                en_IF <= 1;
                en_IFID <= 1;
                NOP_IFID <= 0;
                NOP_IDEX <=0;
                //��ͨ�����ִ����ȥ
            end
        end
        else begin //�ж�load_use
            if( (OPcode_IDEX == 5'b00000) & Rs1_addr_ID != 0 &Rs2_addr_ID != 0
              & ((Rs1_used & Rs1_addr_ID == Rd_addr_IDEX) 
              | (Rs2_used & Rs2_addr_ID == Rd_addr_IDEX)) ) begin
                en_IF <= 0;
                en_IFID <= 0;
                NOP_IFID <= 0;
                NOP_IDEX <= 1;
                //load_use 
                // if ifid ͣ�ڣ��൱��id�׶���һ��������ִ��ǰһ��ָ��
                // ex����nop
              end
              else begin
                en_IF <= 1;
                en_IFID <= 1;
                NOP_IDEX <= 0;
                NOP_IFID <= 0;
                //��ͨ���
              end
        end

    end

endmodule
