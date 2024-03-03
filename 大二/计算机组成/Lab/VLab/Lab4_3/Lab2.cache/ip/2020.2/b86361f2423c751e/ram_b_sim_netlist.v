// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May  9 16:44:18 2022
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
uJxjJaTj6d1WsnMS3GAz6w6k+w==
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
