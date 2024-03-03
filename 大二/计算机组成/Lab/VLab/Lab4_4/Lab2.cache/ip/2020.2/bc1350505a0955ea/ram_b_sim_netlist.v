// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Mar 24 13:02:43 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ram_b_sim_netlist.v
// Design      : ram_b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "ram_b.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27680)
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
