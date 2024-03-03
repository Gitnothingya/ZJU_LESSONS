// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 25 18:26:34 2022
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
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
  (* C_BYTE_SIZE = "8" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
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
  (* C_INIT_FILE_NAME = "ram_b.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
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
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
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
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
JXBDK5K853Ld0eF4vB8NC4xKiw==
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
