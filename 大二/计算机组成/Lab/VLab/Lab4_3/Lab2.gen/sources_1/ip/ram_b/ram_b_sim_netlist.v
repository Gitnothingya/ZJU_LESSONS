// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 19 15:43:51 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vteacher/Lab4_3/Lab2.gen/sources_1/ip/ram_b/ram_b_sim_netlist.v
// Design      : ram_b
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ram_b,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module ram_b
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
  ram_b_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
OPxstt/43OGxgpoYzsbZvfnMZVJoNgF3q/RjM9qFkKeMzLDb5K2byDXcOV+Hf/2Y/8OH7KxeB4Fm
5JR9VIKIlLyl5wxzf4iRAxKW4tvbemZ6gdDE+Y9VREyFUGaG7gTZKAJNAX/VLpj53WzUEogldyVb
944FJYJaFOocoSlybosYLmJvIhQ2ZOxRDKL5pFX6z5434oaZw4igSIEYSM1wH3qLzcDzsD7ggltZ
e97yzbU2Dj6/2vLrJmSTJRRwNyKqfX+3inyiF9IdLLu9muYpZPNkNQAjrnGwIakB6Mod3EAXgleI
xv3dlPrgkuRdqSwdjXIm2Bs7jcBa//x4rM4lfPFQ0PsNGQ2sVCwx/izizqyMEE3PhGNmuKGBvQTX
P73KvnrCtZXojiqI26iNb054pD/14pBNpz1h6JI6UQ1vR/6upGufmnFaGIldE+92mn69mnt8emUs
xhTorOd3C0jy8pBj6y71wyRwHxru6sWYnWxkOQ+GxSbZ/hJVg/dl2Sr0lKBZYAc9aq9s5mRsrqhv
2Xlw61RuMVSgZ0+8nj2PyZXWwQzJLfTXY1Lqcg2Ma3aEuVVGLPih/W7bPwQbntpUVgqH/vUGhEZ3
9YFsDm6d8a+XQ7y4J1e/J/0IGAz4b9c7UMyWYfLK8tj5hj00VJGwBb9w/RzHz1M1TDaDs5W6gbFR
5IY5gc7S6HR2mH6AJIRcUu8wMS//AmF23kSM3Yh8JLCA/VL4kaQ7FMYHyrYwAJBjtQaMJIBSKDWs
rNa7mjwllhUXpV0s2Hv1bhq9J5JBGDhQs4//JhAqiyPy5hIrRP+p0ozd4QllReaIeyWPTsjmNjLj
TgnTHDqbnlpcNVuEpzXReS3dLKs0zFnfAxJKNCuHIH48JEx9fDn7mNN2nkn7uzVTEQll6CyegX04
8PuiJyfAfAhbMS8VwP9aDfKG275nXULZ3BRPdF9H46kYXikD+89VxxqInA8WH+Cg3qdUqE9ec6dG
PL6tDp+giFfuN7wT4jfTYJ+zIurgywkM8skazQ9YBCY6XeNVqIeOkTWcE3fqe3KcA0iYX3AQwnLG
/R/+DzvPtJYRa+awqH9xUIE/ZNyFB8RI+AIYymhtMvgecfkwpRGWz4pcDPukZvibfZ0dcUdsivxC
qce4mcAe/9fq/JsByYkewAsrxxpexxijp5qFKJmu/GJJp2rCMm08LH/zZP41ALD+Jmzg0V/lw45a
4hZgW0qjy4bQdpeUkNZChhVjN7LudssQ/nr1i7jLPULiLZBlWMGsg2mYyUUtnjykEW0XwMj6rTyp
Hn5QCPjoFxMq3JU0QHnaUHM46H7j9KerUNZUfWa+Og/nCKZtoy3hN6nUbvxjLIqHg0PTRMykRyia
2MpgCJqvYXjtzkYr2kIdGYEmCIJADw6OaL8UZ4X89+VOlnnkLVmzB2TzaMeDwT5KiKk5XzV60FYF
B+mOjbnO7LJWeTWKROqsXzYQzaR5YlmdXs3Lwre+2bw3uxqmeq/0B4G71Dnpj9FZ+2Vfuwpf1Y9g
SVYZ3JCLto2TVsjZ9rdlqFKhkqDDL4duT5FXVXuKnVMgCxGY9gYrb17PtvK1E1Nph4VHzAKGS5yG
vHZys8G2/bCCMgWqK2Mr1ZBqcZ5QjkF+/Rpn4ZR6lTw9XhduVppXz8JUJ8L56qJd0I8F8AJCwefC
pR9mrJvbT0deFJERfmiAidhXBSZfvv+yaZcMlJLn2rI5exR7vVXM8cHCxndzQKwIFJ8RbWcmAHmk
lrx4yAoo7zPG1UoQOlj21wbSwH54el2C/TrQiyZM/grKQ570wvB2AtfuXljbK18rgy5ujlvT4bTi
4t/gTsUe9OkRaPNS56owS1Kgb8PhwClo4UyxSP25VvxVLUqEkJhiNkalVIt+Xyu9K1YFVg9s9Hoj
eh0l2v1rXMeH/bdxM/V3Z/ta+AsBMv3aJM3Hq1fQnCFylDeUnpISS/NGpDBfBmCVtqwYfUUavcdj
cT5E9rwFNoVlpFUhFKIjMEBrBFnW+4/zrR9cE08ZhFPGV1Srb7kjYDKo2MWYfLdAOAwtSdKYS32j
byvD7UBqZ48Hi+1dQHRMBI+iIFhEKiWxuf3yhB3PsaK55evjuOaHRxYpQAhTd/Z0BRk3FtWv92Ih
Lkk6FdBDS0jIZvHddH4F2St/ccqQTTCiOAz+KZkC5ft++aTVhX02v4uy+Zl0HGoD6TqQlBkyWReb
VLEYmg3JZetFGhG+robCzAOj+zTwM23Alb2xBHOzSoguK95tBtnm7Zht6ZiJjzT8ZIqbg7804S5R
jjTHtFcPw05QyOWImOR+oYF0MI8AEoDkhNNa+cKJX+gw1UIAL9f7Oa4vTB+Y8f4sQUJ3F2PTWf7L
wCW2OjNplmXaV6JwYNyJddrr6lBwwj8QYPZHNFxvXJP4A5GtaCmN4cV9Q4Gx21lh6BIoGpF0AqsL
pcIZ4CblWHe1GeqiazFhudQTyI6UzCeZgRnFkuZ9TA53WViaAymVymb8OFGgLyPFjaFA9OrKlXkX
Kw1QYxr1IOhqKhh5Tiw3aMP9BN69yt8FkH1H/84Q5pdE7Vw563DBi5b8bbu39pch+PoS5dBNzwKq
BU610ZFPRqV2g/YptpIR03ML+PX7AB24D/g2RAzvX0muGmOJsFeCwRwKCITbd+qhtel/vFb0Poqp
9H1NFKDSzDatl9q/I849taPeAS1pq2yeaSw1SLcIVZhjx3pL5C2/R+dxOQ+RHKU07YUHCyQPjWr7
F/6FkEX7czUjsLfxtQg5PzFI2iTw24BkLADkquVS4RYqPyC4VQC6kxWij1EfWnXlODEv+vv+Ytwj
nQ10UrlmkoWvqVvaNvSWdluVd8lTE9hhtuVjSYu6oLMvElTrOa7YRUl4eZZvJWnZn19lAKQBLupj
rOhVQb4hzbAe5aHuJOv66m+pRnHuukQ0Xt07evqu87ChvYobf9uUEjA4pqgNZpM0N7RM+yyybLiE
22C5hcsiXOfLiZ53H+QaV4jUamRS422BFRCeY1Y0vPHKPb+TzmToErDi4j9wmtA2b24OPrDOpmeh
w21Kd9p831RdTrL3W95WinKZNMWCK8A/QX0mpuggGNOPShCvERV7kv35tG1Jn7O4yooQktrk2rrv
rcLIi5i8aEcLgdt0QTAuMPA+sFADbi747NGF54m23x3ZXie6/yFWhM+NSw1cfMa8QlTskbn0osfY
mvVMd23hiM8IWUJAKZEdrylBJZsurUOPlhDmv/HJ6WR/mb6dPo4XezS6/+DgjTfwV0poIbZsCohP
/DxxjVogNMLm0+4eyaSFs79e4VCqbQgdu5LXKe1ynzc2hwhRWWmlXTmHo5ajjXNs8hudua+x3Via
hqAou8hENJuF5SboF7+AO6VurilKoCRGxP1KZogPnVRvzbPRXGa+r3yhr3d31v84Rb7kQ4lmj464
lUhcUvOhx/mIcwOVqFHEcI5nKrjtcayhfmcqmIka2eQOLUVS2Tu7O4DywFpgOKwtOqApuYqyjcFV
QFzl+wpmi8UkmOQXa2GVr/PgyDHX69J1UrOsliexKyutz/w1z2PLbB+m7CgwDvZ7J4b7OJ8EpktQ
o08sEyqDbpSz11ldOd0hyUKgtnT/pdi2dpe2rkb6KyfRE3FE36jRygcmn2GmRQAEE4TaXOEcihzH
qxKdU2+sZcYXpzzc26cFKkEpg0z3NOuKZzGs5+8F9MXbVw3pUG3ec/4t8Cw6Vu25Hf5sb1KC9Y2D
jvlSEAqeLR48jdjFdkwttrYby2FVkvjJPs9kCb3CnfE9GAjfrsddZg1D/U2tUl2d50CUs5Hkpxpc
Cp+/FDVFfvoxQkIJyJW7p6iPsaTBRc4lD33B65eAKqss3BI5n4fcU6RPf2oq1aTc1Tkhz3tG6RdO
/I+wSmiRDheLaeA/y8KD+Ula5sqcFLVUnQ1up9AX6QF5iTe8h06K0k8ictDnp4zPXnvScMtCgbbu
ai60nKB6owozRsxWkHLx7+xPP9Diax24OPJDDXttjcW8aNX7tPyIalvFo5yNA4jPU8YPPkb61Cxz
AXui4TyCFDBKeeffBAMuOJiQoM00n4h0McXKc1T3J/634hD8xbC+m0yMKnUL1uz30dMRf0ISIOeR
m8FensrGdBVqk+yz+few/6crk8lpcu+v7OHbg2svUAuMSZ5Se85H/DxfDVgla9QDuE5C1NZJz+2D
eZPIJ59WldamoFiT0pfoTv1OwEf+UcmAdQvt3p1NDCxbxBXqtBQ3fJpPWEzuo+lvIA50YkGx1ElG
1S3yVODwfGxuRV8AftK9RNR9bYMl3dU81ZHQDmiEdQp+WjLjzJp+h5IQ6LPnpYM1H5umjBuTdxXL
yDK7qUiWI9g/l0v/9HCUt/wPZEg8fTgHZhZMCxxN3ooojctGACm9JPRwowkxwYNbZIIas4Kwg0MM
GXvd510rUWHE75gLJuAxFldXnNHpaEYPKe/2Y3Fj7KgZqs7DBweZbL7AbODd2Ue/ZTxQqftiXR5a
0gv68HdwSRercygFxq3O63Uf/MO4xYeGDoNwDDguMjsVyhYarNfqWMQ3Gth68r1FRJSlDkdNvmLp
B3a9h3U+4lasLAuYOXFv08IO8TVGcNlumYA44Rdd7w+SNr/XW6tMyWUGJiX9uV0AObpnZDONKr4G
9l4yDb0dtIRdf2t23Fu/2zJsGZ50RN8A/OVtiYmdC/wL/FeSBqNKpWPeYysHV8ceVsfcDJkA4Gfw
xEwsq6NmKVcEp7f5petWRhTscSQJgE5ln9Tg31skNwmzvfWIAGygWpGcsYPDyjPLWOOvtBJHQS0h
BGQxh8y1jLpXbwRjYw9n3vkJ9fikheeA5o+04p+EiCYTT9KxEDelFCkFf3XW5gOEweK33kjLNol/
5Sare+8uVKYtZWMxMcoyYoXrQAHsqqbtZWXR94h2SOaDpWgZ8CrlDXW4z4jVuq7C6XjvUY8midjx
iauTXt1lLh3V08kW8IyL/4eX/JwIwJ/SIefMDR63L4I1VUGpRgInWIvNq/m/OG40IipUHNUM2bNb
/ePkcMskom6NQFWOZzY5h8M9xu8cwjOLjgDKXX1f8bdRZQzmQmff9o0fCZCaMfHW72T11Nx96rnL
SBELtbbVzljsIe6ymcwvOIm0zG/Dtk50AbJ42PDMAdq6K0KH8PIaMyILSGfNurvf/I9iCEki+msa
mEbJAaEtit11TTfHnYD2M/q7vcMz0KpUd4DnsaSnyMdQgsXC5IMgj2YC0ns1CVBhyNCc0tRbBU/3
TtqYvBUjGKqV6rcqWDQmAtW/hw1hrc3NK7SuHxx7g0jHIky8kMRpDaQPAlvbOnxG/U1hyXZF7yPM
PT2olWSYdXn65tWGCs1d12W7AlbkgWsdtusU2a3JQFygF9hDC5OB7/AoMx1BE/LhPIZtxyqo8LHq
ZzvlN9cv73BgwkxDWlCIrIds32hSU88BfoS76NC6ahY9zr/jtWgB7OeKQqqeW9QZ0dmgg3JZhGai
RQkr4fyI5QDrN3htIGrgpWKDIKaK2O8ALn45rlHFtbvC+PDcsxtZMIpv1K4wsw93zKp7V20pPWWn
9MWBx7aGv7Qli06kIc2c6tYXL3MUAnC1WkD3LlzKn83NIm+Xt6jaIbMq0id8uPYdyErLt+KgtIcj
Cao8QJeAHR/k0p5y29HdoIlQzg02MT09VcfIhw0VE9HlyPz+xejCv+CWsnB7G3yWB8DP1jVSLgD7
OTd4xZKur7jILDwrEsW0ZCrL5hNzqiq6areUfP7K/NDGBFjSWmVUM4d2vr+9GA3rjMRZ9voBwJ3u
2SfM+tSaDFJEfmx10t6bLRJebUN9fDu4iL0QlshpxBQe0CBLWsKvrNNg7lPHRL1IMpIUfcIxMO6G
fFh3J/tEIH0BSLJHOFd2z3Vq5Zx8XrHdicz1t0hi7LxyfxEcAg6auhaoA8bCyfAyU7FyYQhttI5W
vGQlKRo0UAF17VyJSBV1S6bBtWdEvO9dKE6NJwul9jkFn7CqrEs6x0b9wkaWbHt+X6shP1g4Sovg
TPqrg27LfjchcG9eNYs9l1083zyOL4xMmfnJCX519IRXiu8t45fpkG7/BYNLZgOWlgUgXHf+jDmA
Z0YXKG8dJsQSWvurHJC9qIbE8KLNN+qpqm5apvffossskpvfLyHC//xKaGbv/qxg48MTr/yjiBn5
RwCPb2frqZPWg7OVQDRfku2g9867yUCb9aFTfj/WYQeLUKJTbkTeUPbxSUZkrgIx/ZqSyAXlZyi0
vHwOE9p60a5oSmRVmXZklwIsulgBU09uWRfk2oB91LaLXHyrq6ZKsPzSt7MwNX7XT610GogBiilp
0o6BGELjrCc9jfkTpV0fMKnqWCo5zOu525ClcJYDP9hv67NQkK2hbLefTrofMqqnk4kG+VHbOEWx
G+Ddg89YMFrg0SrHiAtTJ3WH5/cdPlHTXDMn0hShRLcVtNSHZCRIxYcAPoZB5UwaAN4Dv8gZspzn
YJKL09Y/Bj/iyiHpJUsCqgL5Ep9eTOUdB9Y1PMkWNiaoC2GI3zrn0ny0FXHrs6a/oup+xngSJFk+
G+cyVPTWgz0iaJviKRq/geKuqTFQZoEpxP56IYbjMCjGTzRh4meVeSK4c4csEB0CWNxh5VwuumZI
Jdu9LcogpSPlwl1FZlwTfYA6adY9kt489pRHH/BUMHURatIhnTI99aU2ULoUBxRWxRsFw77GI8T2
IlpFb8X3HSV9n2bChbb5Pdq4PdJo0CtvfxuoyDJG8QHQbQuZne1cM9Y4ZyiNPU+nW1pmAMV57BDu
mjc5J9lYnUZV/5Fo4kmVuvBejQwJtSeG1Eqd0gwbvAAuwoav81MZBLBJQAzS7r+BqAL0M8iw6aoC
LurGGT1H4NIYLF+dr3whb2l6bwIBRg8nO//00+V0iTgZpeistI4NRK3Lw21XF1gWzVadTcfbxQJl
PfwY0RawUcanuWGZp7RfGMxFF5CbRKqeGbB6D6EG4Z0bH1VYXwSZtm5ezQj/KfEce8oISuW7T5o/
H8K8n5IdBRDeV2Q38Q9QTNAHCaWomMl8g8+ift1JnqKtJ62SwUUkQEsUBqFON3C7LDLnFJCljybZ
5zz3tHhZo972XXCq2Rb548FOFpILJm7PxPqYl1t1RhdteqVou37VpowAV9/Q5iHHPvNRZdov8wHx
d1obhK+2B2kwzMHZ8hmeAzVp0fkcFXeWnpUwp0gHmQbU2osrtnPWfeKoZVVjIpV+lkrYf+9S2BG2
+FAXleK7Gr0Envk/5obLH3UlAPKkju2eescU+7d5Sfhi/fFbJAl0+66t0+lY3ozw0Ve+1Ty4TSrj
C1qMTB5589pg6s1o8eYfcmNvs4jUrpz49BJgNJzqrntxDKfiJf71ECefp+fCNutJcX20cE4/VXzZ
4ZbMPSiY2qwKqjBBjjySpWiV990lo2W2e+bI72yKXyQFMtkAln5MtYnaZJMOPU/76PpwabH3BTcZ
mWu4E0sgdJBjDA+vzEJ1sZeOEHhPK/2B7SMrzOy0smTunppbZP3VLZ7oX1CoJ6LkugjqUMGQ9qxh
DAgr0oWYKSXP4oL+J5eURMHeMHFh356/c4zWeRg+rITnKds4uX7zJJPJwLNBZHNrteo4Z7aHf/Qx
/iSPmUssuFLVSQMe6B2DNUmebXagUodECVT1MvMRG+LJRstz4bntXO6ObcZn0jnD1tQ1fv8E3ztw
YdSrSKi+fDKC6DgxMAcobMX+xStRuc7UGj616eX5qS1lT9E868ZRD+TBuUldrd9S7OhGZdLbKIW/
sPQbyNDJjTP9G3FHG3hoUY24COW9f7NvdFjzeMHwAgX5sJt2x4KvFO0FuQgmfv+U0B3JMwPJzqM2
blcGxgGRkqrv7Fx6wMeYeHg5Px1P7gAdOnsfT2+Gfx/REXwhB+r6wvH9DvEh+B0M5pN1B5DCHvJv
TabxnMM+eT/VweNMogjZRcQVSZAPxWXwdRKBAwljkuK7IkbWI8xeDf2H2AX+6DURJFdHXj2r/p0A
eSQjasaC//Ygz/Ghg/exF+v3AodHjNmsL3ykbFW4dMxjcJxDM7gtXEeOaac5GP8cCVnNjzjzWlTc
7kHKGuTj5vhpFvlR525IwiNM/mlZzvoRvL4Y8kFAy9B0OyB0LwvcgpWPYivpN9fGCAZN90paKDrR
324uDeMBVHeHcZnjGIkehYLYmJbYNVa+o7AaeZcvB35eCzHjQvEUZaRY9hG+sAgn6B9d+Jhna+hT
mCQccDXMaisc0wrG544o/p8sk9UG8zx8PBmbGu2lsOHXk0bAlrYILJkBoSfKwPVd3LUzGNf9NsBv
k1UdopQWHliu0XESXR6LnKUlyu6YNeOxDTuWB5WHYFigQlmExYU7ihBubL+XNnh3Lr3wr6vXtXJf
lfWGeCcS2Ng+Lgq2OojN8HiVduHtaPq5BbiwwDoAdKf+EkSOnrdbwRxu0wQ0RoUFOmGq6lu/eaYD
HtfCHQxMyWpljxBbVCVJ9GdgACJN+90wpPqqkotogWXW6Z9av6pBSXSXSMcKUOSIZH/bMo6QQBI0
eKl2FVGBWyF8qzb0nmcZ0az/pkHxYLQTep6/Jv7wNTWSJTeJLLNcQud6Y6/QNknOlRLf0rjrySk8
rdQWNFCH78EYSf2OOT3kOQXKRbO1sB8cy3k+qOIlCMKOPVHIBuqahAnQMVw2Z1svIi5RFN2Oi/IV
HVAm4HA3HcZEGjpny2lV2ua2ue1SJVcAFl9Lv/uw44E0yw7NUt40CSlWCeD6X1J7ixSap4uz5EmO
4gvXcaL6rOY+n9IpqhZqUpAz8UMBNMEAQEkWl7nT/IptpMIKi4+fOWEOQi/lBx/M+RQjxgIMxJQ9
7shLMQOPejua/PYQ0GmGqL5cqvKAU3lMPiIabM/7wpE7UAPd9mTTbGnYL2fVWrK2+kQMkLhjfO7c
cRPwmDBmEBJK7EHVtUsbGdCmGeurEq0Ds76gXTA5/3j4uS9ZKnzCC6PSe4uXJJYQxKUuecrwTQFK
HO4ic1CsM/nNBwEFkh1KOHGe4qRNeAys3vQbpyCHvEAOdNO5TtvUAC2wLsg+mmbzqHjd5xvUToa4
9fMqRBKW89COy43HZBn3lJXz970FbXkorFW+HXZOiBtOyV87guHW8icdEUaTLzctp0/OSw5cCtcb
3oPoh6mt+mcSok8wb+XvruLWTlgbemEfirJLiy0IH0FB9l3I3nGmQ/xcBXUpMS+wa7zJ6MdHM/QP
KtqlDgEzEed67Ab00NJDinziL7pckD3kaLvvsySI2UxCiDP8m+dzhrkSOy6RBzSu/j8Hlsei6p/8
qSUZbJi+hIA6+eWigfwLrrdtegsYpi2Kv5qPoW4PJ6EB4IE1ixSJyDJ+kCn68Y+fCZ4yNM3QC9s4
w0NzgsUZAxLGgrODeesuSoWqLPOfEpVK22kk1VnG9sCtmuOOssUuNZR2A/2DDMSSoUoFr+y0RROW
yirKdGG+fdzFVsONBwdL5H79lDPj9j6ZS+HuBhnh5U1AwdcCAg1yzAZ7AL1WYWNo2/5Jbazm+LCF
Gui8eX0e84wakTb6YYxZGKIy2YljVstfusTGcbQgdKph9InHr8mJCwS6AOj8hWliE4kmXavohuXW
u0Fto4ojY3Yv8ciVYQBFxbnrMEAQGV1AvdYgVDzx7rnOmrHc8NAUD2KoAk/u+m9VThaqfjHXq+BL
KOCLrHFG1Pwu0sOYIOfcwXuiGLr03kmbOKCw11VIh4tY0DL3weaRmwlMWkWHRW4JX761HXfUgFEX
LXc72GlrzYuiJ3EcqKhIsYyl6ZEqrsVROlF3BggSTnEmnkojh1h9eXfgP3ywS6p0q9MheUNBX77l
xEg74p2UqYmUuMT1TU7NmHK83jyDnLO+J0Dj0uALQ0EapI3stnVtiYmunQhmtUvn7K0autR/9JfH
HQppzf6HSagy5zPmiZgSKspTvVh1SeLlUSUAKhzcXQg8wAk4pVY+ZC3SkdHp9LAZrr1Rgi4bA6M9
1FU0RyVvxj/qbDQc1SHvfwDecT+GBbz+h67j4c1Rq5JMducL7X30Uo/PxX1u6t6pqKkxv/4Vwqga
UKbQLjbljrEtwXOdPzYilAm48ek/Sb2JGNjfBLpKSdfnW/4dfxrNZJDsByDvlCBBfgb6aJ5i5vzF
wtMWnQipWTFB+XEOLYRT33Y57HMSWoXKm5ODD7aGXNgZDAlsLaMlbglrGo05jwcoiOGJrITpHmCU
BLcfT3UJLRw4WRy8MhqKEPkMqW8sIwsqkJIgCEWjf+z+xpO8UaIkFd2qlmRDgF7TgmdP10QKekEP
QSNAPwqbGxc3nmXtF+Nhw+uI+Hg3s/73Yw0aN7Y8rnYcEBvIXbe9PI+ljz3BreeOr1XQ9yR7WLO8
hRqOT6AmHhVSuycja4IoRg2HeLFUQvXIKU4voswe6SzApzLA4a7tChzj2sj/CA521XceHLnQi+9t
l3pFcshmQgJUXUrjW8ZYLp1AQfFjs+S+tTHKS1UuhZz+ddjuCEHXONqPPxPMb0IU6UPtsYvuc2Nd
HR54Pi0CVbI5P6tW3CekUQa187g/9rZf62MIjtFCKoiVnFpTL+uVWBlWGputMDzZ5feKAZfdRfwn
it9xqRI/q55286HQnsT7X4b3NJZobUAf3LeD+D6cqGt8M/utaaS3lCqFNI+yymBtQfXlHPNY2mMs
R5PhPtVypGh2Sl4HEpxPN8UUSMJBHISr31fOxBvY7XCeO+ZID8Crrm8QqFZcPzxrU4twwswv8JmL
uEkcjT/LVFC0I/119PKHlnSKdO1PJIJvcamFNUc0r/iCUw3WNPBCmw9i92S1lM87LbBjVlkyCinB
d5G4TLx5WpCkiVmBdrSwgS7nufRYii9umDS2ql8Zh9m7xyIF/65rFi1toQqr/ZiyfAJAmxnMs+UH
8Zjx6/n4YsViojAF0ZMbANF7awSj9xSqIaK4ipp1Mn+aDNQo0NjJnKP59RM0aowRhIVWpf0/xreM
HtHFe+saETWWE+O5ph215lZQ815rnfn1b+8c/J5G8MacUqVq7GQR4r7hwBrZLpcHNiKhhHKkuLkL
9B4DWqfogjtnazjw6OAWYZQBn6MsL8LU8NT1sYbTjTLfEcyKJmsr0/m/yPEmPPrKPogbwWNYFnV3
HhUrdMppmVCgw1x4RRaJ7hxhRRfptPqKzWxPcCvndmVBwKWqiazGlZypTgVu0Z98NRJArRuAn0cS
PfYEAlJ2GeAAdr2qRsxU4dxHSF6LRvc+Vqy5KYMPAAgm3MV7whWdgobx+N2/iJ42T1qwTSQqisMn
hj30Oq1k0ichlK8QyTOkRzy2lDhs+obMvieTfsYuSks3Muw/f8GKeOJfyCYXOnJyAg+UuEZ1DXku
5EPm3isV1LpT6Ip8sXRJ5moU9QlYp8D9AXHU8+9VdOn7OrCbAhQL595lvh/dan1lPeijutVvHNCA
3TN+ItcVy73Z77AWJnLuS51+HuXBwtlYdJVql6qQY55SqDjN2nJcDfL6s04I7K6dY6ahswzQNYcP
6Pmk5VC6g76EgHczjlhtCp5X3JGlwBXCVxTSz7KHIJx0tk+998jL0rHWeqA9uTtfw9jvDvcX+sjz
KJygfFPZBSmf7k8xnxtQpMkLGdZXxS7yyA5jWhFUcrdRwHS5Kpr4TCYy4MQrOFZiFGno5+9PAQyS
WSOz5TW8EBK2IVkniQ90nbEL0ljO1opvr53K/QeXVhUty2weCoNcY8eq66jtHJshaW+tQSpj3Bk3
E9Xw9q2bhEYIgO+pmcwzWgMYd03/s7byHn4cuBSo3OGIPpAGqtsOadf+oHY9jBqfwAl2n+Yv8FA5
3ZZjlXQR5g4QLA3nLsNMDNafvr9DAIfWS38hE7El5/4u/8Bvop370oFY17oau+J+18LqLN4ft+vV
0H8IZyP8KTREq7sdnHHi3PPWTieuG35GNuu360TM78ilahAadom+zH4Hn54phucjzFR/vNtdvFU7
TDyqzc39vXYBiS4KB0coif6lN+RoUIJb/TiFwjPjJ6X4UCkiwZTPAWGc72O23EgTuceHeqrmPNUT
IIleoUkbb5DJdyWJ8TL6opwpU9Mj5NKaQyKla6efuShHW7x+VqcjZdoLZhmvbcVq6/8N8xejqSOQ
EnffOqg9nuZasC34t+0odIcYnQHG9417flWHzY0VsG/Q0l2wMaLIyKWpXbA0w3qHLVKLBPr4M5lD
DgyfTHi9wCILRHiKjiD4lRrgxPXNjcRVVDTAj1rdxKmLKAO0VwnTrtov8I20wuD0L6QDJMM5Dbuo
JAgx1eecX406stmDnztwgVu7QmBNTe/8bhDj+YjeSVF2NeLE3Xdr0Ivix8Z4c3F4GgmiZ2xyXyly
XwxWXejss7FEx8YHFXuucJ8orrMY4Do1jAjhDtnm0ioOv0UtKejQhpMWDAjMh0Zz0/QwpnTQjlS6
fFN87E6zaBorBmuG4XNhjYeEYuZN2mjuyrzgTFt9TNRONj/32NIARbTB7qKZLPHqtQHKYEAE05lj
EAS7KTHEE4SLD/AKSS816S2/S221Ti+1GLBgIUFO+UOYN4amCYUgEtjcCfiGXDfZ/TN/XG4NZOtY
sVMVADESk40xZPOm0EBokhlm6P8GtGQKV0P8ZeCifmH3mg0ouN3WTXVmvWOVrbRihAdR3qErHB2F
/QkujHjiZ0kw/19AyzDw+XKPaq8vFT8s+lPadj1EkqtUnffuY4CCIADQO24L+81PxDgJHh/1hJV+
bwq8tL4ezxTrZCvL8TcfExujUtjtvBK4K/daJ67A33LqOqDHwv+q7RGIm0t4UyofiFpcVgZTCaAC
atyvDlcpF9dxoO6ExsjqJH6jBvmqAEU+axjSBe+IyYSm1OWUGQxpQuVLO9/xohT1sRIo88LpKb0j
+f9VcdJVSRKdby8o3zI0T9Y9XY5lfpHcVfuMpjVMlMpW4QbnxCtBaQJQ4pG0WJJmpzhw7iQD3z7o
hSOjCNt2qG7vnqHInJNl2JR6lspIX5Z8SVbaJ8HkP52apKY0mHlYmuhg3dP07UZ5U1ikjDM/JObI
oIFIeYTaJ7GACrgZnBASfGGQmcxlu3XTutQCbjK1wBdAqpGPLT0FzBj/NFV9fvn57u8zhWWTbCSR
8BMZGsujn5A2MuLUyOgDvMMj3iESK3f4ILsBPK+lYfGIufD0SDGTvdJH9Oe7qkB3RPga4nKcU7GR
pctrKrrwnmnke8WTwNBp/ineAtaqAPoA+glC8ODinVaGCx0HH+Qapk+vaXg5NokzSSqG4utgtMfi
4VEdtsUD/9gFdRWnBLpBomZZ+SzLsXC+oiV6tjeY5Sz/xKhg2uC+g+zpEJ+LvAMVGIUuiXdFeLPM
brmkhhNcgSjT+Kb5J4RBvq6FBGZ9Dw6+n5X6sw8DAs13olujmw963pjVg0mJ3HbKivmGvmf/CG7e
lZjrpQkIjETVFpp1p/SX/TxNn/23cCy0jdGHpAV4tceZBNCv9429bQ3rYcDlWLc7UVJwjwuO6yNL
WQy1fVhDGuqS2gZKs9SfF90+bVErfqK6QJDpvzV6sPe9k9EuJsbbLcdEy+SVvIzSjZ/q9WC+6GFO
egupBZwTqoXcZj+AFsq/DIb15P281BEYvNQf0F3yvLN6ttMSBAoPrD2ybK9Jgw6LSI7QnHnjbn5k
amCEXmqWwJ1FO5i2KXbV8dUekkJfsgVOPy4zDwwUDePZpe7C1vFnt4wnkAtakLAlYE2rZJ+EIVma
A1bgoenjqk6bfbAz/BhJMMCjfI076Izs37vx+giVkAYTZ8BzuQiXzeLWysB1L9Da/ClnUSCvooyS
zK1Ih4TdolC1v3bcOZ0yNGk2lMk0qfZhuA4etQK5auBoxI2PrV3IsyETBKIdEG2YCaABhoJWA6Qj
E4Fr9dweUqOkFMaCbiry/X9iC4m5+A3v5ZigrdvjH0z6/P8QU5UrVbph62AkJq7U2/KSAQS/GBWo
wNwv8TtG6aeio0eNndTCJ5ZHWwbYcP3OpMYVu7qcxX5u8NZcf7AUy3b6osgtRSf9PJJBlksij0Xm
7ZlLXx2FrTsjKyzv4LDbbiBp3SPK2Ks30y1sJhPQpD1dxG+/5jgbBSkLYHd3uvBRiVh4/Aq9PDSP
DeY4OberAxT+cyHtJjpYFaV87An0EjcaR3S56/5ANz8bUE6of0Q9r2JPM4cgXpPyiY50iVpJlTzl
rnjfLGDbhBhiyftmYniP+O6PDBeT3q8AnmNJ1Z8G76n+s5Iv8v4I+VGW+h67zlzKg6lHo9Jmt5b6
r2ngYUOb2ZH1T+KdJUUBuxB1/MQiHI4q+AtjcjaP2xUNQvV8YKo2t21AqUiL5pwf2sRiGGDhW8Cs
rIwfeWS0zLn0cXHZwLg9rqFB7Z4ZGJPVtNEEfelXuu4FzHnX1TUai/qFKyPuWKc8ZmtzCbYTKM4X
PKDS+rOUSd2AIaBPpjlua1U/+/2E9GkHNKsPHPRlKAOmB2su6jCow90X/YzGd3S8dlmvsU8gRUNt
BQqoYki6h+xwaO4hXqpq1LOkxd3DpZbKmN+tqa0E2UEfc2mTtz0elfsfLDr9QOR0CUVQt2/JQ6Lq
sE8lQ0zeiylFcOqSdu2q+fQViQfp1lD2BlrTXi98Q20vKx70qKh6K7rglQPP7wTHMht8+xIDOtMI
dLoyUnnoX/zDzBLkHOXd49nK2vj5A4AyWphgk2wh9U2vUcRl9DEtwAkQAgdIwEM0x7ekKjsuHMUM
mBF41KxKhawA9KVArFCW4SULwegclbdHLuO3n/IIWeKgeroZ2cqWEN5Dbp9qs7e7VctqFal1whTj
KB6gAWMnUscQS5ZDwcSFoTO3QEJ32O0ymebS96/aLhIZTjIngt47ffQvODupIovzVnz6o76SKmRj
/i2m/jsANJPqlvZ2KAbKqK19bwLS01X2pxjwDhKQY9Lnk+dYmBAxCI4g7LeQ+HbDw+h6j5qKPjzC
ZKGN1sU1jBv8y+DsiuQwAHMTFqR5TX30ASFxfBDBZGmkgu8MH9JjFdQt1N79YmQC7pJep+8Lewkl
ZHpUJFcxcvqmR/h+hmS9ZbDghlN4Cv26CUrFVm3Ax9kyw1RV69+cUv+WEWOg1vAAWYYE8bYySn8y
6cU7Jcke/IoyLQ7PakVs4dn1y2k3OBX8WEhYtPOxrWFxjV0P6WJya5b5IGMwp9vUfZNNMM1uISrB
eDbDJcrZxOxkNslyzHIyUDXDlIreOUlGjhKCMonHBiPy7v+A/8jw9wucYSbJFlyf3pR8N4kV8yWc
rjbRxy1CJpm5Z56hifVNZKiGv/OSsUjK8xCQlmTLHdMy+v1Hsk7RQlA04biuN0w1UT1eNAR1vEzk
zu6A2lpYOp8PoD7zO/4Aj2hX9OCpDb8MidVDwhy/p9nOGkX7+KNaN+loaZQ8Lg3VJ7ShJqvy8RbG
e05ctpfbSGsi3V4qbguEuFLqygnqZ9qGZTP5wN0c/MHUq3ZjHIUX3q4oF2tA2gYNSFEVFMqCOi+a
VirBF/aIpXlMfNGccBV6OD+HUeXxPGR+w6Rj1ZauNiLshf4SYVX3eLcmcSxz3iLp65rRWiYYUhSI
banwfyPZpw3Dqof01KH3woTfannMuZvqyS8sPaUB2I5Tfnmu+n0ZzUXflgei4vSuIz7B3xl1AVn+
g3zp/RaR9mgiUvDhLQBGcqMMraF7kYNjRdD8xqD4qLia+UVI5usGraCY9BFKr6b/qxfkC9h4sUAm
NcPh0GVUFAGw+bUN2Y0El8n4seEUw7787/CNPK95zA3/Tei4XEV70mqs/iYUGc4JS6yk9E+uHEwa
Z/izHidGrLCaFOy1ET9d4GvAsZl7gVptWyVw0BYPE2kzyRPsYYDPhmDxqL8HyLAMk+fCVRplaVcW
yko8OC95TzBsHFc/meut9x8R4Hxm5K3wUydpn0EYJYm0z3QWym+NIBk7FSDcrIeJHDbJmnn/+QWR
fRiLyoDapRJ83EipaGjkoVIZou308jnb1rGNcUKEToW8qTAnPxJVwXsWxpMb4Y1gJGuIM93SAvsB
Y9CfEPeyQ8Z9JJnXE4A7ukXABvVyl0M1EuDuiHz5NS/qdufbBUF3eSCXzoFcolJj7fc/vz+zXFE2
3ScF+qBSVCO+UmJ6o42emmPOA/Xgof+VlygTFQaF+FMD7+LCkvZjenmunRfkGhwaXZyDhhch6opG
8WThxuD/CNcKB+iXkgBi0Vjykuxa0DQTkbFah03+PFKWQ89SJt0IXHFGuURW6HBb/EX4gmaSzUGf
fUKAjkgsWEv21p9Fkn0BOsgt34/8c/jTTNRMMhRLHMdIQCnzKB4upM2PXjiUIFGZeNcxof5lHcLT
JtOEKMOZnSzOKx1Y5xJB5oZRqHe8lwfvhVrq1LW5C9by/9rE2xfzHkidJlww8srTY+Z1qyWP/Chq
6TgbFYBl5X4lM5IyFfhHHX7CRBH6oSubCcTGvcjC6xyEUMmUrG+5S4XTVzHSy4ae0YSimMuCCkyo
nX2uPQ/+wdY5ggUn21MzgHV4YMuSFa9iIfzubsySP1dcTlw2LpGsqcAapCtO/qWChiKeKjHzCWGG
lsdBg8nC3htkFTJSF2v3UUN7cUIRnObzYEenzXKJU4J4WvESikSvNFq8EC93nW/Xih5KN0n9fe1K
K3CHJLJh+VJv+vrHI4tDjBD+h1Tiz9fVsYwovz281hzRtbsUzqk/8PH9xaxRrDvfxrcVdPFgW7ft
V6DVabsMnNCh+VaDlcym0JgrOedjg4U7RuHmcV/1f8bMnY5tnIbqoQ18+TPmROmi0V3Ha4Cztiy5
GRTyZ3So/qyWmNKNpt3gr/Xk/7NLbPzxkXxs363KUmGKH5CfSdFQO3nGvgmcckuDIWB3F4zl+A0j
J4ed7OgSkmCb24IBfoyuaiOW648SzdE8ngHJJmEE66fqnrG38lph1oDRyiIS7ZzXbTW8Q5hFfJJs
8E2uArTIb5fvFjSGTXQSjMKvYaUQk98aE0i0UKRLynNsH0oAiSnzcrDvfE6RQg1ZUNIIuWC+EqZb
Bae7R1o8nzN6yPmgJCcIYqg37AwajCUyhpLGxOvac67TydlE6aQi7NwXMcIp5jueZruDHDtMygdZ
pjaitU3VrNEnKNLajchInMOSmZ2CbDrdUkLBG7Xpu3iqcti3TD4Uc6GwYgDAxzX3wFihik3k2YX7
xsjtk0cj00CT1UP7sHYxgJ/4vkucfdnItbYvyxvYrqlNLPNeWsYx35od7VWv8qFa3MfEv1oNLk11
6cM1fwvSWj9VfuhG30aQxZ+alRF+8e+LZi9BTnjMwY5vI53SgzeNSWFx5i/wtJowkx+K+eDtSv/g
at7LjO/deUNQqK1pbp+00Poy9JAOqHCUEnMUnYDTO8AXM2yk11edfjWD8t66Wv/F/5Qpeij2Jd9F
bipMDU79YyNVjuFtjC61OhY2Cs7KyswKLaU9ZMlsbHH7qgZcRCcNYMAAOXLmwoiXSvQcNi+1UAB3
x8fDGyUkV8mhRkW1ldPNho5KeuTPT+7oPxpC/cgVGuHTlX90hvXF9XTxCFS+h12gY/sDYHGM7omx
mlBchR/Qsec5M4MSuwi5sT3L+MMas+cOFdga5/02gkI3QggbUIiKozxXuGlwJiBB1XRzQQAkqJX1
Jvt0iiNIsFuMBLrIxk1XhWgnO5J3yjSBfQfJr+LpWgDrUScgAXFBzFiJfXkmnCR5Iq+fHB9VD8Pm
7K18aotfP/iftyyiwKjwCjtZ+mcHJHonQmju8p8iGcXps9FNx4ZBUnBf2TrhcRQ7f+jCbTgzAWe+
KdePo35blMtVTgzGi2oQvVReluPCOMeepdTEUlCIB0CwBSIUj57j1XRzQRytm3k7l60c0aetBQ22
yHvma+M1I4oFbsro9YSkZmSQRzl6cNFEi5FqdmPrqdigbUeyYykOwgPMGj5BjdfWSFzDMAt0TfTL
Vg+lEu0L2lOAuqDjuFZoM+3BlSEP1wAqrcvrF9sYDnhRLD/9DCPhYk1y01knePW4IYHAhUZWayxG
KuJnh0OvEtviaTkew96+q9rKVb9K8FqFwH3HQnP8yvbnYvNLOsQYPLMfs78uxBf4TfR1vPfpTZlZ
ERLo1W0/Yxir91KEYu8x+Oklv7bSEAyCC6RD/t64csYgfzRRViir+VS8+BNT9ymKaH64z/BttyUN
4oMdnR0jlP7yiUjRYHaONbO9b3+2rTPtJOLk3tdSjefcZaX9Oa0uk+UUYb3ssVaOrImpyCldnhaD
2/ziPniGuHKunm+ZvazuKueiL5kRXA0RbWwnF7j1WrGsIin+kN2thJ82lT874KvR0Yhwi+KIhjs1
HbekguRZu2VGmRWEG7N6M2A/lV3XywAUFsV4GuS5G7vlySmqUDLkA+/fSschQHlh66trSkMDGZ2c
Hy0vouqs/ze+PBD0NDH9PgTE5FR1Gy5oTUGyEorl0cMnDrmFr9K0RZyA+y59Xs9lMDanDuNdSc0w
oLJdXU964uI4i3HwezhxQIN8+0Gl2EHa0HhGfqwIyz1ajBX4vfVCXOT9zbNu73r5MFaKQJCkVCDQ
fAIR2tzWBR45O2mD/35JEzHNXZ5PixML7b/EIaxuspW9ogGVr+Oee+HjvqWO0xVE7aNgs/ICjRQU
Oa1ToZkcojYd7iAmbFtfL1P59fLV3UDmQbkm5VlFElAJSaHz2+90IsLS1E51yPWLncEvxgQ6iRoj
VUdUzqkj6QiN4eOpaZF+zuAcwdRs+qlrhOHyvHAQJ5VTx9buPTBEcul0pXP1vWWBY961P4zPHbs7
KFE+RK0X2T1v/aLAyhJohD7RzwSBJOPe2aml3HSxgx4uKLlHu8+JHz/LJq09PqWzPs9H0DWztQky
vuH3WFf1NmxEfF9QTbvlgP5gGEduCqGuCxlk10Bdl3fNXl17Lwze9VMgW5YekTJb1uqsshvqYWrJ
FAUaqxEXsQ1GZU2K8EQb/pq9+FSnyJw/q8Sz9+LRFtLORB7sOyZR4lfYHpveDPjSGbq/4vEDwK+w
2oe0OdpQR2nkenc8ASR0idKQFQ27EkWJzz9a8xvFyLGcUo6sQImQnKbsXn5YtR4ab97+NuGc9OhG
qTqrgx+pUiKAP64LfL3zKIsVSDwk9I63NmozswPgVqxi1QVeeey840dzIRJBuqC6mwcBtQQLNTdu
mMPRWaco8Qjp2d0zwSii4rlRrltSYCrO3NW3n5SlwyK2GfljfRfLWVAAr1igyHuivP2PZubZLO3s
vJDYQ/80+OwvRnDNEvqvjkfHQv+KAEZRY9KCXGnbAfoZnCAstewncHLhWgIqinUR7NKhrSDv3zVB
QIR3hcm7vajG7LbL854kFWL6J1fvpPgtdGXHvqexJFyDMyrRsS8BMja9uiYPJ/2w9N9zr/7tTnvO
8GMHGkOjuMBzVxBYDgGf9dR3anpWp6a9UJ14FmiCJW31xVerUq1VXJ7wnMsxXL8WIvwnVXW0M2CF
alpjW09ESbSm+Rl4bGtk/4BlxPDv1hqtFEsdgkx2nttfXlKbBnEb8zELlIqLcbdjs7Mbogl1IgPd
qwJ/HHwviorG6QK4rplRvN3yBdkrWhDUUpSLtWTKF62Q/NrY8qzRP8SFGA5f3E3IbuRYIax2w0fa
oyyO28FS7eWFw31xPH6QLMXqWh9cD+d2lr5Vwbh4YyXlpnSUnv8YmOtVMcwRz930RkY3/eywTdjZ
9pfHd3+wv+z62QN/urV5Wc0D2ni9+84AiMRn/lFuu5spl1NOMZjpE1g36YVez/Zdbiw7zNsLgUUd
EIxSQ4nUHI//hjEQl2OZfuaBawROSZX525GAt2fsaYeCDtYFo52EsTMFf4z0i7ZQPqdoZvALa/Dv
fj6TQTalaZdMRC5mKZeKGpojhng2VcSa7eMFyMSFMwZan8/Cgn+JsK25D8OldXeKflEYKB8IUjtl
oUUh8T+/f2/wI6PdQIMy2hI0+D65XhI3MdrWTtQ42NwxBE21zcwUN2Ps8ZyIcd7nsxaeaqbHF2P2
dc7RbqW0pph/uhewvai7z9+si1eWQEarZnTY2KV0K2I9cpRKoIMMmpCzu5gvCy+IOUCUcXRYuPz2
fuzoUj+E8PWbrWcTQqj5umQuCuc2oIEdQ73U4JwEBhlaGWZUqW1muYpN4oFRvwST4RfLD06mQXFN
HHoDMmZyXfbjnk8Grwqg7lHoy+t0HsII/Y85wP/E6JYyaQ7p2pUiz0scu/ZegtUQ41X5DUsJGGfZ
7WyZ2GGC9+NOQf9U5zEpUK6dBJsATxCtBMOqR/FzfOCUMaJiHb7zrJhhKa4LByWOvBRDJ3aim9+B
FsvxP54R9TAS9XmIg5gjmPKPiWkBWVbQFDvusBjiefK+i7hDZgJttnj9itTnddWrKG1xTgJxIdtc
zmfJaIW69xi5Scn28+a9YffZ3Pljpwdlu8eBQCMDElarw848pw1zz9UpgofggeBqbmYe2OKKecSf
xPPXb3UOpU2hdNoevOiEgpK4/F8jVHCMrPLrwEo7GSFTubvfkOaImkKmqgSaRFxpdBcd4QoHhOj/
PonPt+5Uuwy7ez/y+/iko6R48Tnj/wPS7xKSJ5JLos2y4QvcCVu0QVbknaO6UkbYNhQgSjrtCwZ1
v9bKehoJFMDziY4DwKiOD8U+wflwuN74q5+Xle4RqF0FU1VnsUB+DlhlpY4+PFke3J1xUlxk84fo
vo5n1Y/EUhnUWZ8n+Bd8eJR0Pb+mvh4dOLY/IxQVteiyK3KhgBHyoSnLQpq3XrcIGLokyVxZwLJG
cAf14iSipgWSVarNstBTq4VWV/TjkeD9LGoTA6yUz5fK/lVKGSZeYrV4c102WB22b5a0mpwgneIV
XHFaTxizZtCWqWeOUL3QcpLFWdg/JrxdnJZghoaRvES96R4ETp92eR/GH2nl5N0BOimEHkDzrcLM
hq1bYiT7k5d9sC42pHeTaLHW8mGTMaTYO2XtZ0io1mMTd43jdZPiCRH85E9WWBco7dg8pTxJp+tL
+d0hy6dtdSKtLKP2WgsDak3PkLVC/cxyZIS3v4cZ4ER/M9AIeSlb9Lfl+kHiPvnuBc1y9sEKrCwS
SoHv3v/AOV0PGqwpNq1BsDMs8FaIyeSXapyzHWHEcf21offxdw934uJ6CKRWnJTS3SiGDQGiYmmm
xi6V1m6kAuT0wnitQAKV+jRUa4+WJvRmICkdYKIXxw+xfcOFrJM5CtvMOSCHcwKRzMlfjqlv66A6
s7NGF1V33P+MD1jfNcginFtgDBjBt5kxQgBrf/KzUDS1HlMniU9Ct49FcbNnccGa/Np9Pu4wlpFp
jC6itIGb9ToiHhNpG85KG+ewTQuW7q7iFObKcbg+MVaZM3J5MzBtW3GZfkwrHgV4nSdPE40lFDht
1QXidZQ4X1k2Bv11xtR+oS3F8aF7e+HRL9KVYG9Co+EV29Y3b/mjfG4Slk3X336mOpmFVr+pmf15
2QIDERD4eQki99qJuo287D8RjDxmOZPrfuYkTYq49Cvi1M8sCf51429WAGFqMjM9NzG0zt0rKlEx
zUcplO9hHEwHtN1nom0Aw7KeEAeYUZbX9SG65MHWFOYTU4WfDEaWEw3rofXuhUbQNTu9kZMa30TK
YiClUs9i0Jqs/XYyF52MxEqtfPe7++wzpHHnXfuWLJnSlABbTHdva+OHpoy71331UEwzO9gL89/Q
m70zQaqnsFnnlYjVrp3et3JW7F3pUukDIRl2L4nBHb9s9lzP2X30nIqq0lURCb5cc328zEivC7fZ
aJpkN43GfR1E0avlXFr37eMWW02MMBwEu94VIpkMMMK47UOOAxNYsANBTGkjfaVLQ6bRjjqr44xB
xU93bJseOe5MdWcjfBfGqen2DmF0qmSiRhqcfGxWamZaUMT8oDXrlr6bqeos5jtnhLUVaXPyWV7i
qG20jpM2mqz/JtiqORn9DL6kGVAD9e37e+Iq9krHDT/c4ZPoCBkXki78oErNfQPV0zKTNtqCE7cY
sMFaE0Rug1teKODfRAKfjLBIYEIZ/qMEXS2ftsuMmNjpsD3LcXaVav3fgDwToPu/qwmTggtiCcgA
4QmR4fEgIKos1FP0gsmNBJssljKasL9szp73vRPhL6FcZ5tj/7Jyr5l2N1aP0R+8AXRJarCDhP/u
Dxp3S6f/AAP5tic4YtJBZaChB8Alkcqc8rUeD6tZfplR3bWQ3deOHFcGctpajkAifGDJivq+7FQZ
Dwb5GRgy6SEGk3yDrkFL82ppmsFThyzJsD0c0ugrAG3ZdDa5X8GQIlb5OSghx0/8+rKlqfIbufkE
A3t7FA/X/53Yhxa0PZMPqq0YFwmZ2e3QdjZQsSFk+ONpNXlL2osOexXlVhbfF3bHdMHIMXKYkufB
qnBmr3j+JO+2tppGBOfWz1aGldOCOjn0cBZgVWgYpU58rUDreQJ7y1yg1gPuGoS1RKgRjYjNxncn
pqT8YcE6UVlyr7zLTmy3rOtSaLLzW6QvMURnSYYxWAp7zDClBu/1XXxBG3buZO7LO2BHVZCp5DI2
Ys3PvuUA+2vmiB4qTYv6pZBIle2kULPG8O+3czcjnvm06Q1ylcrgF9UURw/sIh/b3WRgRkb0oX7k
JL8sbo00e7G3NraWikFk1VbXPWeieDt2f1Ff7Fq+QyCJnuR/dnaG1jdx4iLV+JcH0Bl9X0tJsYMm
9Pxalh0HP6LZ8sddFWdmJuOUVQrvDrEARQRIkKwet/fGbn8j0WMos6xeIHxSicrYnLfLhyGH/6q0
o9gF1gjWB7Be15n7WXgzaMIZ4tWbt3eQlBE6otqc6Cll/46S6yt4qWOSOfM0KF9tRKy4Z9ztFbUr
uZe3vP0pBRBxVWXFhyuJ331//IF/h8kWWoj16Aiq7gVTayri+6CtLUZ4l6Z+hVb6G4UBH6TPsbuM
TiwGd0YCZnwTFefaeQ1S7TSJhlA+jt5R7o4XE4Oqs1GwocMPoPDC7Pj/7LWnRDCNKS14AbS7Myiv
0JitqL+21ONAF+f6rUbMmUXcQgZuv8IQcTcBtc/vUVpyxM/bCENSZQYkK7Biu5QKn9gygfXdcgzz
T0mrKKT8ZG1QM4exp8oSoi3lPwLOX1iHdLfizZb/N7lz1C9PB16AYq1b3xaKSTzIupwbIS2DX7b2
sRLtGerZ791CqQ4t/MrCCpkCqnCcIRQWrdHIOKhlYNqF+/yNqyOE0LJIDBYEUpXaqx0jLawnAbhC
wd+i7pdDDKscYMMC3jz9ye1tA0RumG6VW/ZoEsZx3ViRapvN5b13Aqpa0LmV4YJehfFW5Cp0f0a9
TFICJdKqyHmghhz/cSb7KK+SxjeYO5eJHXh6ei8gHmCAFmPQq6e74WLOuFttkSP2IkMd7yHNFKiQ
PB/rFz0wjFgow5R4DnPtNgR3qbEVGTN4xgO7XSDcoA6VbMdC3zzX1Q7rGQrO2Ax69augAlhPUPvW
IPspNMS8B5NulXPLCm+syJqSi2Z8YDDlsZjhGvqNt6Zm0gG7g4F2f7w/8YuVH5570xLhp3aDvmxw
2kA1KJjBbJSvO5qlCZ9ydw9iiZcThwByKKbMbPJEur4KHoG6CXCy04+JgdK++vuVLI7jY1An6WJ2
kWaF5CsYiHmSWNtUmmUAITybDabM95kjk3v7gtgrylOkkuK8mjbr/5wmNmdNve9nyGzkG8rlbPEI
av+dJ+zAH7dpYwNYH9toUaxrKK8EC+DqoxKYhsIXBmoQI0LGx50Idd4nJP06z5w9hmQedKUqi5pV
++8su2ItT9GQf0YJNyFAkmrZeW7h9IULjphyL7JXq/MAp4UZglRI3f5hc2JM/Zd3B+4zFOR6x9vV
alV/f0iXUWsyE0X/XK43lq54+XEI2qjFCyfOA4jk8HbXiYzbXMj8T+e9ncb2V7Aaagxv1TzE2vWk
7zNXODXYdk3gnsKXdi2rwKgBKOKAKz7GH/8cyTiIeZb+Lz1v2QSggxXCzVoF02QdUFR0fXZATAIU
jHF/brMFTEfGxxcPnzID8+R1sKL1ptxuaWVdXPjRkwaQmu7cOaIPiK77UFQZSifbexAbiVln54GD
OvjpNIefGfV+m97hzLQIGDo8P2QcVc38eyS5XIz7m1V7SMKPA8JDmPNEiyCS0la/mGTTtXWRL+s1
85UhUgKjSHhsdRpUpSYDIBN0cTIY234JCkvr+1NrRbkgWZEOOVS/1ypD654F3K55AYo27DKN7LiZ
lLggE9j76XvO5qk7+gIuceGL43LdgqUuEOAv3a8ZRV7EhaGZxHzZOLj8YAvgud1sqNzp78CSENoA
2qtG0BH0Tsrqn3xJKFwCl1godjsBjmqDKEny0yThkA3FcrnSFEKXd1BCDKI1eVRR6Wn4w/P4JULd
djN7d9kmRJAttsCKLZOiemMBF89aHR0ikL5QM2kXpH44RgTg65Toiv5YAMJfxFuiYoLxxaGTfbac
iNnKqfhqrxSozW5gu1ph8LsWrHioDpqxAWIj0WTb0zjRWTAKhCyJAbDG7s9G6BnmSy8HtQXGl+JP
m3NWdB83EKKmrozIs1qkoNg2p4nuFimLKyVOZtacLU46JVKp/CPnSLAUgvaHSh0mX4BAi+54/0E7
7cQSOLCWQjfiLFSvK3r9vIatdG+TZ3ZoOQUuSqWBzfzRSjjSDn7qzZqxqIy7sXWGA0hJBZzl5sil
yYqwlmjALhvJ66KgI7JMeGPi9MgJET5gkFXxrktk9rXVWh5gIF3S054vY1B7KcVp6Yf27atBF2VR
GQf9/VrNjwEUnooDwZlPNUKR/w4vWOwKa3uSkSYlQFkMxIa16O4g4TPQrMFz5Ucl7YqH3DpRG171
aH/J/WSFH9Oh3yvxUDDTg8ZTH3PCqsXQ5lt79a5OCqf5oJCDkJKb6Z68jJphf5jOQmK0n9Q3kHA+
AxcDZdpLwj5NKZsqzvLV630inryaAWLNORC27DhLBXpjBDgvBLFsTTNcg2ViBgCabm1YHJKewDmN
EaENDtbM+ohMNH5f35A4ser0kA0XFLiIFMIhp1krW/fB6jrx/bnVPC+y6tN6kC3L+WyCHcjPsa11
7BDvh+lpfciPcBB5tAGt6qj9Cbs7NpA+FFGfv2qFVLLds0lmKAJV9W72SgZUwjLkf2A/k5x89CG7
fxWEGdG/BEEf1LeVlbMlFEY4DdUqessVrTudQSYpcwR5ODWGS48U+0zfxdF6ZRrtmTl8uBiASHm2
K/t/YzT8ZrWRUYmusejvjntVOYvjZ9f/+PXwLIKFepSjkHVfUtGD3svM23LqTNlaxPtcDoEawL2A
vKBhDBzdVSF+NZdqrEJti3BUeWsQKtmPtEis4r9wCIxVghDg7M4PScQ6JZILysp2VcL3mcUo1oLj
skHBIzzhKnsTMo7IsU1HFxnLv9I4iPmpfvGYzHmhzKCv7h1akFBhiSQACvSN7RKoU6LzAcZuwWS4
0Aq2hUgxoEkSZgfBy/QfpU4P5PyGd6boT7BHQ7jDh/Ddwivo82BJlw1yWkg0eGs3WdBd0UOMxzqK
etW1k6eKwJnaAnrlR/geW4fkeKX28bnV88TUERRFsxPtA9AOSF4ZOsIl9PEKpXKs7x0ZjOWfvV0c
elCf7ZZsU18hlmholYjjOe04740H3iUTiM1ZNb6s3Zn0+K3YuKh57oxwrU2rAK6rn5NwlYjJ5NzT
2pVbs0IVy3SbsTV/0bZMP7E3E1g53HrPGNdDcnXxwEhVR3cgLnn9qgEFl9BCeUoW3fGXoxXXLeeX
+61nWEUP57Vb2Wh3T4WJ9UzILAtdHmTxqNOtUxgKsB89w9dDcNbmeniZcA+Lse6pjvZPZubuJUA8
9MiZZ0+xV6AvzAvZ/2NJOkf4y9140PLwk3ksfH/0meKTFEsKssqNdvTrMMRFjF+7+2lxctQZAEcZ
wWMl079kromJ5z8iY78H+/rlqZp/b9/JlnTySUKEF9aWg9DTJmZD3sKtdGG2sYUlI8SZBAA7Xd9g
nAluckUhY15ojGPYm9RsjgZtbUfUggJEJ8x9ECRaORhoc2pBt24XbE8tuOQ17AlPV1o/v8UvGZY7
oBuqpjnNRLeJC0nRhilluSmdjqkqmeqbRgY2KJuo4HEw4/A89w0PfZR02mzk27mDRyc3Gw+/VCXN
heHi+JQJqTL4TRQ5WrVgANHY72J516C4vZ6JDLxS3oX1Uc97zagS6W6DtB+00+k8QxViYCdkxhEz
Gxl1b8P4kbUg0IMSWkYXjiIw3zQ88tweGffNAHuXgJjd8IABIdIUpJy4bPvr2u/hnblXsJvr4I1h
1IYCU6UpApvhelPtycJkfTXyGIMcaAdOjp3URWeLyunlx0VbM+HGvZ66iagWdDEg5ZXCR7EXUGJ0
DfTC0nVKNwk1V0WEw95m2juxw+eJN/4goNLPsGd4Ji5xvJ4aqTHXdQ/LcOtD179tQ96tpSE/CL6F
MsTisysXZrKzz2dpkbbaoTRJBYbxghd7gVkFxat3q/AcGfgePpHHj32Jm8BSzTofjDsSiyHDO7b8
RW08GqHcaQYpzxWQJqXYsAxcYeo7H4+8DdZe6lD0vVwWt6qhafKqzWH0dYRNVQIXJrcxTp5ECaaM
LB9p2qWdZhTOLgxTdRF1sfPZEoOZTp794XcYjuiug4ZKt2xD4KYRdEbnrZipQtnzTqXpiixVkt9l
ZwtDGR4H5e13ASHfCo0Apyb/+PAmHgjs/ceAeRH5nITy3Y6Yq59ag/V1KjtvwVJiRszueT2L8gic
mTOpgtx+EOFKmaEHS7k+vo4LuamBK+DNrxiUz9N4Q7PrroKozSjW2OsP1WNy5wcu4OkYdu1G1aE1
Cb7cyFuXDPetkdi1NnZCN7v8Fw/GhdWrOEPaisrDsM9EqA0ro78wDXKGKAFW0R+7dCemlNyCGrbr
1AkcEHpw10CSaQMcraIk61vI6V8D2RMkpOS4RN8VrIUdKoiT1YqXPnEnWSclqyfkLGIRk5JSWiCY
2GNs23GKoZK9a6Ikf+10u+A5n8856QkQLLVyPhMTLof/sW4/8h1sz0liU0TU/ZzLxd9/jJzJiLHq
jfpg+tfUrl7lGy6jAcm+sLaur+KMVtUIZMp7QWfMgmCNR3UXKk3o6WtwQmSZLRg2o40DsIurkHXJ
IN6MYrLB4D4d4OX0x9pw77L3Hyo4H1iQzzQozLTR89QT/dB/W3MkmfG5Cv31F5w1QlGyo33D8a+r
gKRZZc4F78fMwAIhTdjwl6rF4hEjDZTxmzb+9pIqOJJ6bn+NYngg2HkRz9nr/oiJHFBWPp/RR/2q
GCZ5YCUMRbHHo2eU8Asdb34wIHt589tr0DJHCPtxh7dl9GIsM7bmGXJLIs8b9wfAGLmOvHVBxnsh
IlcDTFNe8j48thFsZRr5I9E5uSMI1RFli8f7+32No9LF06kXn87hpk8RxoKAdSmtxnwdlfKATiCt
87batv1C7U7LIhmrG/GrVrgNtzGmBNnQQr167Q+04uyXjUM9TSNLW0Ipj3duYdBCsjF3syMWYTzV
1+ciPFzI2n7gR3MyirqCEXP55Lw/v46g8Qs1wbE4s4UnnBhKGFxugZAa5Hd8SSL2hxgSzj8xeJca
RAuJLU3DdjzBpWku2uH07B99tVlwSCzqUs1EWrIa3nJ0TQ99MhVEZp7IHWlaFkOqCbNEliyfvc0X
bgOTMy9M4fkM+KwnxOEwaTA+iz/REOnWmNHfWcB1hh/PLPBuV/y/e6DqNGXl17Vtcm4CXl7Xmso4
+JOwJN92YxhCYbO+4kLZqsOtMOuiCykbtKeUAOjt8nd02Z7XgDYYkNyGnEUqd/f7LsYOypldGx5a
S8Cb96VSh6JhCKnKJPVbF5tdjMHPaOP16ku3l4mTREY+LKlu+Mb47fSJHWrfvgW+HZNzYXzi4d7D
iw0g+YhVCwwCxslf7nsMltQpb4zTm+S0O37cBvku9Rw7Hv4OutR3oGSJ+TqS/SLbHP4VMsN9/6oY
qAxj+dL9yCh54Dzc8WaUbKQ3xiCw83fFwbH6pBtwv3fgj4e/E+pLSskS9780xWaVjVlTs17Xm45X
hHPHpG+pJ7z+SYcnqXR9djSuzcmqWwn2g1bIiRwTyxPY1qz0vR2U4naAa85VeN4u10yjUHM+/aka
JXPDFE1HjNpMICievLAGck1kMSkq+3Isv7lSHBm5gQe88XbXLZzD+eSjPmcLFAJjfEvsipibDaqn
C78inp13IMWFAP5sgmI8fWnfPJc3EaBshj7w9AHqUM5I/XcPR+j3KJlqRSVxWIeuNrgQ4fgAL1Tr
fgQnnhFwNDt2fWC5HhoJULF5s/V2SW6abCSipjsyLPgAOMUQPLi0NsDTN3Dw1GfIPWaopqTGXfFV
MD1JfVS4GoB9x+gtb6+gMHQPLa4oe2wv1E/qA3OAMT0bd7CmaNyYvuPnnEHoonR2+Z71cmviOe5o
lh38UTnCf9cSErTe3/TExc/Xg1rIxZG+ToUbVReNP73m8OJmj2TWyUzgZ4pZbPYyN7iH1ZUNu3sW
/Wg9pm9NELPx4d6ZlLJGmT+iW46ud+o9j+8VmD/n4RJhl6/pGUOgzoQr5E6cJ18K98ygzlgEG2/y
LoX79x/UV9bRDzPMg4dYXhB1w51e/r9Jl1z2IJZKBbXjb09cAzWGRSF/25ganUhxHSrn7FXbd/72
C2rHNWZZDEC1VO7uUfgqRkQDmwyU/xTQ6WHxuWS5TfExMr4dce+07GOYFziSkj+yWDl6Cq/ybLfV
GNAAKFdPFOsWyQBfzee7qhaVpvDZtLyzbsUkotNJxmrApgmTFbmrcN8I7LfBSigiTMKT0DupUdK2
B5GAGMj89K0SxyhGQrA7FVCyAIkEz+uxukTpsu4UrdVKONUR73jEcrIDVBlIYgwKvEe1azOLd2Mj
GvOIHdtOjU0xKf0h3f4Wil1imQjyj93GEo4fwNXZByAgqktCAMIXMuMTKK5swjbu/k7PHpypSNuR
CGP2Sy9dANNK9nkjLeprmpTGAaiWKvYlvxel36B4hKPJPQRJSgTCyZ71k3h5CnrkE42aqWZLAGvj
IWLYHo2bJjAjQiqyiKX+kXXPcmWbuWXk38OZR0Q42XgytfHqZ2IboBDH/6pGSYiX17nJNiln9JsY
ltHU9iQ9xPtAig35w4GblwFBoE+B1wfmiIGncqmn7M1/m6Pa3YSJkZ9um7aDNvyWxVDd8P+IMj7l
T/g1+l9VAWZK0zSJZzScVd40hvbx5bDgMPi6d+XUp/VJ4BVBo0kByXjlglyUFUAp9L2m3r71vFHg
cUMkg+PcvH8d6aK8pySV8ZjzrvckC1e2edX9nCtDGabvFrbe9/4B6tMCKJM+0sGgjaxBCycJWVvt
ukGmSRan2giyLSTh3DLpOBTCyjEmJAUowjeUUYZEqiQO5qpYRKU5t3LVl9jQCivvBoKvqzvoUWfF
7QuwaNIVmmB/fvlPYI+7fYFY0p8nwf8OodPiqWl9W69xFgWR1h4hjxAs1QrT00OWiA4gcBeLhv0i
fU4mFjSF8DkSoE/8M3Z9bRrue8z6t7qbToZsQh85oMwkMJKZfhE4P8RtqMU/IVaqXN6Kg/cWuGGt
YyLk0T1l3uNY6s4KnjaVCnucGKvbBtDWgWDOeVmKceaXtOOdGW4FHio1L7dpGPCy8VrwqJNzZTFw
q1z3h37HrVfo1A+sQHj3+dND6K0xE8DORWs16FDzXNTc666iecrdKUV+cCOyHIsC1pGIgAvkJjZd
j/mSN7+WWkxB9rns1anRSenBv24u4uUWdynkpmEydOgfWmqfh7IvGZI3GvNJjvVgG2hy5J4bACg2
//6qnEBp1i2JjnfoMfl/YTtv7al+YbcIq5JtbCPt/st5h+hCyxHEwRtChTB0xuETtud9nB3cnCTz
zYaW68wPactvNjDX8j0t1gMEB1pv9/ay65vuBdCvrsynw5hxWNjjImcNxyv+aCaG62gaAPXPuj6e
izkf4t19hg4SsMdMc0RPHNS4r+X+KDXMTI8/kXMhuKlvU1+DmQUB3bnzYL6RAKGS6/6w5C6Bq0Jc
+wFP5v6F6JRAlgQJMzf9WV/g+VnB8JhBCWxNcl1LNpivin9iD4GEK0pxLM2K4HrhiHK4x+1gVjVw
y5ArhVqyHharvsKVbjeqs5vcYRNbLrK30ANkmHuofmu0THWubqJYxItwn8ifWo8Lms7hqU0MTY11
SRjx2Smhs7giwtsRFtxQqtutCgyGcQIH/0yisStQ5/2a/rUPly0o30eH5mjpDAf1YL9w+6VdyCM5
7PGv2ZvBYvL7OWo8BfuLX3O4Gq3McGk9FEFt3vBUKmvnZeCr+dEK/5XivDhTDvXlElvcYDrt8D1S
atGji0KkB9GEVXGT8dO5gut+pjw6POML7716nZZXtvowW8yV0a5+z649p+xHXUTKk9xs1Odj5GWw
FZTS8J7TD10Ai+SlPAr0nBr6WecUc0xrdwpAqhZpH/LApkgpemUAtIGnQs9YXTihxkX5pt15uKMK
AWIH97fB5mcRTTorehtuKf6ooUlxQWRlvsO50fqmWLyWz2WTDjICKyXaInSALDzD0eTFJ6XJzS+8
48N6UYjhtsGNziA6Byj5nLYN2ILSNDb6lkut1KxADdfhmKXtbW5wIWbscFRDDgyYc6VdD5Ca8t61
6DnokklkJQaTZcwPTiuCeLq5WorCbXwpeZwOgsg3C+uswHpDkaQE0UiIURF0NTGANJzzR/nsfw7X
LIgQa0p+ggldb4t56YLnwq9ZPtK8rExuE8+lRLnOvD9IdF1B+KgCJcpxpV/hFrvbzXc+iRLP0rt0
95wzuB+3giI9Kp9FXpjX8oWcHf7PTb+2gK50z0YNqjymqX5M8XYz61YwCFyaMOsVkZEoZPoXDOvW
yoY/NaEjRv56namuM0+PRoDrZ9XbzJP5LsWSNRMlzA/9fzH+/a/rQ7lAAerNzwzmScQxMelrQDSQ
1/ut1f76IHVZ6nv7QPEh+EJjWYrwNCg8B9rhb+J8y8xag3GaALR3lbke7jiZCSVNzJvUwlbY3ZOU
6rSvoJyP0R1/YYNBsQPpJTyzwGf5WMzuS3B3Oc5E22hinzJZ5v0K4t1q+JjtOb8wl1mmJw1PhHsP
FHjqav8pGq6ZeMRCwPnyQd1qpg2XMN7StWYApT2gI2cWGDp04ana/oFf6cBefWetaUJvHqQk3NTc
qf50+wlnYc95CMbk8UXA5YNCG8XLsne+74PjHUJ3JDnFSqRV464t9hv6Hm1EKniax7WpgXM4Eozo
Sz6aVUq3rQCPh+LTrDi65jlEn+ekuXHNA8sTvA9DmaDCc0Gy41RBZ9fxF6DlKRq3oMGTPEBndpq6
kS6IjniqtdCJH8J0BBe04w4jgcNMewtghhcj0Uuo1eW+zHY8Gp1yj0jf/x44F1Y7NOKx2/dBDJ5J
8M2D6wmEQ9DVYKlltlg/GlAZAm9GZ8UE4YZ0D7p0iF9POUjTEmJx6P/ejfxXLhVx6V7Vtma85RYJ
0LmscvHFIfVYWpVHI9hOedMYgn3xTaTgB4V2GZ+neoCZcd4IWwbIQBbQN1x4Tac+3co5PuEEHBTM
d2VNp7vOAiwzz++6mQ0Fi1BQL1KRZmMrTgZ8Y2EJf/EzjoCuAK0RgyGlKd0dwm5tduABoppUBTiF
k3RqFqmoA1ZDzO9KuofvjC8hqMNLHfTR3A0QsPXE/z1eahZ8P7+TFsKamZp5FlDBWbBZ+nZeBPmm
DTTMqucTP8NjV33W2o4qOD288/jJ8GcYCroKIkBG6Hgg8jBLCd0VajU013iYYjlwjOf88EPvjOnZ
RxBGkEa/e5JiVWucnK5zhdupusxm0f7KifFev17N981FpsJQUXmv/vY/S3/Mn9DiAXI0YNueTa/g
4b1g+x+qgXftaUTYl9VjK7SV3/PBiUUwWA3VqI8qLXZfJkeb6ULy/y2F0B7FBiWtiZPyF1WaEyhf
UEthaXq4oMN1QDoDMbxLKSvBlJFx/p0z/gK6z5q4OVpQpgZ7BdFtZ5CvvOkmstT87vYk4HWvSfvt
Ia66cGNBejT18raa4LaiwvFv4Xbw5ERe5dAG1B8hTxLVzBtd6peJTXqLCpbyhNzOsXaD8P2ZVWIn
C8xv9FR7mfPZulYMm2D5gTg6zWMFPDPhWmVCplbcvuk3zT3QKGH4csQkYYq3PXK7RfuOiMPWR4D/
4yhyVcdUlbAjND5tCaSjlzQUUTLygoCbLaDxz8b/XB+I1CRuhf9Pmb4AZCublx37xs/nWtGFqnJk
QVBSnTlFPG6lPO9FiWIiIIes6QgM4lrfjj090l61fMHi6Bm27HlQaivPeqf+HRzBmNz/juIdoVLv
sScjO+NTPxy7yllUBLQ5pLtGwLrZ/UMd67+Dc8igdVx/dfbBOkKFADK0zXBVMHaN3fcCjQc06ICt
7WepO07GCsma6ZORw3rD4R9I/iH8NlkG3Gc8d9pedVXmWTdxQeKrJg5h1QwAr1XuvQk7rVTQVZG1
sjZ0Q5yJcXSo3WjbxCFXQyN54483yfba4l26r/thGUala3kZebINuIgmF3+yEZ5vPythMNf3HuHf
6xAW/XJxD2TtO5GnZ1HqOw5o6EVsw4Z6/zW0Vx+CWIKyQsclOwTAsNq3j6RFY2Hon0mrogNCa9oD
OEMtcsOowA6OzPh/pftbxo1BJQWuEGEI/qLNb+guQUDGlQiiXSU/szftT+Hf3GXT6qa77C0wXej6
zjc4Ax4zN/jU6iSo3O6QgGcA83eFg+XhMJUN2HXwQH72JAUSg0HpJh1BXN2el1XQGb+Mxx4rurTx
xWyp+G2iCCySPISjGvIbqU/gjvjVNNXCKs7pZ9lTL+DBM/Hnir5xnKDMdLB0uh9dLuGxTYYNLs7z
RVcU1yKFkqLKFiiGQ3nmF4qL7a79rfW9KUqrI3cWxyPruJkkBaAWXPr060ztHg5uLdgrcEm2HuGy
1JER/IW2LDktOIykPsFE3Qn7BvtVMl3k06KYHLg3i7/raBMScFeypF2pzqINWp0GFDdZjVNgIXsr
U1yX/4JVT/XY9ooWyY2ZPyNGP8h+dfE73hYLKnJTdD7Gmb+w3rK9gtzeDmH7ztyfobSqxn5OHd8f
w3vMBIwFF7JMhG5y61RmcSjhIvgGYKH+fG2LP3Y6fEyPe43/GqI+Ila2ES6Gzb/PJz5849roq9kb
WDeO9Vj/vWRxvm1r7+Gt7N+lhOdcFP/2CrDMpwfwBQu5B5CMiQ3ggGZmhoz78GFfEDH+wWkNGhkA
BNoO4Pa08SXQkmeDAJvBH+GfQijrnBv1ACVV3U4HdwXAw+zGjc562Jj7w7jfuHi3gp31zNeHs2xS
u8ig6evnMUN45ABfxFlOl8PN8YoEeDL74mwTaT+ZiDYk2vK8oheObPQy3QcrqosezAHiJYFr9viQ
m+qMRy5AUcMrJ/7lhBpKVsbl8/+xA7a8eQIrOdOfCHp1uV/rJOebbYBk/UnYTv1/QE6LvUgMCNI9
JEe7dCQTiAs7Odn5yUm+hF4bLh7ciSdzdChp+SjjU49bN3Y4EHRx7IaP6fJyNxmb9+MHhTnCh47f
as1rX3opP6T2BTlC0kGW2ILBlUw+ScmJdhq4cD7DCJi9AvXOepbY9aZ2OWcyfdY+o3q90KMB0lWB
DXXcOExQ1jUujkO9563nXXF4i2p0+4L0+i9rZnXKE5fA5LofLKD60ZgUFYgJhPcd5wP9Hny83alE
9PCgXpniWeY+/Jyak1a8fGgnf932Y0vLCc8yWyx1tdW+MYZpBX+zuG3sfpDNzHNAo9yB6MHaR5Vb
bXNfvPEdFdPuvCE9uy2wPnnEjHzwRFpUoAWps3Hny5/tAQHXfRdrRhCf8EAyTiV6YCIIUNIx5Fp6
qEVPNniI260L34XEIAojxPViU1xB7U/amlEYbCO9KZDHjuo77v5DL1zyn6AOT5nskMcOS+HqD4X+
Ntr0VEaGnzLmurakOhN4nNcrTNHtVxkpI/QASEucK+MYllHApiPt63bd+zc83oDCcbNkZSJjkfhp
rFfHVsQjjEUu937wde/vNd1UKgn3V0WVQey6N7K6Kt1ByKxlKRzP2/sAOCzzVaOvZW63sP1JzC4Z
dsI6Fm0jJdVHniSd9dkg/W1K7LnFGjNxM1yiV3F80xWN+ENRoXWIU2BHFjofal1uMlvd9aYjsCfp
yfoyJah+Hac4G5/nQAOBJPFFiKawk2hD1QueUJZf2pUY4sKPelZyNMcn9jSDmOGZMqNECr7ueZ8Z
UZH8I+nX0fUUnwQJRfWfv09ig9ePg35rxSnr38hjG5mt0KNFqoWYRXd3gt6fcqW3xLPnOAssHbwE
IA8o5wMRtz3updKSCgQwDTe7dFIXWI0E99YLY6+4cNIDSqpqyA03xjEAWOGgAuHIVnQSxDlgetHh
VvyteaoMBldOOJuccb1awRaHCvbwHMpgPgUzv2+aCeS/i6eASHS2D0wp6GzBoafXssfI1/16eGW8
U2CyV8tFna1TWibYBuoHARhWAAhxo+WO7EfVAIgEKp/bY/HKL9II/RrBPZLorksZ0Y6bSa+xjxvV
BIZ7b1ZKewEVRcWhECaBFD6GCUykdI44zmNn1VaZ2AqKi2OE2Q1CWZWiHBC7kEmyi5Q4aSgodRi2
SYOSt2UGFJEDWKSFeZ5I2kMrZy4jCuFgtwMouz78jRgki+rjIVWnP2O6LIRiyh9+VM4gb8XCNn2s
WoU/hn3fxDkLh5Sdp4JYG5qcVZDdwLzpLuHqZ+f9Zv+ZBoZMhAN9dJwPEQ8MlL7fBvVJ77z+l4i2
m08sOk172U6rfOEMJoSE2JLOyesq47TTSHt1KxglWGjUdgqE8WA95iAqmtzF3ZzJuoilazuK+hbf
ZFK/E9vRtTNt/RN9ufoIIcFd+duhhFzNtaf8pkBdyR/0YoPrLcsBeVUCD1f/paFw+5CnDr1AxR2f
vk61vyxHwumY0MKNhpTb060KTmrQL7GX9itGsWrkAOEhrhapDa3vM9wH5cLq+AnDrjCUWlE+lM7V
D77N8Ji0E6w4IzD2g977BwXprjoGsQYQ96a04hmoHDwVSuyAFcN5Y/CjS/EmU600GV13YcwJlKZ3
p+XbUxFaRzFRuMd0qkIxWmF6yXN9dJ37+yNYO/AHkSeCG1D23E8nREPMWZz5pf1hTULXvyENc3ja
nQD+Oiy3nrB+pNxsSr42RPYyalt09z4xtyHE3O1Eb4uxBBuSK7gkMUpEFivHrOPQ/QoLGZP7GOJ7
QejUz1wNNWaa1SFgFo510ku3FGxAuRTHUmcLYpVS8MWY3LJO1hmVKWnVnEh2N6kLcEniCCWT4D+W
/WFwRUvmnlFbdN2ubKQss0rz23Ud4suI2vQJm9nb3sGL8Ql6wXqyxWKMPiOxXHoHdNJjXAsNnu2c
hrNMcCvDLoMyVNuPb6bYjzy6WQDvBpITlOyXbfIkeFHzhomaX3rt+X1P3LoRh0eh2Dlvh6iJbt/9
NqSMXjvGZIxuWq5rE/2cQ9+L1DrNfQyZNfiSlvb1oMf4gxy4tT2O7X0ONBoqP018qjBvhmqiwgRz
5JDBjL3g0BOJ94lU5xtLTAaE1w63dwSBxt8g5DFEj++LKJ+TiIg73qijR4qbK7bosMtNXn38//Rm
OzwB51OZ77gB5Hz35r4L5GNbkC/IBIAXGtIqWt537Dd9lt7csjimGNMk82YvRq5k66M9OiCkpKll
AUz2WE7WBOPh9CahgMS6KoVObUsbPPu9dnLyutDpyongnk1TqUslralFb4nm1fbRYIzZH38GkD0G
t0QX85BTNketa2vl1Njz0lS5/US+6nwG+BjzhKPH/havGEi5db/AM+eF21aPyRoJbcE3bDkyu7vq
hYVMqxM4ZC9E1p5p5ZePFJhZNgl6K1yGhfbbgMImR37GS8WQscLCi4TPP9yD8DKWtuDWI0bvsr/s
wQM3GqyXtAByE6Njcb97XIpp9IlzwQrguwE0bnaEStWuSFrjC1sEJ3IXmeJGN3V3UHWC7rhIHlAM
qsCvl6Gxav7zA1tAY17QYDGViwwQmkSfw8Q8SEi1i9XTx1w0O1eJUgZ6DVsQsl1KWDZ88Efukaao
cXtepf5Zq92MhFtdSZTUpTA6EJDZECPrBeM9o8Roe4gH2rdzwp5xmBKijVhdjApPepMMZfdEJc1p
io3THbiPNz+cGJXKpcGxSubi7Fg5Xk/Q8OfueDv9qsIgAzwecfH/GX3OJyFTTMyim7pPffS0D9BO
oeoRcmqmW9/1T2F/YQE28uxcuVs/ho2UdDu7UVCzQ6B3QAfLOI3UQljCvLeUpmrK43Mbtuji/Qtj
ehDfAfFG4vlf/T6iNIrNNU9g56XIp+N9TOYoJpQd8bcr7V0CQET3xh01I0mU1XQP7/qKn0SytJkY
G0zyLygCaf+64BRddr6T4xDVGlESQ6qN7Hj5JzbnHDWMGHQda5UHPyHJjTAKf8KxHuUbQXq8ZWAs
of6+2HEWGDxXRXZFvDh2ZY6BdfiHz5RMEGj6V3/ikCUl0gWvFVb1eImIDIswFCvnIjpAde5mmUWL
smS7CLAh58iEgjxdydQ5TiytRiHzaP+Y/xQe8aFNVB8QariHmpSNdF1wyVlvOAU9vnvP14rxc/z4
sHaCYCWkFUiHah5jP5iRxRlmPtVBpU71o+TsdECgUwz1TAHCfuObQXKRU23kxlq8NQownIKmwAJa
wIEoVX35ut/4JEJmWk7Nt1dqhsAiQ4kZRM9jCzR86QuxJR883e1RCK+Kz5h63mPcyXWRGD19eA1r
TMdxuYD3VKF0CtkDuZW1wc01i/U92Y+6p6u8oQro7y9Rdl17+C7QaaqEvjGqcW5TbIExPS1WFgHs
40AdDMH+xpsm2Uk+r+/BUIs2DrznaUdvQ20ttaZoGLDAU6Mlfu9QUIieWj2e5mh5Pc02hKgfCT8k
DxxFJpUk7TY/zQw7DtLpqXoehwxB
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
