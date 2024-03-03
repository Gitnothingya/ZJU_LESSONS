`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/11 16:51:46
// Design Name: 
// Module Name: RV_INT
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


module RV_INT(
    input clk,
    input reset,
    input INT,
    input ecall,
    input mret,
    input ill_instr,
    input [31:0] inst,
    input [31:0]pc_next,

    output reg [31:0] pc,
    output [31:0] mstatus_o,
    output [31:0] mcause_o,
    output [31:0] mepc_o,
    output [31:0] mtval_o,
    output [31:0] mtvec_o

    );
    //reg [31:0] pc;
reg [31:0] mstatus;
reg [31:0] mcause;
reg [31:0] mepc;
reg [31:0] mtval;
reg [31:0] mtvec;

wire [3:0] type;
assign type = {INT,ecall,mret,ill_instr};
    always @* begin
        if(reset==1)begin
            mstatus = 0;
            mcause = 0;
            mepc = 0;
            mtval = 0;
            mtvec = 0;
            //pc = 0;
        end
        else begin
            case(type)
                4'b0000:begin//type={INT,ecall,mret,ill_instr};
                    mstatus   = mstatus;
                    mcause    = mcause;
                    mepc      = mepc;
                    mtval     = mtval;
                    mtvec     = mtvec;
                    pc  = pc_next;
                    end
                4'b0001:begin//type={INT,ecall,mret,ill_instr};
                    mstatus = 32'h00000001;
                    mcause  = 32'h03333333;
                    mepc    = pc_next;
                    mtval   = inst ;

                    mtvec   = 32'h0000027c;
                    pc      = mtvec;
                    end
                4'b0010:begin//type<={INT,ecall,mret,ill_instr};
                    pc = mepc;
                    mstatus = 32'h00000000;
                    mcause  = 32'h00000000;
                    mepc    = 0;
                    mtval   = 0;

                    mtvec   = 32'h0000000;
                    end
                4'b0100:begin//type<={INT,ecall,mret,ill_instr};
                    mstatus = 32'h00000100;
                    mcause  = 32'h01111111;
                    mepc    = pc_next;
                    mtval   = pc_next-4;

                    mtvec   = 32'h00000264;
                    pc      = mtvec;
                    end
                4'b1000:begin//type<={INT,ecall,mret,ill_instr};
                //if(mstatus==0)begin
                    mstatus = 32'h00001000;
                    mcause  = 32'h80000000;
                    mepc    = pc_next;
                    mtval   = 32'h12345678;

                    mtvec   = 32'h00000294;
                    pc      = mtvec;
                //end
                //else pc<=pc_next;
                    end
                default:begin
                    mstatus = 32'h00000000;
                    mcause  = 32'h00000000;
                    mepc    = 0;
                    mtval   = 0;
                    mtvec   = 0;
                    pc      = pc_next;
                end

            endcase
        end
    end


assign mstatus_o = mstatus;
assign mcause_o = mcause;
assign mepc_o = mepc;
assign mtval_o = mtval;
assign mtvec_o = mtvec;

// assign mstatus_o = 0;
// assign mcause_o = 0; 
// assign mepc_o = 0;   
// assign mtval_o = 0;  
// assign mtvec_o = 0;  


endmodule
