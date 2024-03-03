// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:59:00 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/rom_d/rom_d_sim_netlist.v
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

  wire \<const0> ;
  wire [9:0]a;
  wire [31:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [26:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31:27] = \^spo [31:27];
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24:15] = \^spo [24:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11:4] = \^spo [11:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
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
        .spo(\^spo ),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9648)
`pragma protect data_block
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
zr3MOn+8gTQWdpPGkv6B
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
