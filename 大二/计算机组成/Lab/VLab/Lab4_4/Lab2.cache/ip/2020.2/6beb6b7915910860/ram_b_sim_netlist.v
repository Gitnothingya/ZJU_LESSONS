// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 25 17:42:18 2022
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
vZToHG/mJuWaOub56U1RCLk2eA==
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
