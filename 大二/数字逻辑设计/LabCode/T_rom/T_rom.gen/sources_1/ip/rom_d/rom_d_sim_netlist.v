// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar  3 16:07:26 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vfile/T_rom/T_rom.gen/sources_1/ip/rom_d/rom_d_sim_netlist.v
// Design      : rom_d
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_d,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module rom_d
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "rom_d.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  rom_d_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
AWk2+F/LLIwJ/3H70MT+p73z+MaZAUnylB9xu/zfH66xX8dAaOizqpslZkE4MXrWhxdHpghP7sIj
kwvWqhJ3gA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f3tnX2YCmmij/BT714m5fPTuG3pr/Sp1bWD1FpCFiwTkcUFmqMNcr7abCn+qa2HUp1VAs9a1kY1i
yU68W3C4ARAx1rnlow3CtMBZ+4vG1QDA+Ciu5T+MSJsiWTAoMU3jJunULwD6zEC9h/Y3bBf+ZNGj
RvbKgHQFYSq+EYUzleQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C6xRmzJVnvguMc3Lt5tkoyg5+/u1VuxRooNBOmgUvD6c148xX9CV/zz4fw53vbCzqUg3WYMPAs5M
/tMrhPMrX5cqjMMHbC20NaFxsFGCfdbN+1Jiu6Ffu0obXLvBu7UGBCEaDTCY0wST3S+7NZ+HnAat
RIt5cVRmnWtLEj9MP8SxAk019LKc3+2AUY0eWFhWbTGvNoTLcRFak8vqIx8KBuqhc16O50jjNmM3
PJltfibMKzAmWpsf6xiOkaD+BvARuccAoYGgANLBAEQdJUza98//SuTN0KLZKbFSmy2WI5iAzkxJ
bhH9hPn6Ks1JkH9+j61hMSpdxSh8rM8X8Dppxw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pefxdCU7VwYHa7diZaenheQOVCFpIvDlVp0qUtYsCnfw3IK+d5+k4O7xc5MWvQPeJpwUWNg+c9U8
PcbHo1enWoVg9o1V4U5fg7wxYqKmubBjgGF3yJ5FYGt6FeiD7zcnIJcaP2puAYDdVnxtiJnNmFz2
OQ7UQsleDpBQo3E4NEsbtqgSaopjHREMjI4yjJ9l5XZYNPCWUzUV/mSGX/kF+vuSOZclwPm6w72e
TE0MyJZA2HPDY3HIy260pYSHuDTUpe8gTxi0s8JmpFjaMaibBcPzq2gqPSQe1d6pDE8cv0OxNYKL
gFy+uh/H5gpNjfWVBhRmUo/kFf8fs680z0B0IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
q8meW/DFYsK3R2jTQ13P/a1BVQyF0Eb3aLhqxNSrqINAq7gQ0DvJ6JFuxd6Ce7TIpxqKUYX9026h
UujOPWt7f1brVrSWmt8cW5Um2Yy8tv+YSNv9Ig592u4GssTU6dF978RK/7L4ZuQObLOKvWLJqo3F
6gzw0VbqYS3g5aaGu+Y=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GVM7UoBz9uTOdnKd0CVM0lBuJK2N20FwcoiRGregMBQMsQuevbc7y03ZehM7mfGvEdERp1TciWoI
1b6cDAZYb0YBfSuch0bItCwhdftV3A4/R0nUF0HROsZ/rm/HV7DKDXxItqK0qcdOwqf7ju85NMa4
FJRP/Nuq/ya9IvX9BCpmUlT7tLkICG8cEL8/iJrJY3jRIBtKw85mL5OM+r22LQeYg1/3rb9Rk9BT
RZCTbDcVSUq2Awr+6f0L2NXlRwhFraBy+h9iSZKZ/U7uolyF0nB1+/BSgOl+rttZ2KxfLXe6g81N
FbxtrlpK7FNc9fx2jrKWh5bczyW6p0ATPX0ZbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rYkJ9a3QzTBGC5CITub5Su2Qs6nnM1m+OFLf4ykZkZGIsp11NQi6h5t8dsi/rX/MeEof1XLVJGEU
N+qLOHuLrttRAipPNBsj7yqH3Amnleqy/rjy8UcckD0gxIYzuIlc+2VKoAoyrEFgofTH5bKzBaaQ
q0JSt8PES8xuld4SvsKwr+0Q23qJIUpeNL3HvzxZDmYf5OhTkwlZPi/aLwSMoPZHKwetLUg5SdBm
7K4UmxvUPD3GNxo6GW6dkG2tFW/N9+ju7i//O1A74VUrDPo1OwQfEJazwHFFpHGjCJkv2CiPU3+I
TIVvzssQcs8IphMJulwZguc7fFiYv6aZyj/GrA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PqIVM68d++A6qxRgSePlX8JOoCfHcFLdhzsYr1BDYvLE5JJ5WKFO0Bie6pyEiAbsH8z6oUFGm/Qy
BLXAyWfv1fmbVAwztezaMaxBF0Lw4epvQlAFVdMGJVKgvxfU7ssvLc1KfpF6R/c1o5+4Vf7zn3X+
R8k67LVYgJoxhrPoY3XYr88CjSITfNW0jLDjh0jtDWf7H7nM6QYSXVbRYczQPcepXW2MOFcCZsbi
tdla+UNJ4NeKTUK5bdE9tNZx/8BYKrJtLhyvNdwHi7EdonKLjQu63ExIHoriUmiZScMNbtr2LUBc
YYGUTIENquQ/OhU+DAVXmKbIZcQhwGaqjYeaag==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YMvD1GHkklhDlN9yur11SqhNZTItCRHxHobZtty993SsbvXTWJBbLeIJ+nQ/sv57gpjV5RswiJYh
Vu7QPlLUy2DbVjjcqxaxXlPvYaWV1eKD7BVBOV6HDzPAaAIaFvNjeRurYX0a9Dz1qkgkmttneZxB
s04mTyRdVOc7jIs5wjgXiF+iA0W50/g9JmIYyP6mMLkgEy0MbGyVfpbRfDMcrB3ACnucHTo8A0nT
V/rBUOGbTCYPmQ01tbuE2nqoEfTlmqHVKO6BZ93tQUEjrYoJdteva6yHUfH3dbV1vwwBtsdolICY
7x8cMlorxb6y2ZD7vQEYz6Q6iVnG/PmdaCkLSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19328)
`pragma protect data_block
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
uGOauZg=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
