// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Nov 28 15:07:29 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vfile/arch_lab4_NEXYS_A7/Exp4_nocache/Exp4.srcs/sources_1/ip/ROM_D/ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module ROM_D
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
  wire [21:21]NLW_U0_spo_UNCONNECTED;

  assign spo[31:22] = \^spo [31:22];
  assign spo[21] = \<const0> ;
  assign spo[20:0] = \^spo [20:0];
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
  (* c_mem_init_file = "ROM_D.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  ROM_D_dist_mem_gen_v8_0_12 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
mJbdlQYetdwLKzt5DQ7uF+il1v2eQVV5RIfjeWz1e/V3jEM3i+uRCVgx7Kp/GQuUb5UHKs0abqgC
16Fs1NpBpA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XJOm/uUGX/qZ2Qt4NpdVrxZw7M7g9IDF0b/ty4+R3Mq/4Yo3oelh4PLtGTKhtLeaDF6MWElFMrQL
YJredaOfZqndl++hGC2EuCTFqOkkbPOywG3qwYYq1wXlA10mmiPsdUKE2fw+3Jr9KtyjWIqepLi/
dHt8tkY/lsSunN2m5Go=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pWj9GXHHddjJRErHkucgy551XL8q6fG3vCfQLWejcYPu/3fvs73MChhZfZCqGIr79nmWO66j7ZpA
z/XCr2Lat7Jfx5+ZJvJer0nwTiLnqTZBolYG/BP1BtrHTwgm0184M164lk4oYFDUdw29PJ37NIig
S/dneHlBpq0OhVae8qrDu6sq8SwT4vL5m4M4lyIfH+vrWOUQJvFG/RL/3ClFq+gl1tPaDw7KbyFn
vSwCy+XhzR0dtnQWpjEoJiIQhSdYyweMjMlKPQqSiE3Fh/VZVa+KunO52xPaixyZxThykZO2WXbf
FOCuEe1RJzUm0u8Y72KhTl0uTN9eR3gCnhh0Vw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B41OqWxVnXfUy4O9BZkmT79aOuLa/8vs+f9XLajhfrJ4YdKVWM7ClQ4Ws6PH8ix0mLsVAwA0Zgo9
Hd/CQVbD7dVJhvFEXp3HsgsK+w2fUGWmoFnumVmzhtuDLUMIrGQh9RsCfQX5A+k8RXIHI0JsIk1Q
3VcUlbbqQpDYXjrjB/AGxXtsc1aPVhMYpJscNf0NkyvU3tH4+jWt4LCO3nZ2NSmz8bD/d3iTaKVC
cS1ceRqzEEugFllcKz03OQjb2cJ1Ct6UrCnWghiukO3hETd2SI0dkaPZmvc0XfvURiWKq9vgElb/
2VvT0HBeUK/HuONJfi9exeRDGVhFLMF6Uz3kEA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e0tfQUh27nWf5uh+YqDSDz6U3BM61Op8lfct1zm0Ja6yJVgQBBl3X4ncNT2+Er2em/X5y4CfBpvO
u5uoIE39oyQTUs7PszvdtdtbHnRlt9VBaRprvi6ZKHnvbUMSDBUGrupwGGjlVQOYCf8qMwkVDS42
mE1g2s3nU/9pT3gGapIs9/PM+V4ineJF7SfmeIKyIpmqOCWWQ9L4vvQthX6RHPb9fOMoHF5zzla/
PR0fHbsmVkZlgJroNvWyfq3MHGRWCWbuvLart3En+TfLNFST5gZLRPHRf2g1QVD0Es7HGXRNM9Er
Pdmyf/q7sQO5EHK8SnmiwEicbEIJgB6l5N30WA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
kkB8z0jv61ouARnXp4wGiGtsXEY97Swb0gZ1uaIf6yqyMS2hw5d4Odccv2l4JBzDnv1qNNC6P5aI
Vl61KxUW2L8cemoBcX7CzlzWBifG2jkwREs10VeH9SiN4MGWCKldTiGWdCn0nJexUvCp8UA0x9qQ
dp23pP7Q26oAT7Kuqao=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IZQ8ElhR9ysyAgwvzcKeV1bAsvOl3oD8upRM+oVHMo3mo1gEKHB32MYlVyH1lN/NvHUL0KYDJXvY
9IH3uT84XLsl18iZnS1QISXB8+moJSPfjx/1XP/JzqvA2jF4LOB3YcmOacQFx0CNm0EKBQXqhGn9
k0jP0LYOGotQctR25T4dVwoYoWBeUjK34HpbCqYIpwshMbliOBWYWFtPvnmVGwqesZe45/cEVkW7
ANVK8/tau6HJiHcv4mDDKZ5L2wdl5w1fhqpxdGOAxS8n1hfD/5owwIGehnSs/pL9enlXO5pykUJJ
boI+bI5oaZtbE7DUOrBMbLARBE7UnDBtqOS6dQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11072)
`pragma protect data_block
NTKJf3ZYo/H+awcau2ctihmW6oqgioLPjMCk47CRom0ydmfI+7pYLvgXS1/GWcijomuJUDxU7w8S
dfTDcrg4BcgyixUOa3zDV7mHmnl3CbtdbPnjkDYWbZPptnv2Rqh69L5Wa6AWFzN6pLsC/WG6nm84
L6NiVckMNvnAPDtBWkk7iIc31eJjqh6BNM0j3VuELtCKw4A5PXLhOUwz0h/d0jbV1Y8mKEviUYe6
AHtsOiwmPoMNAvqSZQhqup/9Am1Hv406wJr0cj2v3CijuG6aa3tehQDTu9oC7jmgDXuNe9Pe251c
KKzuXTG8Nypa72LbiatPocluYxHnBa5WUM0mp+nayS8Mu2ohz1XKlcfpzVFhkTTRInqnNIMXjqJu
AacN5TxWxU/qFfExWGVytAzSeLFf9fW8m2aOVz51ezOA1i/SGZu/eb6GaaenGopvqTTWUNaHv+sC
SuhzwkCU65+ipo6CTp4HtOPxRGYrZ5cA6QxES4Lw+5tEim8BsZNRmIh0vj/b8BMFhgUxeZ+j6RUU
2+0vyVDWk/PR5VWNc2MN0keNImfZiGOqxpnzKd0FWBWG1p4g8E3zWdzKk8c9nr6JC0yyg7ogFMDY
ZqESHDJmzNdGFK9e3HJaWPdqI4Yuvp5NJuUeaPN5VC6x95Yvm2gPLAabUgrtX2TtcfVEdf2V5cPM
lxYSdFeNNllUwLuIuXtGlDQfNJ9uwgUZrB9HaQ0QhFebhhgyb60BzmwZkEEgimmsUbfMhbADtJi/
f8RMk9kvLUvgw6H/aFZwulQvxtGBqv3gR1pR0LGbjxH/vUPtJebwXos1CFZN+qqTBCmZg4RpldHs
Gm+gHySxMMDsHiBF42rDLR3gJdDSSEvIdMIe0tbWG3FoBXdlzeRqHplFz1MK+ZlG/z4dzdyeoG2h
SBiBxhqZ3kM+J+0KBiII4S3mHj5kg20g3icC7O5WG5gCFTdLaAWxj/Ou2/+R0nZwkXEELKHno+HZ
TfPzm0XcKTSVS4SrgkJ6E6945Y72Jc5VrkIwE8nDl5trQRnMjo7FkRLLMCsLPAzIluM3G2cveRHR
/C3HRFdRtFeTdbLmPTZlE0qPQ1XWfxaZTAD1fN/V6AD77z+M7KTen11E+t80pqo4+AXqu/wd6TrU
UnU3rM33EH0STIg0Rd3JbPmRS6hn9CxINosE02Wxhc7f09HxF7vUwZ3dRTDXYp+mNPLGfEh9EYmG
2yDrw89REGlFfHXVgCxOksg9DZ5iCvRkP/oUaLRJ7rBILXQ8uaOINbs+CgKdTL1wCMhBh+A+GH7K
fSag2M1J55oeGMyqaNAKbpmYZKf0R+gIYutRHzZNzG5TUNrZgGGKLOBLhInhr7J2oxOo0S3mDtAX
UfbfTK2juPc398WdS/O2b8yOJFGEBgqU6CPYNeMmQiMZq9sHeHuFoAskBHMjwVuGgwJaRisTyPwJ
fveiaW+HxK1liOtQgJuaCv1xRKGNBug4GMM1Ubjtp5WdN2lGHRZjA+4qJXo1Q56SSsp2CDecprFD
Y2SbC4A+KRBK9QNpzL9G0/4E+lw77PGKYYGRmcsMWoHCVySVmqTKB4GhLAvJttWSxEzNdY0VAwkN
dls0FXljvN01lQMQLMK3RuEM+pf6Tb1YNGB0B9VFsHUgyX+5c3K+IZNCPvUtzDGqhcbnjaRAHEDA
8Gz4fARrAUyvmM38s7dSwoB4BbDbHvjxgpuZ+t7eHsHVJNQAFFxMY+6c/yPGuTFoSyt7TdVGxQd4
bN6bHG73co6jTnxGgiw92in83o37ZIbHqmhgOkWtjhlGUZN6pz71EmDvv1UM8hWeJNL17LJ0A0bl
feIr8FvaJQrztMsn0VfuT8ZNOZML8aXsRi5K2uFSOjV6N1gpIlyRXPb8dO+22L8wQ3ivKYH/7HqC
MZOcxqOZeXJ6kygY0PwvQp2KR7WC1L+WgqQrERy7WB7D9QxMWjkT/Slx15PzaXbePQV2IiFfqs20
tJTZ6xeRrjzefd/Ik//hKpyj2bx2AyvZ3siSmoM/mPS1RsLTKBhJFV8zEFr7NRw9gtyh4kHTqcfz
hjrGq62zUE+LLzDWQG7QdbuJkpxrgV17ovEd8AwHk6pMlq7F0djtiM6DUEZYP05oWzi4NY+7HGAV
buGW/40fW0G1DHWPLCap5xv5X0llPsp9mYYaoQGGZ0LIsgeyp7eY3EEUpBZrK4v73OH7mBid6OUO
KPQCmNlJvglxvzQH1k1VXZuus4Ddrhhz+8oeI7ZyyyyjwwnshxYIeynSNpl9Vmw55+bBP0xeQMLl
SEOsgcNtGOQhbpvLOvc/wvcqILkFunbAiUTRJWSpnMg4fF10AIj0/TmEGdaoeTl8j9o1kFX9rp+k
qWUuxZpGn7izKSte6D4Dkd6l15Xv12gXa1+kH8QUgjMWk5takFZcdq45V7vdXCOmLSbGUZpccmQW
+HBQ1/MFY4EO30OU+FTqObe8m5/dz+RnKhk37n6hbDJgm2DXBBbggcQ/Mig2EY/twCgvCX7cIqVQ
skWDW/xI7GfPae7I9ouuJNu0FxRdM6zgbbIGS11M0KOby1HYLZ6q5zNvcIPDiX286p7O+5f8IAnO
8xDDz+K38h1n+NH9YIifrxMZv7UA+sBfjnwf/qeLsxx8vfYjVBfNXyYYC/Z+Xy/lEp0OOlkNxemO
zQfa5b+YKXVXqNRbTzFSCciwDHfydaR0i+3P1OFFk6Nj1v+QohNgiFFTaNIO+dXp+PLkZXaKX0hB
YBs3VmRLOAwaiNAD9SiVYogja7QVMllvl2gjB8+OmO1wwxsL8jF/rmeZw/8vlzRr7ez0hrBJ6B/e
rpCT2H5VFQswDLJVeHuy/AWEPKtnXoAjfRi3G//amzzinWkhb1cuc0uvrW+cM0h0qkoy3MANO1kI
vES0NspB0+6LKHs5jKkPotp5o9m71dU6f4HY/Uvq1mQRiAdm9EWNbdWOqpmveBsrMfD5DutVHdLv
7zC13f00MN95wYuK4enVgV7CwHrvflymEMwjBDQw5ycJz4pfVrqFO84P3rjcN3jkqeU2qCC9V/kZ
DYutTcHfIyWRg+VXgbMebw1sl8658f39WnubBCK91ToD5eJbjrH1lTBPAzxzJDjT8eJJop35ry2L
hCVDRd4Gqa6+kdBfEQlTjvzmDtc3kG3BuHF26we7OYGmq476OL/p3FOYJjq53mGjCh9OEbwabvBJ
gP11kF3PmssxH67OXZSVvLX3/J5JADypjo/8DAzR2hQcJ2DBJ/K/OrItYVNu5Fh5dKSXTYZgZcIp
HSGGq1h1ND0wVdMGjGcDudHDZTBC3FAmMs1KWBFqp6g1vqQ7NvHX50QISPxphK1VcGNWL2jN4UQA
l+HPheRAXmQNST+4DGf3tQL15LwQM4sgqOXJ9WzOEkb3tku1mLn0xI3r//Mp3v8NHbB0kW4ZI3bB
siggVxhs64+NCy27APx1Y6EBK1hKOTs2qwkfhOKsbSghBIjj65xPfOYtxM9W3uDV2x52fvlER33U
VeuGF7GK9UskyIZZtXv0HYnXNYy15u+yIgd1B8Wh2C8KEFoIz7uI+YmqNjOVc130zwqYeEtN3kdC
0ZiF8FJ0budQtPs/N6ddn7dExXk6hcLj+QUXFWSrVFh819JSUPmf7QO+K1YU2aFbTRoXZeRbL0gT
34iRU1YkBkPnDATvzZ+3r1Q2UzuT+uHhLU/4/agvDqdBOUqvqbJlmKSIUcz6QeIUmOAQfDzS+kZO
1eIVvKys77PikRpOnuNvMGyXEtA44k9pTOMcknLyugmzoXxu+9tRL6LkHv/nkhDAHQU2wd83pb/r
G8rQTBChaisfQsuvfCjyXly1zXp37A40wUmh4Pd4kbQwdS3mSmMrg91iANBS7q4JMLyQh0OOirRu
20VLFdwpHrc4OD4HhhuAq3P9LNnzwtryaGdAELt5Ir589UoIPq64wd7z4g66MmSSP0+eNk7Be8dY
wdF1vxuxmJsrymjxSauTdb7uOACkm6OK1718gOfV3GCPrEcBvszSHy56OKGCIy0c8DcPu3y4Qr8W
YCx6BD7xSW0Lv2MH2LYevTza0+fGpV97XV5TcRawq82ZOMwE2jM9KrMUb6JLsiPHhIY1iRiTwch+
0pv1ACamweiXllVc3AS86+nCHOR2aYkgcmzTyrgibh2itYZIsyQqlX8X7RS2kU/cnW1T8BHV3Ndf
w/O5OWVCV3W2g+8aEJrFFT56hejajS7kByGju6bkIiaBqI9yzQRoFyE5Yf1a22P4LV4UMg9a8O+y
jQp9U2maqTMzhoYPBjP/xidJgbABGn2FzO3PHLf+CWTb2Aa1EN3O4pOWj2d1WS5llNBrg6IkR4MR
6mDsBfvEGd1nJkF2G/J0vBlTaLqvo68ku+5lXDNduF6Nsb82bkCGlvx4ayOdACMjJ02VinTr31e4
5d+ThzV8dA7OHocUQOviR/4E5F6OLbMDlioonYYIisruyEHSmVIMUKlVrLuPRq7y3sc4OKzdmM7c
zfilskWYWIC8uB2n8opFRcK3iJl1Dlk7Okao+8oJ54RgktwuHILP2bYaLfdjPWDDEcWUrGPYuE99
1X2x+5HYW/NzXkLL8iF7rcelUP6nrnxFqy8anlsm/WZDMQKUvHk69n0xVqCq5ygULS0sCr37ggNK
CiM/CU7DiyMyQyXdip59kt+TI5T4NJxjRFi8lxyuUhWDUcAO2ycS/gy8codv4vFzhfoFtybtns0P
NWAQgO210Tncj1HsxbTh5m8N8j8AvKFTWMR4E1OB3tug1NrCcJrvpFcVnWSPWk7XymMHM86+HERk
zYgOwq9tPSGHXNleOxWS7T7iH2NAfooOOIFxk2L3TeFnepBJAb6kNuYAkMxJHfb8mLjCeEp7tIGp
QxyY2uE0RjiCtCDxhdiCWDIz0I+WhyI1Iny9jq7ET5T5joE4DFOWdYUPTypfJ0t8Jdh4gOAP9Bv9
X8s6lAYNtIhMp08Od3fYCRgcRinHV1NLLsVGhpKdqBdF90GAQqXpx+Q6g2EnfCucUOFkUp/MvOLf
f8K7QPIh6xx9qvFSYhIrUqUS2Wo2YOAA0QqpiGKXTZkZ1TnCHsAtVzNqYW/fdNvAOPeEj7wPxgRQ
x5mmDiZgOu6E1/FxQ94N4FdfAFKpBVmhEsUc3/mYxWujqeBqCobpGBPQwA++NaZurgTPVCKI7NkN
z85KFKfFnspGSlAnDvngYSXN5VZrHJ2aURS2wRkxfxz1PE8+P2nvgjiDeHA2HlwwlTEdwzE1kdJI
XqPwrpO0JQ4S6Q5N0CYbltkFo65mOod9s44C4DmFAhNcka+h0oYTP58uEtTaPUKHL1Fzxv6K08g1
KeDvxBMr/6dwfcSWjMvRwd/t5qOsk1e9XxJd3XU+e3KS0dxSWzIu4AwJMvLFJJTUjKvQMY8EEH94
LszqXoJiFxQL5q2FEGm6MoUmwip3rRVjPgob9X+M8LDzKPXwFeKr7xsyEgzuNZAPjG6fJGKgIPX4
fOS4Wl3qOyuAE1zDcBEkT2zhRjz/yIsGbIEyp9kuAOX5zpAVSwa0NRNP/x5dffF24Lo0bB3pJuoW
Zr45h0opVepk/rHugmTeWLJLFy7WMcpa5oXUhzu2nCUskgKS3ymaiDYgimjDnwheK/TcUdOvbi1O
ZcQF9Lpc4YS3rLtLe3Ca9wGAnnmCPJUx03E5fWwB7WXznI4k5XXLtGCRti7IV7VYAxMnY0W8uOSH
kwt4XWWhfeuwb9k8fq2dur4DWLCGGp+5w9H/u6SY+eg8pHtQcqFsf+Rp9IoSgykGw9SyGuryoWRn
ErKleuCuRjHzYELtZhtQSMVc7dAR2dhF6FNrYVgVBc8uvoAKXsi5LSGtx8imyZeR3VOLwLbyO9P7
Wq9sSyFMBQDEYG7gtpr6M5ISeSUC2THQ/KpjRWulcW+rke02jkLXdz0uhyLNRx3zdBj30SkPPz3X
f7KHvH1hhSipVKoVdyqKHrPcMdrxKxqqCCoHHTdEeANqG2RbY5AIqB8RZnIXa4cMtzunawTQL5aY
Tj6q0nA3LBRE8AFPgckKmlhclTMYi3Sp8wbd0ZD+PQ+eS2Vl4O8ThacbhAgZQwQnRHzBUYlBXiZZ
o9SbKEeHz/2huECFbUXUEtjvYF2D+ql8Njzk07VzYxpEO43B/QJeTX80HP/E+T33H1gD5ujCUL22
ohSAapiKUBVJrddIOKng1hXQqHei5L5emXIjwUgHuqGN6mdCDRiuVD0Y7HK+g+M6UlPbfoCXZOFI
idZokfTxJQMdEZmLBBkaJmcb4qKYiTiy/zK4k1hMnEN688IQOEsR7SvFdUldpyTbQ7uu1ytnUfQ/
5qt7s5XRWNoIzc0CB+988MV4qT5Vfp7L1/8laxCdonAPMc/0v2KmjfFd7BjR274F7klZUAK9GTCg
9IyplghcJd1LE+9SyFD2URsFyv812kcNdqwZ0Ke+VLDi/7wcvrOpN0OpFXNA0/k9C83ZWRM/5oBd
HDf7U1ooDyIpUMKGnsmQ2JJGBko5R5/bznZ3xKur3oShYm6f3OziNvuATW5PRGTi/7vswBtPhCR0
onskJDFrm/mo4RT5VBb4YPW4ssxNwcR0Mx3BO6PRcSSV++7w1Z3fabDca0KO4PmURZQkWfdVKyNU
Lvd4PLNZISOf8YM4Stpn0EklzDMih+FslTcWJk76hY6BX6clVKpd4tlOosD6Cge7d8poNrxbvLdJ
alarBqTvlLUMcAlqd0l6Oes1q66d63omjBkgsYKB7nBT6N9jBQMNC7Zc2INo77g17wfRvn63qpGk
LNYk92gW8t2ee2SFa2dzk9xGGgeS6z8tOmF7wcCwK7m8+9kVYNY50maJIZxbeL1+8wxS62XY0/Yf
3RhuKadupH0MgP6U+C6KtDpR0dLzPcQM8a1f4PoiVCBrIK8USuVy14Doh33E/YrhPV/sVPp5DnYo
79CW4qq4VgXbHnX1gznmED/RqMzZb/6eSbj4GvnmwNEmvgYioOSr3uUfCCfJ2/O7TDvbC8jDDIgQ
zR6mOWmVVG+GFmTl/VjTB4mYGeuoLvNPxwAzT9fWsn/bElhqlf3FJyh9gB1QSY6yrL5MKcIWOgDG
hSlGnotX/5c6d3dZACRP6eBcaR+v4cgM8Weo0DJ3kJ2harlxd7M73iRDbc8ad2b7rvPcTgoEWh3Z
Oxwbw6uBDoCDou4BHwzO4rxSKL2bqxDuLLRwv88ILhvHOeUSx4A9TMsytcb+0ycCC+T2RKGg4WYg
XFxqKJVu26nEdSaLYsel1jKbnOo389PaTvNDc7H3Li+GJP7iNnJVpfY1JNy/qn3saVStiPZ+sk+o
Jcp2GGYY5iD/zOwIJ54X7CJniP2kQbYT3faP7Rhbgv6fnMUwtwKcU+MNemidv98h3BBHWRPQ+3Cb
hrHWitzAu7DAEu2lpMFWmZi0501Z93qM4CR8gCpDcA38MTKMfopnGwSKvIJdSqPE7X5nhPDtnKMa
QukOS/j7OpL1KnF+Kqs2cfpwXaHgm6GYX2fkg/VHZWp5X5o2zYNY8okxQ5vunnrH1ygALRXtMLTz
mscMqeVsQjbl8kZOEcZ3t1qtUV3ImNHUQhsZ9+bG6/1ALBtnwE4hbGrQWtRd29Ci9I0Yh6WmDaFF
iPwpq+LCDFFbNHV7LEVscaZPsPM3r6Bh5jU7lNeWzfE3lA6jJutOCQzye5bmIZ5FnrBtFx4a4ZMJ
vI+llPum+xi6on4AK2rHgXQYAkCdDs5hBbxmIYIBqjVFmdjcY2fP0MHYxvN6311odrJh1sVPURvo
aR6aj+wxw63qobwIBpGgK9WcEUCAD0Zy6ZNfxnXRYn0r55sYMWvQ0M2ZR8cSAoDOaJ/pXGCoJ7Px
0I5odNNDFTHdHNArF5IjZJTOXEiTjgsQgGlkCZmLFGkPOQkmqudZytrZpcv52vcaQFAVH9QnUcRX
sz4EKiBtm/42hpVG2QROgNauj6DxrG6HFnwwM6kThG7Wk556P4rc6nki3cbJi0P/Ih24ae6tIt/7
Wv4y6jmvYWbTbT8pmGHdlrImMYMXqcLkaGaa/KstJKNgQP6xeWfS8G+Fo4b6hjPY0F2/yGUD+Dq/
SxpLuM7MYa5iEfXfnydeMDBZRMVS/CcW3BlRw3TqhaNrfd3tcmCZYC2kSzOJPcFVDQGZJ/7+k9b7
pPcCKG6Q1e8TcuDIEVbqCOz3/o91BwlSrskGVW+9GWINa/4YMZ4B5RB9fqXN04foeYTeAQBbK45q
tu//8gMFFoWsQqwzTIiJe3cIfqycEj/Xn//XSZAOE6hb72tfV/7N8SbmmajJpoocbRL3SpBTWoXl
UtyTJvun1wR5nQvcLOwlQVhdPMihIow8Xv5S5UwrZVr/SFr37L0g1RC4eJ7h7dBKQ7CFZxwmuts7
YAua26oGOPB7aeWGCZLNog5w3W0zZOj/qVe/DjsYAXKUgTxu3fz1zO6Vzktv/1LEf5OXJvWaFcnu
5tIxwivrShIRqSw2SLxzEDIsEaCDocBr1UVjUVxiRUyh9E/+BWQlGAKs7y8eGN7BJXRHEfvxkmJ1
fHR4WRYui5CfnzF1jYH0SKlmEamlH1Rcs4OmSsM0kSzcx08TMf1z3JDprQjrqDXRpoOvWlF6NKH2
TxA73EGRCDlOkE1y6NY/uLrp0gHgshoM5ZtmCUy4GPR4B4HqMKvl5wdI5YFzBQmbXzaZ5wBTm0RS
vpnM7A15rPURpMQaq6BVl+rHwoTkbzTeTJveaOJhZvkPjLDWwUbW7rGMC9YBuMW2q5slznefQrXQ
Zaq0piAv/o37J2krahI6A/yTlW26hbNL4JDHF/cMDEOSwrlunjQ/NOu8KIa7SzvTmne6WLAFPOrb
F9rwETFZFSLUw2yGfM6MCdNUxth6anUUwLDHTJOgBMUEwOkrSMhnZgR/daHFSurE3iJMTGa8zT59
7j19k14wb7spfp8dAarWJEmI6yt1dWGxoXQ6hXK7mwTPNrICnfOVsNYOOwYI2DYm2yi3BcmQI/8g
AFBbZynWQDzk0Vsa1krNHaUxGCo+Z8dReVq0pEJOe8enIlnJNTF+JwyoqvBjHFR/c7qFeQfEpFSI
/7y3Q0vlR4qrbrVg41PNT5/tBQr2OieZ82RSSoaV6porCfFhdJsXBpTkteFrpwTNzcnfN1avu83o
MPF3aun2uRFxITlrOYs6k8rfN/bFZEs0JXByb+qOGOp5EVCD8XZKwvXmfrhqL1gXYYLNpHX6/57W
qikNmzd8ChI/7i7hoXduXs5BePehPfKWrkGC4uYG5W1O71TPO50UmkPD+1oHdHHvR+5xHnYC837i
2IiKStOEpExHPKN7RO1jpYsj4pTKXREKsmtOYCyfTLtWTYNMPUX+k+TX2ZwF09zC25tZK5Ti5EcO
rdAGdUWnGyjkSvHVizXZm+4BwTcBTjRVUZOIC7b93cP4VE94K8YKd0/wcvPrl0O/8EyDKuV2/M8f
g1UCIE4gqCgi2f2Chj+GzQXQcJSq/Fc2eEP0ud0iOSox0DMP6B9lD1zmgelQ9JtN/mgWbpuBUdYd
dWRPy3UIyimo2NVGjIEvfYK/n8KqQ8ld6saZ/Jt4m80xbrs0THrEI4FpVJHEwlC05S6SqAB2KF6D
MynnLBo8p+QToUMVdo6hn3Vg2sv3uCbiCgExe94YKcMG1KR+1wDe8EjU9myK7Og8+fTe64I3cDCW
GXlAz2PKYcKIEs/khAxYVq6Yr55nNaCxqvbHWfdGVk0OwIciITPsPQTCGIT9q9Hqxy/upFK3YY78
NNgdd/xnz7sWqjSRAAnWfeYY1VPPjEH89vv3QLTYb/mlPWtBZuUZaXWP0crf8YfMv9512WIwOtkj
5zhrqRcgo+B4GC4f4IiTxe/xT8i1R4G5dCuFU3LDQ8oHxG94LE/gzK5HAzgXjijDkaFbHAtU2ClG
7XQmzGs6NppKyFWGD+jdC0o3Rif2i2PTPfq4JsD8i4zaBv/lyTnrgYati9oumqXm7nwQpgKG6yj8
36dszyIsuLCdOwkQ1E61vzVY1FE+L4XXrrPfjF7593Z67+ZiDFqwFr5L5eWnr6m7t697PF/9xwR1
a6V4NfjsrnbgupC6O23dCIArxK748OUFfDhLD/R7vQrGugAk3UvjokNaNp1anL9yJNCsr35xhML7
PLGKomgKZojSclgM+NUUjHHLviYe1/ZvZtVYXCzrjX14Xmj5VJtbxc7mmzjYGrXJc0D6mbgC8UT/
S4wcUwpOP80FnFp2XHBAcCLw2GaEVAPOmF1JuergGu+K2hPojiF9Un0LFfXJf6nlSrTqJKnBxVd9
z36HOPPTnLJkGLr2sClq7n/MwAWiSDDXrdSSc0k7C9wFomDYs7TcXH2dPR17oI51EqACr/mFHHQH
kKnfxDuC2+2Voy6wCLgd47Zju2kH8T4cG0z91t18DoUXX4sgJJ+LQ4DukhR8lDZwmIsEBntSF5xg
bGQUqjH8vo6pGBtafb37OVV6oWWNX9Ge9+Yw2065xhCXpW76Zv5kBJJpkxzmct90EaOU/+TOMpY0
CU46/bX4JR09JqtWNssNYRMLUBO8aH3nFZl9EwM4Wa+p4MkI5sajMdYdCEdUAZBKPU7hGP0LYMM7
AEOQphdUi9wIkW/dxeG7G2wQi2qoHLS1L8+fkZDqqNbPYFWam2TOvgpQAaXhUceHP7ME8nLLfR/L
rg31unmcI4xd2xxD6euvO+2JNFMDr1C9KGeAnyIF1j8bO7t1MRVVuEuIwPEdGKpA9Qw9PtAOJtdj
I31KLTmHuWSjjIeO4q7IsDDPwEj6a2vo6b85V1RuPVHQzdcajtLr/Vdul0dJ5QrD1zpYJFRP0+yk
YCPWfiQnfqxpcmF9DeUk+nCk3ibUSniQ2vyxnD90+UpVHNVR8NClhAAmXWctpokBH8j9NNJtWcQZ
E106KOC4CHIvv9MsQOTcOGvOzh0HOuDRylu0iBGTC6V5Xl6oUEY310BFhQ9Bey2+DOyZtyBKRQcM
kHz/RwlGqt/0MhQGqEET4KgziiiuPDdn+tbG+ZBmJvj15mLqFmqXzUiSE+mdLAm6XxXceK91qg27
pO7ZGjZbUiPfJobsO76QyfpLq7FCPGfpYVyhaWJy0D+UNveSZB6YJUtVsFtIAZIq5zdy6TwdDXPx
WhvWAfiS1JSu68PLIazXpUctKKkPFJ6q+sV4YOPpw7hIBZFeOEfn3Arzl0jkUwQ+Us81tx0/V17z
R5Mm8Tza9z04j99/kpKW4rlX9OY5T8FjrxsXiv+aCWD192TalHSmuQxwZ4q1BhLdRS5ZQ3TB9Jwg
+HurS6oMbzZDceQ4QRhaOz59jv6UjtT0hOXLPSh+UukQjg/q/cwcYJtTtL8V2x4+MYDEaVWtYQH+
chbWM69hz/7heYvey363sShV5y7h69smKxo9+6O0UpzZXV/BkEnGT1eduDIekFulJm6XQ2Ca0ZAa
63wUXu9wVVjy92hQGTNj4CCRWisQ/0aG9/O/W5xR++EFbe+n1TdOl1zSOEMwqUAzI9ra+zULC1B5
ugICbwdkQIqRqJM/mU27yySEZAVKaUk7X/vV8014BZRAMOR+sJBVapex6HY03ccxligWC9rodQaU
5CbQA2V16xeuNhjEEYJlinSAih156f1yIL5eRjkdX4PWOFPqFwy9KTkOFmZu/cQhQtHYuAg4b3MW
CQWtf5QCXB5/wlt/HK52dDX7QapsS2K0UykkpawN3KqU8UDi2RmTXE14jKrc9YU/5SIog0jpIZLs
LqLFD0MrcuafP0HDsQEFadLDYrr+dU52ejXcsxCpqOgeKvb/YcywW4305etUwFv/nuQl4dTizpVU
cRCvRkq65kOLjPvb+fYTbvVy+GgWXtkIYrJoReOJrzFJsnhO4oMwXXoMFLRsp43I9U82clXkammJ
ZO2J6cp30LCliJCqZwhMi/9qTLPYgIACIrmQ1FO8vINeSNyN0wCFQFZB0MTyTJH9i9yjNBmj2V3O
fnyIXJHoSvhYleos9LmZaco9azjzCmVFNKFUeMlznXTnd7VUQlFS6LeHYexeTRw9rnoL0e/Co4Tf
7y4tXizL91/ZwDokBUkDLunnKUAXWt67pSjlZY9Q3EsiXxpMBJAc+zZDW1MKcVrPHm7mY9H2qmfk
lAw2+CNZtfNYCVUiA/r7IYx6OhCgO0eBUEyUF18vTngqGus2R1G5gaPsK3+1i4Xl6E2VJcg+3mpK
yA0405+E88hPBzEKV3oBDCYOIpDFurWWgEIucKOKtt/N6kx57tyfT4G5h1tpyiCUC7bbusljSgzQ
rtXVpa6z+ArmB/kd0/Kfssx5JthTcZC9up1jGTrbeXVb/qB6GOVUiGFXehnPGcAgE+jPfl6hoCuY
ml6PqWBmDvUBYxksJTgu2Sz1zlkkEZe06aTGGENOtBR1CoyKH/q9a1T7Tqfn4dNeRckAyQf93cum
J4Jj2+7YxVqN1mctKxruAwtrFWFzVBVqSdMixE0xuzeWCpBje+Xx3ytwbv/eDUfINDWR0cbcZVap
7QvRP+qQQz4GWbI/UsI0p6SFGKR2r16+dpdSB9x1eRJ9eSDqgGtsclora+wREMco122QgqQoHkpH
peedJmo3oevOOsLPEVsUQOCfQatV/c7RD+nS4B/+lk2l0Fs87QoBZTIOQDwyrmCPsbY9ZHg4kiuv
pS/4F1yzsYsU/tknNMju8QYpClUzm3FrtT5AojYRXL9R3uph71MJzpSxK0Z1q/SuCx9K7539CLwk
dIe0ljRCDv6T+G2tW9iwv7gP+6Pi5pyfZuMVIKjTMhZC4i4itwzVmnQaSZzRg8RQc5m70b3bprik
6+wuzODhe+pFYEWy7kNxZqfu3mJDxyhRh0Kbw0S18ibjcISRlLPgLyoUrnyQmeHfo7rIYfacTpZ4
pP+rxkUcG/hHHe4kBZQhIIq2rSt6l+QuoJY+Zv9itdOJJK8NQohKvxmsKhXRjKb6nT5zQo/BtZG0
r4SreAHaTPJ8rk5YXrSl3FoTDJneP6bOj2bgIOeGAFAjk27HZHGz6ZSjksUjWDfnbwj/tPetlHvn
i5F/vPH9cLPKNIAzyL7EcPHMmyFMiNRm9sESQ3mC/B7uvt2H1EHeJDKtqDkfHW1epC/xza7RTteS
cSPoatGFho0GyMICabVNGNT2565Jt1dyaDIF98ezx5mzBzIdB3g6kes/W1CwrZGemMa3DTB3vGkz
X3bcERFoeGqejc9mDlJvdK9KxTq9FpCbIJiRtTg1DzxKwm8vA+U9X1HOjCAjp1lQTPVb0yiLdeHu
GenrN4l5q9g8IqrGpGuV+ZpBwS9gKVJT9Gbpk+58p/PZnYr1m7u4FmfwSqyCww5eQzA+HxiSR70n
rgoBQtwhvJ9Q/wvzKj2N24c/mL3HXNBG6M9JQu/9OW8d1ie9KvRop+GFiyIxB1j/Wgcc4ETQeGKj
MrkCG0L9EF3Ww7jnda24fmfIuxZFa2BPLTwoyO+YWOs+ZMACZ6IcMgAbP4nN3KUrw2N3vyU/iD8O
TJQL57xMIGASLWHEK5oh9CdGc9tssps1+j6zTubWZWsnuUGLNCv1LYvOW0b0gnoeiuS4uktT2TlV
cK7GQjcAlJzNJRLbPHyu6Mbj4K5r+iU4hUM8yNj1Iu9Hfk1M42t3HgDTMq2H1A5RIRtynC8scaRH
cqgWNMjomDJCEPuLFVB5CtWzUzvHgkjQMRvOEANbpNX/rs4VWfQjVHLivcyr/3kMPwdAlA7yhDUL
htF8/RHyDwbEY8M2Sl91orXHkyOppb2u7OUH2/O0vMkU1Id/P3G+6OysbSsaFnDXO6+V+ROgS5Cy
42bbiIaDHZDyU/FUvX7yrf2OIsFhYaKFvoo4JDYC0+6s2/6GTrd8YKq+CEITcRnPqj99IV88SAvi
GJC0ekQhphgRF3lloPd6ME2CUJ9BE6L4d+u0I0BFWTxZv+eJ8ni8qpnlJVy0C6j8pAPd6hg2deLB
O3go+OAKwgMVNabpLyYN8rHu46UvsOpZyO8swPByckVfsINUg+6OsVwsNFjGhvfR+UoBQHp6lWj4
VRVK8UnT/VTnJ2K9kpGu23A0lqjgc0LdEMKrztcd7vN6S2geKMMID/IItg7v8EuNLdYRbHL8+kwe
eFqIwdD789YtiEGFzZIUXd0WUh9YeH14kQO2qTTCtpBrDgBy9q/JkP2whTqd00tj34Kj6mEA+1lp
8J1K32kE9Se7r1xXn13h/BnX0JNm9SAuzlcRlclB1I8prM/gqsUfBIiO5hRlqgqmy/uj+TZjqLAn
etCRmeMi3bxpQMUfL8yBJGHoUIyh1bCPCKZsaGwu2ML+iJAWHuaB0CzwqnlbpBZcHhz539JaXcNB
91GlHBd+pwtg3rrpbMVKc5AoLw6XL/PgI5K7Z4Dgkp2CUluKenxEvZ2iIp6+ZmF0ruBUCJfCChF9
nRgcmIv8woT31mDujH/rIDS70tzdgu3J9tXH5P93OvAN6QrVe3W3qDpiVkpWpqki0wUOVlI6EZQ+
yxY+jIywyKgdyBeYIrV32hDrvheTQMckv8QykWoIOeewDaJJLkZqhJGx5DQ9q+asZj9gf2IJJsp3
5daksf0EOwXC2LwVyp5QSZsUv1FD6cO2e6ZxWNLrboTHZAXeytRnNBpydgl3rlkjzUUJuIFWTQ6V
Ki+dsmGk1kUdqnU6/EEXqtQFTLF7RdePAkj1evaYQaC9eHIe5FGvSan7yDZNkSWzgxL5SZ/yCNqa
Kq2NBtGC73ZrK9mw97X1vGx/tvEMBibdIwNVs/TF8nQxMzEwOoF+vPoSBNbt7DKZ+hZegcrz5Chg
yK3P+Pq9ZqFiRle2IU0=
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
