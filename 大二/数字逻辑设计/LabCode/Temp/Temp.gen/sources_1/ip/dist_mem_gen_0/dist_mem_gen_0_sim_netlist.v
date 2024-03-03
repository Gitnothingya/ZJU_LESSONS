// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 28 23:31:35 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vfile/Temp/Temp.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
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
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19376)
`pragma protect data_block
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
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
