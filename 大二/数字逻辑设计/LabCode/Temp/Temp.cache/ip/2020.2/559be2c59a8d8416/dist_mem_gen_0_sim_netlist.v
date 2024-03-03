// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Mar 28 23:31:35 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19392)
`pragma protect data_block
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
zupcDsSKYLeQJoBX
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
