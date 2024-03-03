`include "Defines.vh"

module ImmGen (
    input [31:0] inst,
    input [2:0] ImmSel,
    output [31:0] Imm_out
);

    assign Imm_out = ({32{ImmSel == `IMM_I}} & ({{20{inst[31]}},inst[31:20]}))
                |({32{ImmSel == `IMM_S}} & ({{20{inst[31]}}, inst[31:25], inst[11:7]}))
                |({32{ImmSel == `IMM_B}} & ({{20{inst[31]}}, inst[7], inst[30:25], inst[11:8], 1'b0}))
                |({32{ImmSel == `IMM_J}} & ({{20{inst[31]}}, inst[19:12], inst[20], inst[30:21], 1'b0}))
                |({32{ImmSel == `IMM_U}} & ({inst[31:12], {12{1'b0}}}));
    
endmodule