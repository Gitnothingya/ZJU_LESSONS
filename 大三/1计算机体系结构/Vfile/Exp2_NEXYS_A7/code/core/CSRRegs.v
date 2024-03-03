`timescale 1ns / 1ps

module CSRRegs(
    input clk, rst,
    input[11:0] raddr, waddr,
    input[31:0] wdata,
    input csr_w,
    input[1:0] csr_wsc_mode,

    input interrupt,
    input illegal_inst,
    input l_access_fault,
    input s_access_fault,
    input ecall_m,
    input mret,
    input [31:0] addr_access_fault,
    input [31:0] inst_ill,
    input [31:0] epc_cur,
    input [31:0] epc_next,

    output[31:0] rdata,
    output[31:0] mstatus_out
);
    // You may need to modify this module for better efficiency
    
    reg[31:0] CSR [0:15];

    // Address mapping. The address is 12 bits, but only 4 bits are used in this module.
    wire raddr_valid = raddr[11:7] == 5'h6 && raddr[5:3] == 3'h0;
    wire[3:0] raddr_map = (raddr[6] << 3) + raddr[2:0];
    wire waddr_valid = waddr[11:7] == 5'h6 && waddr[5:3] == 3'h0;
    wire[3:0] waddr_map = (waddr[6] << 3) + waddr[2:0];

    assign mstatus_out = CSR[0];
    reg [31:0] mstatus;

    assign rdata = CSR[raddr_map];

    always@(posedge clk or posedge rst) begin
        mstatus = mstatus_out;
        if(rst) begin
			CSR[0] <= 32'h88;   // mstatus 300
			CSR[1] <= 0;
			CSR[2] <= 0;
			CSR[3] <= 0;
			CSR[4] <= 32'hfff;  // mie 304
			CSR[5] <= 0;        // mtvec 305
			CSR[6] <= 0;        // mcountern
			CSR[7] <= 0;
			CSR[8] <= 0;
			CSR[9] <= 0;        // mepc 341
			CSR[10] <= 0;       // mcause 342
			CSR[11] <= 0;       // mtval 343
			CSR[12] <= 0;       // mip 344
			CSR[13] <= 0;
			CSR[14] <= 0;
			CSR[15] <= 0;
		end
        else if(mstatus_out[3] & interrupt) begin
            CSR[0] <= {mstatus[31:13],{2'b11},mstatus[10:8],mstatus[3],mstatus[6:4],{1'b0},mstatus[2:0]};
            CSR[10] <= 32'h1000000b;
            CSR[11] <= 32'h88888888;
            CSR[9]  <=epc_next;
        end
        else if(csr_w) begin
            case(csr_wsc_mode)
                2'b01: CSR[waddr_map] = wdata;
                2'b10: CSR[waddr_map] = CSR[waddr_map] | wdata;
                2'b11: CSR[waddr_map] = CSR[waddr_map] & ~wdata;
                default: CSR[waddr_map] = wdata;
            endcase            
        end
        else if(illegal_inst) begin
            CSR[0]  <= {mstatus[31:13],{2'b11},mstatus[10:8],mstatus[3],mstatus[6:4],{1'b0},mstatus[2:0]};
            CSR[10] <= 32'h00000002;
            CSR[11] <= inst_ill;
            CSR[9]  <=epc_cur;
        end
        else if(l_access_fault) begin
            CSR[0] <= {mstatus[31:13],{2'b11},mstatus[10:8],mstatus[3],mstatus[6:4],{1'b0},mstatus[2:0]};
            CSR[10] <= 32'h00000005;
            CSR[11] <= addr_access_fault;
            CSR[9]  <=epc_cur;
        end
        else if(s_access_fault) begin
            CSR[0]  <= {mstatus[31:13],{2'b11},mstatus[10:8],mstatus[3],mstatus[6:4],{1'b0},mstatus[2:0]};
            CSR[10] <= 32'h00000007;
            CSR[11] <= addr_access_fault;
            CSR[9]  <=epc_cur;
        end
        else if(ecall_m) begin
            CSR[0]  <= {mstatus[31:13],{2'b11},mstatus[10:8],mstatus[3],mstatus[6:4],{1'b0},mstatus[2:0]};
            CSR[10] <= 32'h0000000b;
            CSR[11] <= 32'hffffffff;
            CSR[9]  <=epc_cur;
        end
        else if(mret) begin
            CSR[0]  <= {mstatus[31:13],{2'b11},mstatus[10:8],1'b1,mstatus[6:4],mstatus[7],mstatus[2:0]};
            CSR[10] <= 0;
            CSR[11] <= 0;
        end
        else begin

        end
    end
endmodule