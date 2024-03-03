// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 12:58:59 2022
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9712)
`pragma protect data_block
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
2wfC3PT3jHN9dtkqVMcJcVhixGafRQ==
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
