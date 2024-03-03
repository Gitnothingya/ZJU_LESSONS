// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar  3 16:07:26 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ rom_d_sim_netlist.v
// Design      : rom_d
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rom_d,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2020.2" *) 
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
  (* c_mem_init_file = "rom_d.mif" *) 
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
