`timescale 1ns / 1ps

module ExceptionUnit(
    input clk, rst,
    input csr_rw_in,
    // write/set/clear (funct bits from instruction)
    input[1:0] csr_wsc_mode_in, // inst_MEM[13:12]
    input csr_w_imm_mux,        //csr_w_imm_mux_ctrl _mem
    input[11:0] csr_rw_addr_in, //inst_MEM[31:20]
    input[31:0] csr_w_data_reg, //rs1_data_MEM
    input[4:0] csr_w_data_imm,  //rs1_MEM and imm
    output [31:0] csr_r_data_out, //csr to reg

    input interrupt,
    input illegal_inst,
    input l_access_fault,
    input s_access_fault,
    input ecall_m,

    input mret,

    input [31:0] addr_access_fault,
    input [31:0] inst_ill,

    input[31:0] epc_cur,    //PC_WB
    input[31:0] epc_next,   //
    output [31:0] PC_redirect,
    output redirect_mux,

    output reg_FD_flush, reg_DE_flush, reg_EM_flush, reg_MW_flush, 
    output  RegWrite_cancel
);
    // According to the diagram, design the Exception Unit
    // You can modify any code in this file if needed!
    wire [11:0] csr_waddr;
    wire [31:0] csr_wdata;// 数据
    wire  csr_w;
    wire [1:0] csr_wsc; //指令模式
    wire [11:0] csr_raddr;

    wire[31:0] mstatus;
    wire[31:0] csr_rdata;

    CSRRegs csr(.clk(clk),.rst(rst),.csr_w(csr_w),.raddr(csr_raddr),.waddr(csr_waddr),
        .wdata(csr_wdata),.rdata(csr_rdata),.mstatus_out(mstatus),.csr_wsc_mode(csr_wsc),
        .interrupt(interrupt),.illegal_inst(illegal_inst),.l_access_fault(l_access_fault),
        .s_access_fault(s_access_fault),.ecall_m(ecall_m),.mret(mret),.addr_access_fault(addr_access_fault),
        .inst_ill(inst_ill),.epc_cur(epc_cur),.epc_next(epc_next));

    assign csr_r_data_out = csr_rdata;
    assign PC_redirect = csr_rdata;

    wire trap = (mstatus[3] & interrupt) | illegal_inst | l_access_fault | s_access_fault | ecall_m;
    assign csr_raddr = rst ? 0 : trap ? 12'h305 : mret ? 12'h341 :csr_rw_addr_in;
    assign csr_waddr = rst ? 0 : csr_rw_addr_in;
    assign csr_wdata = rst ? 0 : csr_w_imm_mux? {27'b0,csr_w_data_imm} : csr_w_data_reg;
    assign csr_w     = rst ? 0 : csr_rw_addr_in;
    assign csr_wsc   = rst ? 0 : csr_wsc_mode_in;

    assign reg_FD_flush = (mstatus[3] & interrupt) | illegal_inst | l_access_fault | s_access_fault | ecall_m | mret;
    assign reg_DE_flush = (mstatus[3] & interrupt) | illegal_inst | l_access_fault | s_access_fault | ecall_m | mret;
    assign reg_EM_flush = (mstatus[3] & interrupt) | illegal_inst | l_access_fault | s_access_fault | ecall_m | mret;
    assign reg_MW_flush = (mstatus[3] & interrupt) |illegal_inst | l_access_fault | s_access_fault | ecall_m;
    assign RegWrite_cancel = illegal_inst | l_access_fault | s_access_fault | ecall_m;
    
    assign redirect_mux = (mstatus[3] & interrupt) | illegal_inst | l_access_fault | s_access_fault | ecall_m | mret;

endmodule