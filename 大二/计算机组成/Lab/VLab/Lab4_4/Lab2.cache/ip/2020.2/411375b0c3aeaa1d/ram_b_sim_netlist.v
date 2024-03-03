// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 25 18:37:54 2022
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
rOyq/1rruTtk1ipXpwj24u+72A==
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
