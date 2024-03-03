// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue May  3 12:19:03 2022
// Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DataPath_0_sim_netlist.v
// Design      : DataPath_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tffg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALUT
   (ALU_operation_0_sp_1,
    \ALU_operation[0]_0 ,
    \inst_field[31] ,
    \Q_reg[0] ,
    DI,
    S,
    ALUSrc_B,
    inst_field,
    ImmSel,
    ALU_out,
    \Q[31]_i_5 ,
    \Q[31]_i_5_0 ,
    \Q[31]_i_9_0 ,
    ALU_operation,
    O,
    \Q_reg[3] ,
    Q,
    Jump,
    \Q_reg[3]_0 );
  output ALU_operation_0_sp_1;
  output [0:0]\ALU_operation[0]_0 ;
  output \inst_field[31] ;
  output [0:0]\Q_reg[0] ;
  input [3:0]DI;
  input [3:0]S;
  input ALUSrc_B;
  input [24:0]inst_field;
  input [1:0]ImmSel;
  input [6:0]ALU_out;
  input \Q[31]_i_5 ;
  input \Q[31]_i_5_0 ;
  input \Q[31]_i_9_0 ;
  input [2:0]ALU_operation;
  input [0:0]O;
  input [0:0]\Q_reg[3] ;
  input [0:0]Q;
  input Jump;
  input \Q_reg[3]_0 ;

  wire ALUSrc_B;
  wire [2:0]ALU_operation;
  wire [0:0]\ALU_operation[0]_0 ;
  wire ALU_operation_0_sn_1;
  wire [6:0]ALU_out;
  wire \ALU_out[0]_INST_0_i_1_n_0 ;
  wire [3:0]DI;
  wire [1:0]ImmSel;
  wire Jump;
  wire [0:0]O;
  wire [0:0]Q;
  wire \Q[31]_i_11_n_0 ;
  wire \Q[31]_i_5 ;
  wire \Q[31]_i_5_0 ;
  wire \Q[31]_i_9_0 ;
  wire [0:0]\Q_reg[0] ;
  wire [0:0]\Q_reg[3] ;
  wire \Q_reg[3]_0 ;
  wire [3:0]S;
  wire data7;
  wire [24:0]inst_field;
  wire \inst_field[31] ;
  wire res2_carry__0_i_1_n_0;
  wire res2_carry__0_i_2_n_0;
  wire res2_carry__0_i_3_n_0;
  wire res2_carry__0_i_4_n_0;
  wire res2_carry__0_i_5_n_0;
  wire res2_carry__0_i_6_n_0;
  wire res2_carry__0_i_7_n_0;
  wire res2_carry__0_i_8_n_0;
  wire res2_carry__0_n_0;
  wire res2_carry__0_n_1;
  wire res2_carry__0_n_2;
  wire res2_carry__0_n_3;
  wire res2_carry__1_i_1_n_0;
  wire res2_carry__1_i_2_n_0;
  wire res2_carry__1_i_3_n_0;
  wire res2_carry__1_i_4_n_0;
  wire res2_carry__1_i_5_n_0;
  wire res2_carry__1_i_6_n_0;
  wire res2_carry__1_i_7_n_0;
  wire res2_carry__1_i_8_n_0;
  wire res2_carry__1_n_0;
  wire res2_carry__1_n_1;
  wire res2_carry__1_n_2;
  wire res2_carry__1_n_3;
  wire res2_carry__2_n_1;
  wire res2_carry__2_n_2;
  wire res2_carry__2_n_3;
  wire res2_carry_i_1_n_0;
  wire res2_carry_i_2_n_0;
  wire res2_carry_i_3_n_0;
  wire res2_carry_i_4_n_0;
  wire res2_carry_i_5_n_0;
  wire res2_carry_i_6_n_0;
  wire res2_carry_i_7_n_0;
  wire res2_carry_i_8_n_0;
  wire res2_carry_i_9_n_0;
  wire res2_carry_n_0;
  wire res2_carry_n_1;
  wire res2_carry_n_2;
  wire res2_carry_n_3;
  wire [3:0]NLW_res2_carry_O_UNCONNECTED;
  wire [3:0]NLW_res2_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_res2_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_res2_carry__2_O_UNCONNECTED;

  assign ALU_operation_0_sp_1 = ALU_operation_0_sn_1;
  LUT6 #(
    .INIT(64'hCFC00505AAAAA0A0)) 
    \ALU_out[0]_INST_0 
       (.I0(\ALU_out[0]_INST_0_i_1_n_0 ),
        .I1(data7),
        .I2(ALU_operation[0]),
        .I3(O),
        .I4(ALU_operation[1]),
        .I5(ALU_operation[2]),
        .O(\ALU_operation[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008A80)) 
    \ALU_out[0]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[0]),
        .I2(ImmSel[0]),
        .I3(inst_field[13]),
        .I4(ImmSel[1]),
        .O(\ALU_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E200000000)) 
    \ALU_out[11]_INST_0_i_1 
       (.I0(inst_field[24]),
        .I1(ImmSel[1]),
        .I2(inst_field[0]),
        .I3(ImmSel[0]),
        .I4(inst_field[13]),
        .I5(ALUSrc_B),
        .O(\inst_field[31] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Q[31]_i_11 
       (.I0(ALU_out[5]),
        .I1(ALU_out[4]),
        .I2(ALU_out[6]),
        .I3(\Q[31]_i_9_0 ),
        .I4(ALU_out[3]),
        .I5(\ALU_operation[0]_0 ),
        .O(\Q[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Q[31]_i_9 
       (.I0(ALU_out[1]),
        .I1(ALU_out[0]),
        .I2(ALU_out[2]),
        .I3(\Q[31]_i_11_n_0 ),
        .I4(\Q[31]_i_5 ),
        .I5(\Q[31]_i_5_0 ),
        .O(ALU_operation_0_sn_1));
  LUT5 #(
    .INIT(32'hF0E20FE2)) 
    \Q[3]_i_9 
       (.I0(\Q_reg[3] ),
        .I1(ALU_operation_0_sn_1),
        .I2(Q),
        .I3(Jump),
        .I4(\Q_reg[3]_0 ),
        .O(\Q_reg[0] ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 res2_carry
       (.CI(1'b0),
        .CO({res2_carry_n_0,res2_carry_n_1,res2_carry_n_2,res2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({res2_carry_i_1_n_0,res2_carry_i_2_n_0,res2_carry_i_3_n_0,res2_carry_i_4_n_0}),
        .O(NLW_res2_carry_O_UNCONNECTED[3:0]),
        .S({res2_carry_i_5_n_0,res2_carry_i_6_n_0,res2_carry_i_7_n_0,res2_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 res2_carry__0
       (.CI(res2_carry_n_0),
        .CO({res2_carry__0_n_0,res2_carry__0_n_1,res2_carry__0_n_2,res2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({res2_carry__0_i_1_n_0,res2_carry__0_i_2_n_0,res2_carry__0_i_3_n_0,res2_carry__0_i_4_n_0}),
        .O(NLW_res2_carry__0_O_UNCONNECTED[3:0]),
        .S({res2_carry__0_i_5_n_0,res2_carry__0_i_6_n_0,res2_carry__0_i_7_n_0,res2_carry__0_i_8_n_0}));
  LUT6 #(
    .INIT(64'hAAAAA0008AAA8000)) 
    res2_carry__0_i_1
       (.I0(ALUSrc_B),
        .I1(inst_field[7]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .I5(inst_field[8]),
        .O(res2_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAA0008AAA8000)) 
    res2_carry__0_i_2
       (.I0(ALUSrc_B),
        .I1(inst_field[5]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .I5(inst_field[6]),
        .O(res2_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    res2_carry__0_i_3
       (.I0(ALUSrc_B),
        .I1(inst_field[23]),
        .I2(\inst_field[31] ),
        .O(res2_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    res2_carry__0_i_4
       (.I0(ALUSrc_B),
        .I1(inst_field[21]),
        .I2(inst_field[22]),
        .O(res2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h03335333FFFFFFFF)) 
    res2_carry__0_i_5
       (.I0(inst_field[8]),
        .I1(inst_field[24]),
        .I2(ImmSel[0]),
        .I3(ImmSel[1]),
        .I4(inst_field[7]),
        .I5(ALUSrc_B),
        .O(res2_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h03335333FFFFFFFF)) 
    res2_carry__0_i_6
       (.I0(inst_field[6]),
        .I1(inst_field[24]),
        .I2(ImmSel[0]),
        .I3(ImmSel[1]),
        .I4(inst_field[5]),
        .I5(ALUSrc_B),
        .O(res2_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'h15)) 
    res2_carry__0_i_7
       (.I0(\inst_field[31] ),
        .I1(inst_field[23]),
        .I2(ALUSrc_B),
        .O(res2_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    res2_carry__0_i_8
       (.I0(inst_field[22]),
        .I1(inst_field[21]),
        .I2(ALUSrc_B),
        .O(res2_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 res2_carry__1
       (.CI(res2_carry__0_n_0),
        .CO({res2_carry__1_n_0,res2_carry__1_n_1,res2_carry__1_n_2,res2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({res2_carry__1_i_1_n_0,res2_carry__1_i_2_n_0,res2_carry__1_i_3_n_0,res2_carry__1_i_4_n_0}),
        .O(NLW_res2_carry__1_O_UNCONNECTED[3:0]),
        .S({res2_carry__1_i_5_n_0,res2_carry__1_i_6_n_0,res2_carry__1_i_7_n_0,res2_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    res2_carry__1_i_1
       (.I0(ALUSrc_B),
        .I1(inst_field[24]),
        .O(res2_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    res2_carry__1_i_2
       (.I0(ALUSrc_B),
        .I1(inst_field[24]),
        .O(res2_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAA0008AAA8000)) 
    res2_carry__1_i_3
       (.I0(ALUSrc_B),
        .I1(inst_field[11]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .I5(inst_field[12]),
        .O(res2_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAA0008AAA8000)) 
    res2_carry__1_i_4
       (.I0(ALUSrc_B),
        .I1(inst_field[9]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .I5(inst_field[10]),
        .O(res2_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    res2_carry__1_i_5
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .O(res2_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    res2_carry__1_i_6
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .O(res2_carry__1_i_6_n_0));
  LUT6 #(
    .INIT(64'h03335333FFFFFFFF)) 
    res2_carry__1_i_7
       (.I0(inst_field[12]),
        .I1(inst_field[24]),
        .I2(ImmSel[0]),
        .I3(ImmSel[1]),
        .I4(inst_field[11]),
        .I5(ALUSrc_B),
        .O(res2_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'h03335333FFFFFFFF)) 
    res2_carry__1_i_8
       (.I0(inst_field[10]),
        .I1(inst_field[24]),
        .I2(ImmSel[0]),
        .I3(ImmSel[1]),
        .I4(inst_field[9]),
        .I5(ALUSrc_B),
        .O(res2_carry__1_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 res2_carry__2
       (.CI(res2_carry__1_n_0),
        .CO({data7,res2_carry__2_n_1,res2_carry__2_n_2,res2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_res2_carry__2_O_UNCONNECTED[3:0]),
        .S(S));
  LUT3 #(
    .INIT(8'hA8)) 
    res2_carry_i_1
       (.I0(ALUSrc_B),
        .I1(inst_field[19]),
        .I2(inst_field[20]),
        .O(res2_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAA8AA88008)) 
    res2_carry_i_2
       (.I0(ALUSrc_B),
        .I1(inst_field[17]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[4]),
        .I5(inst_field[18]),
        .O(res2_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAA8A8AA0AA808)) 
    res2_carry_i_3
       (.I0(ALUSrc_B),
        .I1(inst_field[15]),
        .I2(res2_carry_i_9_n_0),
        .I3(inst_field[2]),
        .I4(inst_field[16]),
        .I5(inst_field[3]),
        .O(res2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'hEAEEEEEAEAAAAAEA)) 
    res2_carry_i_4
       (.I0(\ALU_out[0]_INST_0_i_1_n_0 ),
        .I1(ALUSrc_B),
        .I2(inst_field[14]),
        .I3(ImmSel[1]),
        .I4(ImmSel[0]),
        .I5(inst_field[1]),
        .O(res2_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    res2_carry_i_5
       (.I0(inst_field[20]),
        .I1(inst_field[19]),
        .I2(ALUSrc_B),
        .O(res2_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h01105115FFFFFFFF)) 
    res2_carry_i_6
       (.I0(inst_field[18]),
        .I1(inst_field[4]),
        .I2(ImmSel[0]),
        .I3(ImmSel[1]),
        .I4(inst_field[17]),
        .I5(ALUSrc_B),
        .O(res2_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h05000533FFFFFFFF)) 
    res2_carry_i_7
       (.I0(inst_field[3]),
        .I1(inst_field[16]),
        .I2(inst_field[2]),
        .I3(res2_carry_i_9_n_0),
        .I4(inst_field[15]),
        .I5(ALUSrc_B),
        .O(res2_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000014D7FFFF)) 
    res2_carry_i_8
       (.I0(inst_field[1]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[14]),
        .I4(ALUSrc_B),
        .I5(\ALU_out[0]_INST_0_i_1_n_0 ),
        .O(res2_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    res2_carry_i_9
       (.I0(ImmSel[0]),
        .I1(ImmSel[1]),
        .O(res2_carry_i_9_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataPath
   (Q,
    ALU_out,
    \inst_field[31] ,
    ALUSrc_B_0,
    ALUSrc_B_1,
    CO,
    inst_field,
    ALUSrc_B,
    ImmSel,
    ALU_operation,
    \ALU_out[31] ,
    Branch,
    Jump,
    clk,
    rst);
  output [31:0]Q;
  output [21:0]ALU_out;
  output \inst_field[31] ;
  output ALUSrc_B_0;
  output ALUSrc_B_1;
  output [0:0]CO;
  input [24:0]inst_field;
  input ALUSrc_B;
  input [1:0]ImmSel;
  input [2:0]ALU_operation;
  input [23:0]\ALU_out[31] ;
  input Branch;
  input Jump;
  input clk;
  input rst;

  wire ALUSrc_B;
  wire ALUSrc_B_0;
  wire ALUSrc_B_1;
  wire ALU_n_0;
  wire ALU_n_3;
  wire [2:0]ALU_operation;
  wire [21:0]ALU_out;
  wire [23:0]\ALU_out[31] ;
  wire Branch;
  wire [0:0]CO;
  wire [1:0]ImmSel;
  wire [11:11]Imm_out;
  wire Jump;
  wire PC_n_100;
  wire PC_n_101;
  wire PC_n_102;
  wire PC_n_22;
  wire PC_n_23;
  wire PC_n_25;
  wire PC_n_29;
  wire PC_n_30;
  wire PC_n_31;
  wire PC_n_32;
  wire PC_n_33;
  wire PC_n_34;
  wire PC_n_35;
  wire PC_n_68;
  wire PC_n_69;
  wire PC_n_70;
  wire PC_n_71;
  wire PC_n_73;
  wire PC_n_74;
  wire PC_n_75;
  wire PC_n_76;
  wire PC_n_77;
  wire PC_n_78;
  wire PC_n_79;
  wire PC_n_80;
  wire PC_n_81;
  wire PC_n_82;
  wire PC_n_83;
  wire PC_n_84;
  wire PC_n_85;
  wire PC_n_86;
  wire PC_n_87;
  wire PC_n_88;
  wire PC_n_89;
  wire PC_n_90;
  wire PC_n_91;
  wire PC_n_92;
  wire PC_n_93;
  wire PC_n_94;
  wire PC_n_95;
  wire PC_n_96;
  wire PC_n_97;
  wire PC_n_98;
  wire PC_n_99;
  wire [31:0]Q;
  wire [31:1]add_c0;
  wire add_c0_carry__0_n_0;
  wire add_c0_carry__0_n_1;
  wire add_c0_carry__0_n_2;
  wire add_c0_carry__0_n_3;
  wire add_c0_carry__1_n_0;
  wire add_c0_carry__1_n_1;
  wire add_c0_carry__1_n_2;
  wire add_c0_carry__1_n_3;
  wire add_c0_carry__2_n_0;
  wire add_c0_carry__2_n_1;
  wire add_c0_carry__2_n_2;
  wire add_c0_carry__2_n_3;
  wire add_c0_carry__3_n_0;
  wire add_c0_carry__3_n_1;
  wire add_c0_carry__3_n_2;
  wire add_c0_carry__3_n_3;
  wire add_c0_carry__4_n_0;
  wire add_c0_carry__4_n_1;
  wire add_c0_carry__4_n_2;
  wire add_c0_carry__4_n_3;
  wire add_c0_carry__5_n_0;
  wire add_c0_carry__5_n_1;
  wire add_c0_carry__5_n_2;
  wire add_c0_carry__5_n_3;
  wire add_c0_carry__6_n_2;
  wire add_c0_carry__6_n_3;
  wire add_c0_carry_n_0;
  wire add_c0_carry_n_1;
  wire add_c0_carry_n_2;
  wire add_c0_carry_n_3;
  wire [31:0]add_c1;
  wire add_c1_carry__0_n_0;
  wire add_c1_carry__0_n_1;
  wire add_c1_carry__0_n_2;
  wire add_c1_carry__0_n_3;
  wire add_c1_carry__1_n_0;
  wire add_c1_carry__1_n_1;
  wire add_c1_carry__1_n_2;
  wire add_c1_carry__1_n_3;
  wire add_c1_carry__2_n_0;
  wire add_c1_carry__2_n_1;
  wire add_c1_carry__2_n_2;
  wire add_c1_carry__2_n_3;
  wire add_c1_carry__3_n_0;
  wire add_c1_carry__3_n_1;
  wire add_c1_carry__3_n_2;
  wire add_c1_carry__3_n_3;
  wire add_c1_carry__4_i_1_n_0;
  wire add_c1_carry__4_n_0;
  wire add_c1_carry__4_n_1;
  wire add_c1_carry__4_n_2;
  wire add_c1_carry__4_n_3;
  wire add_c1_carry__5_n_0;
  wire add_c1_carry__5_n_1;
  wire add_c1_carry__5_n_2;
  wire add_c1_carry__5_n_3;
  wire add_c1_carry__6_n_1;
  wire add_c1_carry__6_n_2;
  wire add_c1_carry__6_n_3;
  wire add_c1_carry_n_0;
  wire add_c1_carry_n_1;
  wire add_c1_carry_n_2;
  wire add_c1_carry_n_3;
  wire clk;
  wire [0:0]data6;
  wire [24:0]inst_field;
  wire \inst_field[31] ;
  wire [30:30]mux2T1_o0;
  wire rst;
  wire [3:2]NLW_add_c0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_add_c0_carry__6_O_UNCONNECTED;
  wire [3:3]NLW_add_c1_carry__6_CO_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ALUT ALU
       (.ALUSrc_B(ALUSrc_B),
        .ALU_operation(ALU_operation),
        .\ALU_operation[0]_0 (ALU_out[0]),
        .ALU_operation_0_sp_1(ALU_n_0),
        .ALU_out({ALU_out[16],ALU_out[14:13],ALU_out[11],ALU_out[4],ALU_out[2:1]}),
        .DI({mux2T1_o0,PC_n_29,PC_n_30,PC_n_31}),
        .ImmSel(ImmSel),
        .Jump(Jump),
        .O(data6),
        .Q(Q[0]),
        .\Q[31]_i_5 (PC_n_22),
        .\Q[31]_i_5_0 (PC_n_23),
        .\Q[31]_i_9_0 (PC_n_25),
        .\Q_reg[0] (ALU_n_3),
        .\Q_reg[3] (add_c1[0]),
        .\Q_reg[3]_0 (PC_n_85),
        .S({PC_n_68,PC_n_69,PC_n_70,PC_n_71}),
        .inst_field(inst_field),
        .\inst_field[31] (\inst_field[31] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCReg PC
       (.ALUSrc_B(ALUSrc_B),
        .ALUSrc_B_0(ALUSrc_B_0),
        .ALUSrc_B_1(ALUSrc_B_1),
        .ALUSrc_B_2({mux2T1_o0,PC_n_29,PC_n_30,PC_n_31}),
        .ALU_operation(ALU_operation),
        .\ALU_operation[2]_0 (PC_n_23),
        .\ALU_operation[2]_1 (PC_n_25),
        .ALU_operation_2_sp_1(PC_n_22),
        .ALU_out(ALU_out[21:1]),
        .\ALU_out[31] (\ALU_out[31] ),
        .Branch(Branch),
        .CO(CO),
        .DI(Imm_out),
        .ImmSel(ImmSel),
        .ImmSel_1_sp_1(PC_n_85),
        .Jump(Jump),
        .O(data6),
        .Q(Q),
        .\Q[31]_i_9 (\inst_field[31] ),
        .\Q_reg[22]_0 ({PC_n_94,PC_n_95,PC_n_96,PC_n_97}),
        .\Q_reg[26]_0 ({PC_n_98,PC_n_99,PC_n_100,PC_n_101}),
        .\Q_reg[2]_0 (PC_n_102),
        .\Q_reg[3]_0 (ALU_n_3),
        .\Q_reg[3]_1 (ALU_n_0),
        .S({PC_n_32,PC_n_33,PC_n_34,PC_n_35}),
        .add_c0(add_c0),
        .add_c1(add_c1[31:1]),
        .clk(clk),
        .inst_field(inst_field),
        .\inst_field[15] ({PC_n_90,PC_n_91,PC_n_92,PC_n_93}),
        .\inst_field[19] ({PC_n_86,PC_n_87,PC_n_88,PC_n_89}),
        .\inst_field[23] ({PC_n_81,PC_n_82,PC_n_83,PC_n_84}),
        .\inst_field[27] ({PC_n_73,PC_n_74,PC_n_75,PC_n_76}),
        .\inst_field[31] ({PC_n_68,PC_n_69,PC_n_70,PC_n_71}),
        .\inst_field[31]_0 ({PC_n_77,PC_n_78,PC_n_79,PC_n_80}),
        .rst(rst));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry
       (.CI(1'b0),
        .CO({add_c0_carry_n_0,add_c0_carry_n_1,add_c0_carry_n_2,add_c0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[2],1'b0}),
        .O(add_c0[4:1]),
        .S({Q[4:3],PC_n_102,Q[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry__0
       (.CI(add_c0_carry_n_0),
        .CO({add_c0_carry__0_n_0,add_c0_carry__0_n_1,add_c0_carry__0_n_2,add_c0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_c0[8:5]),
        .S(Q[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry__1
       (.CI(add_c0_carry__0_n_0),
        .CO({add_c0_carry__1_n_0,add_c0_carry__1_n_1,add_c0_carry__1_n_2,add_c0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_c0[12:9]),
        .S(Q[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry__2
       (.CI(add_c0_carry__1_n_0),
        .CO({add_c0_carry__2_n_0,add_c0_carry__2_n_1,add_c0_carry__2_n_2,add_c0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_c0[16:13]),
        .S(Q[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry__3
       (.CI(add_c0_carry__2_n_0),
        .CO({add_c0_carry__3_n_0,add_c0_carry__3_n_1,add_c0_carry__3_n_2,add_c0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_c0[20:17]),
        .S(Q[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry__4
       (.CI(add_c0_carry__3_n_0),
        .CO({add_c0_carry__4_n_0,add_c0_carry__4_n_1,add_c0_carry__4_n_2,add_c0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_c0[24:21]),
        .S(Q[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry__5
       (.CI(add_c0_carry__4_n_0),
        .CO({add_c0_carry__5_n_0,add_c0_carry__5_n_1,add_c0_carry__5_n_2,add_c0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(add_c0[28:25]),
        .S(Q[28:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c0_carry__6
       (.CI(add_c0_carry__5_n_0),
        .CO({NLW_add_c0_carry__6_CO_UNCONNECTED[3:2],add_c0_carry__6_n_2,add_c0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_add_c0_carry__6_O_UNCONNECTED[3],add_c0[31:29]}),
        .S({1'b0,Q[31:29]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry
       (.CI(1'b0),
        .CO({add_c1_carry_n_0,add_c1_carry_n_1,add_c1_carry_n_2,add_c1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(add_c1[3:0]),
        .S({PC_n_81,PC_n_82,PC_n_83,PC_n_84}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry__0
       (.CI(add_c1_carry_n_0),
        .CO({add_c1_carry__0_n_0,add_c1_carry__0_n_1,add_c1_carry__0_n_2,add_c1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({inst_field[20:18],Q[4]}),
        .O(add_c1[7:4]),
        .S({PC_n_73,PC_n_74,PC_n_75,PC_n_76}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry__1
       (.CI(add_c1_carry__0_n_0),
        .CO({add_c1_carry__1_n_0,add_c1_carry__1_n_1,add_c1_carry__1_n_2,add_c1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({Imm_out,inst_field[23:21]}),
        .O(add_c1[11:8]),
        .S({PC_n_77,PC_n_78,PC_n_79,PC_n_80}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry__2
       (.CI(add_c1_carry__1_n_0),
        .CO({add_c1_carry__2_n_0,add_c1_carry__2_n_1,add_c1_carry__2_n_2,add_c1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[15:12]),
        .O(add_c1[15:12]),
        .S({PC_n_90,PC_n_91,PC_n_92,PC_n_93}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry__3
       (.CI(add_c1_carry__2_n_0),
        .CO({add_c1_carry__3_n_0,add_c1_carry__3_n_1,add_c1_carry__3_n_2,add_c1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[19:16]),
        .O(add_c1[19:16]),
        .S({PC_n_86,PC_n_87,PC_n_88,PC_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry__4
       (.CI(add_c1_carry__3_n_0),
        .CO({add_c1_carry__4_n_0,add_c1_carry__4_n_1,add_c1_carry__4_n_2,add_c1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({Q[22:20],add_c1_carry__4_i_1_n_0}),
        .O(add_c1[23:20]),
        .S({PC_n_94,PC_n_95,PC_n_96,PC_n_97}));
  LUT1 #(
    .INIT(2'h1)) 
    add_c1_carry__4_i_1
       (.I0(inst_field[24]),
        .O(add_c1_carry__4_i_1_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry__5
       (.CI(add_c1_carry__4_n_0),
        .CO({add_c1_carry__5_n_0,add_c1_carry__5_n_1,add_c1_carry__5_n_2,add_c1_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[26:23]),
        .O(add_c1[27:24]),
        .S({PC_n_98,PC_n_99,PC_n_100,PC_n_101}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 add_c1_carry__6
       (.CI(add_c1_carry__5_n_0),
        .CO({NLW_add_c1_carry__6_CO_UNCONNECTED[3],add_c1_carry__6_n_1,add_c1_carry__6_n_2,add_c1_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[29:27]}),
        .O(add_c1[31:28]),
        .S({PC_n_32,PC_n_33,PC_n_34,PC_n_35}));
endmodule

(* CHECK_LICENSE_TYPE = "DataPath_0,DataPath,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "DataPath,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Branch,
    Jump,
    Data_in,
    MemtoReg,
    ALUSrc_B,
    ImmSel,
    inst_field,
    ALU_operation,
    clk,
    rst,
    ALU_out,
    Data_out,
    PC_out,
    x0,
    x1,
    x2,
    x3,
    x4,
    x5,
    x6,
    x7,
    x8,
    x9,
    x10,
    x11,
    x12,
    x13,
    x14,
    x15,
    x16,
    x17,
    x18,
    x19,
    x20,
    x21,
    x22,
    x23,
    x24,
    x25,
    x26,
    x27,
    x28,
    x29,
    x30,
    x31);
  input Branch;
  input Jump;
  input [31:0]Data_in;
  input [1:0]MemtoReg;
  input ALUSrc_B;
  input [1:0]ImmSel;
  input [31:0]inst_field;
  input [2:0]ALU_operation;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output [31:0]ALU_out;
  output [31:0]Data_out;
  output [31:0]PC_out;
  output [31:0]x0;
  output [31:0]x1;
  output [31:0]x2;
  output [31:0]x3;
  output [31:0]x4;
  output [31:0]x5;
  output [31:0]x6;
  output [31:0]x7;
  output [31:0]x8;
  output [31:0]x9;
  output [31:0]x10;
  output [31:0]x11;
  output [31:0]x12;
  output [31:0]x13;
  output [31:0]x14;
  output [31:0]x15;
  output [31:0]x16;
  output [31:0]x17;
  output [31:0]x18;
  output [31:0]x19;
  output [31:0]x20;
  output [31:0]x21;
  output [31:0]x22;
  output [31:0]x23;
  output [31:0]x24;
  output [31:0]x25;
  output [31:0]x26;
  output [31:0]x27;
  output [31:0]x28;
  output [31:0]x29;
  output [31:0]x30;
  output [31:0]x31;

  wire \<const0> ;
  wire ALUSrc_B;
  wire [2:0]ALU_operation;
  wire [31:0]ALU_out;
  wire \ALU_out[11]_INST_0_i_2_n_0 ;
  wire \ALU_out[11]_INST_0_i_2_n_1 ;
  wire \ALU_out[11]_INST_0_i_2_n_2 ;
  wire \ALU_out[11]_INST_0_i_2_n_3 ;
  wire \ALU_out[11]_INST_0_i_3_n_0 ;
  wire \ALU_out[11]_INST_0_i_4_n_0 ;
  wire \ALU_out[11]_INST_0_i_5_n_0 ;
  wire \ALU_out[11]_INST_0_i_6_n_0 ;
  wire \ALU_out[15]_INST_0_i_2_n_0 ;
  wire \ALU_out[15]_INST_0_i_2_n_1 ;
  wire \ALU_out[15]_INST_0_i_2_n_2 ;
  wire \ALU_out[15]_INST_0_i_2_n_3 ;
  wire \ALU_out[15]_INST_0_i_3_n_0 ;
  wire \ALU_out[15]_INST_0_i_4_n_0 ;
  wire \ALU_out[15]_INST_0_i_5_n_0 ;
  wire \ALU_out[15]_INST_0_i_6_n_0 ;
  wire \ALU_out[19]_INST_0_i_2_n_0 ;
  wire \ALU_out[19]_INST_0_i_2_n_1 ;
  wire \ALU_out[19]_INST_0_i_2_n_2 ;
  wire \ALU_out[19]_INST_0_i_2_n_3 ;
  wire \ALU_out[19]_INST_0_i_3_n_0 ;
  wire \ALU_out[19]_INST_0_i_4_n_0 ;
  wire \ALU_out[19]_INST_0_i_5_n_0 ;
  wire \ALU_out[19]_INST_0_i_6_n_0 ;
  wire \ALU_out[23]_INST_0_i_1_n_0 ;
  wire \ALU_out[23]_INST_0_i_1_n_1 ;
  wire \ALU_out[23]_INST_0_i_1_n_2 ;
  wire \ALU_out[23]_INST_0_i_1_n_3 ;
  wire \ALU_out[23]_INST_0_i_2_n_0 ;
  wire \ALU_out[23]_INST_0_i_3_n_0 ;
  wire \ALU_out[23]_INST_0_i_4_n_0 ;
  wire \ALU_out[23]_INST_0_i_5_n_0 ;
  wire \ALU_out[27]_INST_0_i_1_n_0 ;
  wire \ALU_out[27]_INST_0_i_1_n_1 ;
  wire \ALU_out[27]_INST_0_i_1_n_2 ;
  wire \ALU_out[27]_INST_0_i_1_n_3 ;
  wire \ALU_out[27]_INST_0_i_2_n_0 ;
  wire \ALU_out[27]_INST_0_i_3_n_0 ;
  wire \ALU_out[27]_INST_0_i_4_n_0 ;
  wire \ALU_out[27]_INST_0_i_5_n_0 ;
  wire \ALU_out[31]_INST_0_i_2_n_1 ;
  wire \ALU_out[31]_INST_0_i_2_n_2 ;
  wire \ALU_out[31]_INST_0_i_2_n_3 ;
  wire \ALU_out[31]_INST_0_i_3_n_0 ;
  wire \ALU_out[31]_INST_0_i_4_n_0 ;
  wire \ALU_out[31]_INST_0_i_5_n_0 ;
  wire \ALU_out[31]_INST_0_i_6_n_0 ;
  wire Branch;
  wire [1:0]ImmSel;
  wire Jump;
  wire [31:0]PC_out;
  wire clk;
  wire [31:8]data6;
  wire [31:0]inst_field;
  wire inst_n_54;
  wire inst_n_55;
  wire inst_n_56;
  wire inst_n_57;
  wire rst;
  wire [3:3]\NLW_ALU_out[31]_INST_0_i_2_CO_UNCONNECTED ;

  assign Data_out[31] = \<const0> ;
  assign Data_out[30] = \<const0> ;
  assign Data_out[29] = \<const0> ;
  assign Data_out[28] = \<const0> ;
  assign Data_out[27] = \<const0> ;
  assign Data_out[26] = \<const0> ;
  assign Data_out[25] = \<const0> ;
  assign Data_out[24] = \<const0> ;
  assign Data_out[23] = \<const0> ;
  assign Data_out[22] = \<const0> ;
  assign Data_out[21] = \<const0> ;
  assign Data_out[20] = \<const0> ;
  assign Data_out[19] = \<const0> ;
  assign Data_out[18] = \<const0> ;
  assign Data_out[17] = \<const0> ;
  assign Data_out[16] = \<const0> ;
  assign Data_out[15] = \<const0> ;
  assign Data_out[14] = \<const0> ;
  assign Data_out[13] = \<const0> ;
  assign Data_out[12] = \<const0> ;
  assign Data_out[11] = \<const0> ;
  assign Data_out[10] = \<const0> ;
  assign Data_out[9] = \<const0> ;
  assign Data_out[8] = \<const0> ;
  assign Data_out[7] = \<const0> ;
  assign Data_out[6] = \<const0> ;
  assign Data_out[5] = \<const0> ;
  assign Data_out[4] = \<const0> ;
  assign Data_out[3] = \<const0> ;
  assign Data_out[2] = \<const0> ;
  assign Data_out[1] = \<const0> ;
  assign Data_out[0] = \<const0> ;
  assign x0[31] = \<const0> ;
  assign x0[30] = \<const0> ;
  assign x0[29] = \<const0> ;
  assign x0[28] = \<const0> ;
  assign x0[27] = \<const0> ;
  assign x0[26] = \<const0> ;
  assign x0[25] = \<const0> ;
  assign x0[24] = \<const0> ;
  assign x0[23] = \<const0> ;
  assign x0[22] = \<const0> ;
  assign x0[21] = \<const0> ;
  assign x0[20] = \<const0> ;
  assign x0[19] = \<const0> ;
  assign x0[18] = \<const0> ;
  assign x0[17] = \<const0> ;
  assign x0[16] = \<const0> ;
  assign x0[15] = \<const0> ;
  assign x0[14] = \<const0> ;
  assign x0[13] = \<const0> ;
  assign x0[12] = \<const0> ;
  assign x0[11] = \<const0> ;
  assign x0[10] = \<const0> ;
  assign x0[9] = \<const0> ;
  assign x0[8] = \<const0> ;
  assign x0[7] = \<const0> ;
  assign x0[6] = \<const0> ;
  assign x0[5] = \<const0> ;
  assign x0[4] = \<const0> ;
  assign x0[3] = \<const0> ;
  assign x0[2] = \<const0> ;
  assign x0[1] = \<const0> ;
  assign x0[0] = \<const0> ;
  assign x1[31] = \<const0> ;
  assign x1[30] = \<const0> ;
  assign x1[29] = \<const0> ;
  assign x1[28] = \<const0> ;
  assign x1[27] = \<const0> ;
  assign x1[26] = \<const0> ;
  assign x1[25] = \<const0> ;
  assign x1[24] = \<const0> ;
  assign x1[23] = \<const0> ;
  assign x1[22] = \<const0> ;
  assign x1[21] = \<const0> ;
  assign x1[20] = \<const0> ;
  assign x1[19] = \<const0> ;
  assign x1[18] = \<const0> ;
  assign x1[17] = \<const0> ;
  assign x1[16] = \<const0> ;
  assign x1[15] = \<const0> ;
  assign x1[14] = \<const0> ;
  assign x1[13] = \<const0> ;
  assign x1[12] = \<const0> ;
  assign x1[11] = \<const0> ;
  assign x1[10] = \<const0> ;
  assign x1[9] = \<const0> ;
  assign x1[8] = \<const0> ;
  assign x1[7] = \<const0> ;
  assign x1[6] = \<const0> ;
  assign x1[5] = \<const0> ;
  assign x1[4] = \<const0> ;
  assign x1[3] = \<const0> ;
  assign x1[2] = \<const0> ;
  assign x1[1] = \<const0> ;
  assign x1[0] = \<const0> ;
  assign x10[31] = \<const0> ;
  assign x10[30] = \<const0> ;
  assign x10[29] = \<const0> ;
  assign x10[28] = \<const0> ;
  assign x10[27] = \<const0> ;
  assign x10[26] = \<const0> ;
  assign x10[25] = \<const0> ;
  assign x10[24] = \<const0> ;
  assign x10[23] = \<const0> ;
  assign x10[22] = \<const0> ;
  assign x10[21] = \<const0> ;
  assign x10[20] = \<const0> ;
  assign x10[19] = \<const0> ;
  assign x10[18] = \<const0> ;
  assign x10[17] = \<const0> ;
  assign x10[16] = \<const0> ;
  assign x10[15] = \<const0> ;
  assign x10[14] = \<const0> ;
  assign x10[13] = \<const0> ;
  assign x10[12] = \<const0> ;
  assign x10[11] = \<const0> ;
  assign x10[10] = \<const0> ;
  assign x10[9] = \<const0> ;
  assign x10[8] = \<const0> ;
  assign x10[7] = \<const0> ;
  assign x10[6] = \<const0> ;
  assign x10[5] = \<const0> ;
  assign x10[4] = \<const0> ;
  assign x10[3] = \<const0> ;
  assign x10[2] = \<const0> ;
  assign x10[1] = \<const0> ;
  assign x10[0] = \<const0> ;
  assign x11[31] = \<const0> ;
  assign x11[30] = \<const0> ;
  assign x11[29] = \<const0> ;
  assign x11[28] = \<const0> ;
  assign x11[27] = \<const0> ;
  assign x11[26] = \<const0> ;
  assign x11[25] = \<const0> ;
  assign x11[24] = \<const0> ;
  assign x11[23] = \<const0> ;
  assign x11[22] = \<const0> ;
  assign x11[21] = \<const0> ;
  assign x11[20] = \<const0> ;
  assign x11[19] = \<const0> ;
  assign x11[18] = \<const0> ;
  assign x11[17] = \<const0> ;
  assign x11[16] = \<const0> ;
  assign x11[15] = \<const0> ;
  assign x11[14] = \<const0> ;
  assign x11[13] = \<const0> ;
  assign x11[12] = \<const0> ;
  assign x11[11] = \<const0> ;
  assign x11[10] = \<const0> ;
  assign x11[9] = \<const0> ;
  assign x11[8] = \<const0> ;
  assign x11[7] = \<const0> ;
  assign x11[6] = \<const0> ;
  assign x11[5] = \<const0> ;
  assign x11[4] = \<const0> ;
  assign x11[3] = \<const0> ;
  assign x11[2] = \<const0> ;
  assign x11[1] = \<const0> ;
  assign x11[0] = \<const0> ;
  assign x12[31] = \<const0> ;
  assign x12[30] = \<const0> ;
  assign x12[29] = \<const0> ;
  assign x12[28] = \<const0> ;
  assign x12[27] = \<const0> ;
  assign x12[26] = \<const0> ;
  assign x12[25] = \<const0> ;
  assign x12[24] = \<const0> ;
  assign x12[23] = \<const0> ;
  assign x12[22] = \<const0> ;
  assign x12[21] = \<const0> ;
  assign x12[20] = \<const0> ;
  assign x12[19] = \<const0> ;
  assign x12[18] = \<const0> ;
  assign x12[17] = \<const0> ;
  assign x12[16] = \<const0> ;
  assign x12[15] = \<const0> ;
  assign x12[14] = \<const0> ;
  assign x12[13] = \<const0> ;
  assign x12[12] = \<const0> ;
  assign x12[11] = \<const0> ;
  assign x12[10] = \<const0> ;
  assign x12[9] = \<const0> ;
  assign x12[8] = \<const0> ;
  assign x12[7] = \<const0> ;
  assign x12[6] = \<const0> ;
  assign x12[5] = \<const0> ;
  assign x12[4] = \<const0> ;
  assign x12[3] = \<const0> ;
  assign x12[2] = \<const0> ;
  assign x12[1] = \<const0> ;
  assign x12[0] = \<const0> ;
  assign x13[31] = \<const0> ;
  assign x13[30] = \<const0> ;
  assign x13[29] = \<const0> ;
  assign x13[28] = \<const0> ;
  assign x13[27] = \<const0> ;
  assign x13[26] = \<const0> ;
  assign x13[25] = \<const0> ;
  assign x13[24] = \<const0> ;
  assign x13[23] = \<const0> ;
  assign x13[22] = \<const0> ;
  assign x13[21] = \<const0> ;
  assign x13[20] = \<const0> ;
  assign x13[19] = \<const0> ;
  assign x13[18] = \<const0> ;
  assign x13[17] = \<const0> ;
  assign x13[16] = \<const0> ;
  assign x13[15] = \<const0> ;
  assign x13[14] = \<const0> ;
  assign x13[13] = \<const0> ;
  assign x13[12] = \<const0> ;
  assign x13[11] = \<const0> ;
  assign x13[10] = \<const0> ;
  assign x13[9] = \<const0> ;
  assign x13[8] = \<const0> ;
  assign x13[7] = \<const0> ;
  assign x13[6] = \<const0> ;
  assign x13[5] = \<const0> ;
  assign x13[4] = \<const0> ;
  assign x13[3] = \<const0> ;
  assign x13[2] = \<const0> ;
  assign x13[1] = \<const0> ;
  assign x13[0] = \<const0> ;
  assign x14[31] = \<const0> ;
  assign x14[30] = \<const0> ;
  assign x14[29] = \<const0> ;
  assign x14[28] = \<const0> ;
  assign x14[27] = \<const0> ;
  assign x14[26] = \<const0> ;
  assign x14[25] = \<const0> ;
  assign x14[24] = \<const0> ;
  assign x14[23] = \<const0> ;
  assign x14[22] = \<const0> ;
  assign x14[21] = \<const0> ;
  assign x14[20] = \<const0> ;
  assign x14[19] = \<const0> ;
  assign x14[18] = \<const0> ;
  assign x14[17] = \<const0> ;
  assign x14[16] = \<const0> ;
  assign x14[15] = \<const0> ;
  assign x14[14] = \<const0> ;
  assign x14[13] = \<const0> ;
  assign x14[12] = \<const0> ;
  assign x14[11] = \<const0> ;
  assign x14[10] = \<const0> ;
  assign x14[9] = \<const0> ;
  assign x14[8] = \<const0> ;
  assign x14[7] = \<const0> ;
  assign x14[6] = \<const0> ;
  assign x14[5] = \<const0> ;
  assign x14[4] = \<const0> ;
  assign x14[3] = \<const0> ;
  assign x14[2] = \<const0> ;
  assign x14[1] = \<const0> ;
  assign x14[0] = \<const0> ;
  assign x15[31] = \<const0> ;
  assign x15[30] = \<const0> ;
  assign x15[29] = \<const0> ;
  assign x15[28] = \<const0> ;
  assign x15[27] = \<const0> ;
  assign x15[26] = \<const0> ;
  assign x15[25] = \<const0> ;
  assign x15[24] = \<const0> ;
  assign x15[23] = \<const0> ;
  assign x15[22] = \<const0> ;
  assign x15[21] = \<const0> ;
  assign x15[20] = \<const0> ;
  assign x15[19] = \<const0> ;
  assign x15[18] = \<const0> ;
  assign x15[17] = \<const0> ;
  assign x15[16] = \<const0> ;
  assign x15[15] = \<const0> ;
  assign x15[14] = \<const0> ;
  assign x15[13] = \<const0> ;
  assign x15[12] = \<const0> ;
  assign x15[11] = \<const0> ;
  assign x15[10] = \<const0> ;
  assign x15[9] = \<const0> ;
  assign x15[8] = \<const0> ;
  assign x15[7] = \<const0> ;
  assign x15[6] = \<const0> ;
  assign x15[5] = \<const0> ;
  assign x15[4] = \<const0> ;
  assign x15[3] = \<const0> ;
  assign x15[2] = \<const0> ;
  assign x15[1] = \<const0> ;
  assign x15[0] = \<const0> ;
  assign x16[31] = \<const0> ;
  assign x16[30] = \<const0> ;
  assign x16[29] = \<const0> ;
  assign x16[28] = \<const0> ;
  assign x16[27] = \<const0> ;
  assign x16[26] = \<const0> ;
  assign x16[25] = \<const0> ;
  assign x16[24] = \<const0> ;
  assign x16[23] = \<const0> ;
  assign x16[22] = \<const0> ;
  assign x16[21] = \<const0> ;
  assign x16[20] = \<const0> ;
  assign x16[19] = \<const0> ;
  assign x16[18] = \<const0> ;
  assign x16[17] = \<const0> ;
  assign x16[16] = \<const0> ;
  assign x16[15] = \<const0> ;
  assign x16[14] = \<const0> ;
  assign x16[13] = \<const0> ;
  assign x16[12] = \<const0> ;
  assign x16[11] = \<const0> ;
  assign x16[10] = \<const0> ;
  assign x16[9] = \<const0> ;
  assign x16[8] = \<const0> ;
  assign x16[7] = \<const0> ;
  assign x16[6] = \<const0> ;
  assign x16[5] = \<const0> ;
  assign x16[4] = \<const0> ;
  assign x16[3] = \<const0> ;
  assign x16[2] = \<const0> ;
  assign x16[1] = \<const0> ;
  assign x16[0] = \<const0> ;
  assign x17[31] = \<const0> ;
  assign x17[30] = \<const0> ;
  assign x17[29] = \<const0> ;
  assign x17[28] = \<const0> ;
  assign x17[27] = \<const0> ;
  assign x17[26] = \<const0> ;
  assign x17[25] = \<const0> ;
  assign x17[24] = \<const0> ;
  assign x17[23] = \<const0> ;
  assign x17[22] = \<const0> ;
  assign x17[21] = \<const0> ;
  assign x17[20] = \<const0> ;
  assign x17[19] = \<const0> ;
  assign x17[18] = \<const0> ;
  assign x17[17] = \<const0> ;
  assign x17[16] = \<const0> ;
  assign x17[15] = \<const0> ;
  assign x17[14] = \<const0> ;
  assign x17[13] = \<const0> ;
  assign x17[12] = \<const0> ;
  assign x17[11] = \<const0> ;
  assign x17[10] = \<const0> ;
  assign x17[9] = \<const0> ;
  assign x17[8] = \<const0> ;
  assign x17[7] = \<const0> ;
  assign x17[6] = \<const0> ;
  assign x17[5] = \<const0> ;
  assign x17[4] = \<const0> ;
  assign x17[3] = \<const0> ;
  assign x17[2] = \<const0> ;
  assign x17[1] = \<const0> ;
  assign x17[0] = \<const0> ;
  assign x18[31] = \<const0> ;
  assign x18[30] = \<const0> ;
  assign x18[29] = \<const0> ;
  assign x18[28] = \<const0> ;
  assign x18[27] = \<const0> ;
  assign x18[26] = \<const0> ;
  assign x18[25] = \<const0> ;
  assign x18[24] = \<const0> ;
  assign x18[23] = \<const0> ;
  assign x18[22] = \<const0> ;
  assign x18[21] = \<const0> ;
  assign x18[20] = \<const0> ;
  assign x18[19] = \<const0> ;
  assign x18[18] = \<const0> ;
  assign x18[17] = \<const0> ;
  assign x18[16] = \<const0> ;
  assign x18[15] = \<const0> ;
  assign x18[14] = \<const0> ;
  assign x18[13] = \<const0> ;
  assign x18[12] = \<const0> ;
  assign x18[11] = \<const0> ;
  assign x18[10] = \<const0> ;
  assign x18[9] = \<const0> ;
  assign x18[8] = \<const0> ;
  assign x18[7] = \<const0> ;
  assign x18[6] = \<const0> ;
  assign x18[5] = \<const0> ;
  assign x18[4] = \<const0> ;
  assign x18[3] = \<const0> ;
  assign x18[2] = \<const0> ;
  assign x18[1] = \<const0> ;
  assign x18[0] = \<const0> ;
  assign x19[31] = \<const0> ;
  assign x19[30] = \<const0> ;
  assign x19[29] = \<const0> ;
  assign x19[28] = \<const0> ;
  assign x19[27] = \<const0> ;
  assign x19[26] = \<const0> ;
  assign x19[25] = \<const0> ;
  assign x19[24] = \<const0> ;
  assign x19[23] = \<const0> ;
  assign x19[22] = \<const0> ;
  assign x19[21] = \<const0> ;
  assign x19[20] = \<const0> ;
  assign x19[19] = \<const0> ;
  assign x19[18] = \<const0> ;
  assign x19[17] = \<const0> ;
  assign x19[16] = \<const0> ;
  assign x19[15] = \<const0> ;
  assign x19[14] = \<const0> ;
  assign x19[13] = \<const0> ;
  assign x19[12] = \<const0> ;
  assign x19[11] = \<const0> ;
  assign x19[10] = \<const0> ;
  assign x19[9] = \<const0> ;
  assign x19[8] = \<const0> ;
  assign x19[7] = \<const0> ;
  assign x19[6] = \<const0> ;
  assign x19[5] = \<const0> ;
  assign x19[4] = \<const0> ;
  assign x19[3] = \<const0> ;
  assign x19[2] = \<const0> ;
  assign x19[1] = \<const0> ;
  assign x19[0] = \<const0> ;
  assign x2[31] = \<const0> ;
  assign x2[30] = \<const0> ;
  assign x2[29] = \<const0> ;
  assign x2[28] = \<const0> ;
  assign x2[27] = \<const0> ;
  assign x2[26] = \<const0> ;
  assign x2[25] = \<const0> ;
  assign x2[24] = \<const0> ;
  assign x2[23] = \<const0> ;
  assign x2[22] = \<const0> ;
  assign x2[21] = \<const0> ;
  assign x2[20] = \<const0> ;
  assign x2[19] = \<const0> ;
  assign x2[18] = \<const0> ;
  assign x2[17] = \<const0> ;
  assign x2[16] = \<const0> ;
  assign x2[15] = \<const0> ;
  assign x2[14] = \<const0> ;
  assign x2[13] = \<const0> ;
  assign x2[12] = \<const0> ;
  assign x2[11] = \<const0> ;
  assign x2[10] = \<const0> ;
  assign x2[9] = \<const0> ;
  assign x2[8] = \<const0> ;
  assign x2[7] = \<const0> ;
  assign x2[6] = \<const0> ;
  assign x2[5] = \<const0> ;
  assign x2[4] = \<const0> ;
  assign x2[3] = \<const0> ;
  assign x2[2] = \<const0> ;
  assign x2[1] = \<const0> ;
  assign x2[0] = \<const0> ;
  assign x20[31] = \<const0> ;
  assign x20[30] = \<const0> ;
  assign x20[29] = \<const0> ;
  assign x20[28] = \<const0> ;
  assign x20[27] = \<const0> ;
  assign x20[26] = \<const0> ;
  assign x20[25] = \<const0> ;
  assign x20[24] = \<const0> ;
  assign x20[23] = \<const0> ;
  assign x20[22] = \<const0> ;
  assign x20[21] = \<const0> ;
  assign x20[20] = \<const0> ;
  assign x20[19] = \<const0> ;
  assign x20[18] = \<const0> ;
  assign x20[17] = \<const0> ;
  assign x20[16] = \<const0> ;
  assign x20[15] = \<const0> ;
  assign x20[14] = \<const0> ;
  assign x20[13] = \<const0> ;
  assign x20[12] = \<const0> ;
  assign x20[11] = \<const0> ;
  assign x20[10] = \<const0> ;
  assign x20[9] = \<const0> ;
  assign x20[8] = \<const0> ;
  assign x20[7] = \<const0> ;
  assign x20[6] = \<const0> ;
  assign x20[5] = \<const0> ;
  assign x20[4] = \<const0> ;
  assign x20[3] = \<const0> ;
  assign x20[2] = \<const0> ;
  assign x20[1] = \<const0> ;
  assign x20[0] = \<const0> ;
  assign x21[31] = \<const0> ;
  assign x21[30] = \<const0> ;
  assign x21[29] = \<const0> ;
  assign x21[28] = \<const0> ;
  assign x21[27] = \<const0> ;
  assign x21[26] = \<const0> ;
  assign x21[25] = \<const0> ;
  assign x21[24] = \<const0> ;
  assign x21[23] = \<const0> ;
  assign x21[22] = \<const0> ;
  assign x21[21] = \<const0> ;
  assign x21[20] = \<const0> ;
  assign x21[19] = \<const0> ;
  assign x21[18] = \<const0> ;
  assign x21[17] = \<const0> ;
  assign x21[16] = \<const0> ;
  assign x21[15] = \<const0> ;
  assign x21[14] = \<const0> ;
  assign x21[13] = \<const0> ;
  assign x21[12] = \<const0> ;
  assign x21[11] = \<const0> ;
  assign x21[10] = \<const0> ;
  assign x21[9] = \<const0> ;
  assign x21[8] = \<const0> ;
  assign x21[7] = \<const0> ;
  assign x21[6] = \<const0> ;
  assign x21[5] = \<const0> ;
  assign x21[4] = \<const0> ;
  assign x21[3] = \<const0> ;
  assign x21[2] = \<const0> ;
  assign x21[1] = \<const0> ;
  assign x21[0] = \<const0> ;
  assign x22[31] = \<const0> ;
  assign x22[30] = \<const0> ;
  assign x22[29] = \<const0> ;
  assign x22[28] = \<const0> ;
  assign x22[27] = \<const0> ;
  assign x22[26] = \<const0> ;
  assign x22[25] = \<const0> ;
  assign x22[24] = \<const0> ;
  assign x22[23] = \<const0> ;
  assign x22[22] = \<const0> ;
  assign x22[21] = \<const0> ;
  assign x22[20] = \<const0> ;
  assign x22[19] = \<const0> ;
  assign x22[18] = \<const0> ;
  assign x22[17] = \<const0> ;
  assign x22[16] = \<const0> ;
  assign x22[15] = \<const0> ;
  assign x22[14] = \<const0> ;
  assign x22[13] = \<const0> ;
  assign x22[12] = \<const0> ;
  assign x22[11] = \<const0> ;
  assign x22[10] = \<const0> ;
  assign x22[9] = \<const0> ;
  assign x22[8] = \<const0> ;
  assign x22[7] = \<const0> ;
  assign x22[6] = \<const0> ;
  assign x22[5] = \<const0> ;
  assign x22[4] = \<const0> ;
  assign x22[3] = \<const0> ;
  assign x22[2] = \<const0> ;
  assign x22[1] = \<const0> ;
  assign x22[0] = \<const0> ;
  assign x23[31] = \<const0> ;
  assign x23[30] = \<const0> ;
  assign x23[29] = \<const0> ;
  assign x23[28] = \<const0> ;
  assign x23[27] = \<const0> ;
  assign x23[26] = \<const0> ;
  assign x23[25] = \<const0> ;
  assign x23[24] = \<const0> ;
  assign x23[23] = \<const0> ;
  assign x23[22] = \<const0> ;
  assign x23[21] = \<const0> ;
  assign x23[20] = \<const0> ;
  assign x23[19] = \<const0> ;
  assign x23[18] = \<const0> ;
  assign x23[17] = \<const0> ;
  assign x23[16] = \<const0> ;
  assign x23[15] = \<const0> ;
  assign x23[14] = \<const0> ;
  assign x23[13] = \<const0> ;
  assign x23[12] = \<const0> ;
  assign x23[11] = \<const0> ;
  assign x23[10] = \<const0> ;
  assign x23[9] = \<const0> ;
  assign x23[8] = \<const0> ;
  assign x23[7] = \<const0> ;
  assign x23[6] = \<const0> ;
  assign x23[5] = \<const0> ;
  assign x23[4] = \<const0> ;
  assign x23[3] = \<const0> ;
  assign x23[2] = \<const0> ;
  assign x23[1] = \<const0> ;
  assign x23[0] = \<const0> ;
  assign x24[31] = \<const0> ;
  assign x24[30] = \<const0> ;
  assign x24[29] = \<const0> ;
  assign x24[28] = \<const0> ;
  assign x24[27] = \<const0> ;
  assign x24[26] = \<const0> ;
  assign x24[25] = \<const0> ;
  assign x24[24] = \<const0> ;
  assign x24[23] = \<const0> ;
  assign x24[22] = \<const0> ;
  assign x24[21] = \<const0> ;
  assign x24[20] = \<const0> ;
  assign x24[19] = \<const0> ;
  assign x24[18] = \<const0> ;
  assign x24[17] = \<const0> ;
  assign x24[16] = \<const0> ;
  assign x24[15] = \<const0> ;
  assign x24[14] = \<const0> ;
  assign x24[13] = \<const0> ;
  assign x24[12] = \<const0> ;
  assign x24[11] = \<const0> ;
  assign x24[10] = \<const0> ;
  assign x24[9] = \<const0> ;
  assign x24[8] = \<const0> ;
  assign x24[7] = \<const0> ;
  assign x24[6] = \<const0> ;
  assign x24[5] = \<const0> ;
  assign x24[4] = \<const0> ;
  assign x24[3] = \<const0> ;
  assign x24[2] = \<const0> ;
  assign x24[1] = \<const0> ;
  assign x24[0] = \<const0> ;
  assign x25[31] = \<const0> ;
  assign x25[30] = \<const0> ;
  assign x25[29] = \<const0> ;
  assign x25[28] = \<const0> ;
  assign x25[27] = \<const0> ;
  assign x25[26] = \<const0> ;
  assign x25[25] = \<const0> ;
  assign x25[24] = \<const0> ;
  assign x25[23] = \<const0> ;
  assign x25[22] = \<const0> ;
  assign x25[21] = \<const0> ;
  assign x25[20] = \<const0> ;
  assign x25[19] = \<const0> ;
  assign x25[18] = \<const0> ;
  assign x25[17] = \<const0> ;
  assign x25[16] = \<const0> ;
  assign x25[15] = \<const0> ;
  assign x25[14] = \<const0> ;
  assign x25[13] = \<const0> ;
  assign x25[12] = \<const0> ;
  assign x25[11] = \<const0> ;
  assign x25[10] = \<const0> ;
  assign x25[9] = \<const0> ;
  assign x25[8] = \<const0> ;
  assign x25[7] = \<const0> ;
  assign x25[6] = \<const0> ;
  assign x25[5] = \<const0> ;
  assign x25[4] = \<const0> ;
  assign x25[3] = \<const0> ;
  assign x25[2] = \<const0> ;
  assign x25[1] = \<const0> ;
  assign x25[0] = \<const0> ;
  assign x26[31] = \<const0> ;
  assign x26[30] = \<const0> ;
  assign x26[29] = \<const0> ;
  assign x26[28] = \<const0> ;
  assign x26[27] = \<const0> ;
  assign x26[26] = \<const0> ;
  assign x26[25] = \<const0> ;
  assign x26[24] = \<const0> ;
  assign x26[23] = \<const0> ;
  assign x26[22] = \<const0> ;
  assign x26[21] = \<const0> ;
  assign x26[20] = \<const0> ;
  assign x26[19] = \<const0> ;
  assign x26[18] = \<const0> ;
  assign x26[17] = \<const0> ;
  assign x26[16] = \<const0> ;
  assign x26[15] = \<const0> ;
  assign x26[14] = \<const0> ;
  assign x26[13] = \<const0> ;
  assign x26[12] = \<const0> ;
  assign x26[11] = \<const0> ;
  assign x26[10] = \<const0> ;
  assign x26[9] = \<const0> ;
  assign x26[8] = \<const0> ;
  assign x26[7] = \<const0> ;
  assign x26[6] = \<const0> ;
  assign x26[5] = \<const0> ;
  assign x26[4] = \<const0> ;
  assign x26[3] = \<const0> ;
  assign x26[2] = \<const0> ;
  assign x26[1] = \<const0> ;
  assign x26[0] = \<const0> ;
  assign x27[31] = \<const0> ;
  assign x27[30] = \<const0> ;
  assign x27[29] = \<const0> ;
  assign x27[28] = \<const0> ;
  assign x27[27] = \<const0> ;
  assign x27[26] = \<const0> ;
  assign x27[25] = \<const0> ;
  assign x27[24] = \<const0> ;
  assign x27[23] = \<const0> ;
  assign x27[22] = \<const0> ;
  assign x27[21] = \<const0> ;
  assign x27[20] = \<const0> ;
  assign x27[19] = \<const0> ;
  assign x27[18] = \<const0> ;
  assign x27[17] = \<const0> ;
  assign x27[16] = \<const0> ;
  assign x27[15] = \<const0> ;
  assign x27[14] = \<const0> ;
  assign x27[13] = \<const0> ;
  assign x27[12] = \<const0> ;
  assign x27[11] = \<const0> ;
  assign x27[10] = \<const0> ;
  assign x27[9] = \<const0> ;
  assign x27[8] = \<const0> ;
  assign x27[7] = \<const0> ;
  assign x27[6] = \<const0> ;
  assign x27[5] = \<const0> ;
  assign x27[4] = \<const0> ;
  assign x27[3] = \<const0> ;
  assign x27[2] = \<const0> ;
  assign x27[1] = \<const0> ;
  assign x27[0] = \<const0> ;
  assign x28[31] = \<const0> ;
  assign x28[30] = \<const0> ;
  assign x28[29] = \<const0> ;
  assign x28[28] = \<const0> ;
  assign x28[27] = \<const0> ;
  assign x28[26] = \<const0> ;
  assign x28[25] = \<const0> ;
  assign x28[24] = \<const0> ;
  assign x28[23] = \<const0> ;
  assign x28[22] = \<const0> ;
  assign x28[21] = \<const0> ;
  assign x28[20] = \<const0> ;
  assign x28[19] = \<const0> ;
  assign x28[18] = \<const0> ;
  assign x28[17] = \<const0> ;
  assign x28[16] = \<const0> ;
  assign x28[15] = \<const0> ;
  assign x28[14] = \<const0> ;
  assign x28[13] = \<const0> ;
  assign x28[12] = \<const0> ;
  assign x28[11] = \<const0> ;
  assign x28[10] = \<const0> ;
  assign x28[9] = \<const0> ;
  assign x28[8] = \<const0> ;
  assign x28[7] = \<const0> ;
  assign x28[6] = \<const0> ;
  assign x28[5] = \<const0> ;
  assign x28[4] = \<const0> ;
  assign x28[3] = \<const0> ;
  assign x28[2] = \<const0> ;
  assign x28[1] = \<const0> ;
  assign x28[0] = \<const0> ;
  assign x29[31] = \<const0> ;
  assign x29[30] = \<const0> ;
  assign x29[29] = \<const0> ;
  assign x29[28] = \<const0> ;
  assign x29[27] = \<const0> ;
  assign x29[26] = \<const0> ;
  assign x29[25] = \<const0> ;
  assign x29[24] = \<const0> ;
  assign x29[23] = \<const0> ;
  assign x29[22] = \<const0> ;
  assign x29[21] = \<const0> ;
  assign x29[20] = \<const0> ;
  assign x29[19] = \<const0> ;
  assign x29[18] = \<const0> ;
  assign x29[17] = \<const0> ;
  assign x29[16] = \<const0> ;
  assign x29[15] = \<const0> ;
  assign x29[14] = \<const0> ;
  assign x29[13] = \<const0> ;
  assign x29[12] = \<const0> ;
  assign x29[11] = \<const0> ;
  assign x29[10] = \<const0> ;
  assign x29[9] = \<const0> ;
  assign x29[8] = \<const0> ;
  assign x29[7] = \<const0> ;
  assign x29[6] = \<const0> ;
  assign x29[5] = \<const0> ;
  assign x29[4] = \<const0> ;
  assign x29[3] = \<const0> ;
  assign x29[2] = \<const0> ;
  assign x29[1] = \<const0> ;
  assign x29[0] = \<const0> ;
  assign x3[31] = \<const0> ;
  assign x3[30] = \<const0> ;
  assign x3[29] = \<const0> ;
  assign x3[28] = \<const0> ;
  assign x3[27] = \<const0> ;
  assign x3[26] = \<const0> ;
  assign x3[25] = \<const0> ;
  assign x3[24] = \<const0> ;
  assign x3[23] = \<const0> ;
  assign x3[22] = \<const0> ;
  assign x3[21] = \<const0> ;
  assign x3[20] = \<const0> ;
  assign x3[19] = \<const0> ;
  assign x3[18] = \<const0> ;
  assign x3[17] = \<const0> ;
  assign x3[16] = \<const0> ;
  assign x3[15] = \<const0> ;
  assign x3[14] = \<const0> ;
  assign x3[13] = \<const0> ;
  assign x3[12] = \<const0> ;
  assign x3[11] = \<const0> ;
  assign x3[10] = \<const0> ;
  assign x3[9] = \<const0> ;
  assign x3[8] = \<const0> ;
  assign x3[7] = \<const0> ;
  assign x3[6] = \<const0> ;
  assign x3[5] = \<const0> ;
  assign x3[4] = \<const0> ;
  assign x3[3] = \<const0> ;
  assign x3[2] = \<const0> ;
  assign x3[1] = \<const0> ;
  assign x3[0] = \<const0> ;
  assign x30[31] = \<const0> ;
  assign x30[30] = \<const0> ;
  assign x30[29] = \<const0> ;
  assign x30[28] = \<const0> ;
  assign x30[27] = \<const0> ;
  assign x30[26] = \<const0> ;
  assign x30[25] = \<const0> ;
  assign x30[24] = \<const0> ;
  assign x30[23] = \<const0> ;
  assign x30[22] = \<const0> ;
  assign x30[21] = \<const0> ;
  assign x30[20] = \<const0> ;
  assign x30[19] = \<const0> ;
  assign x30[18] = \<const0> ;
  assign x30[17] = \<const0> ;
  assign x30[16] = \<const0> ;
  assign x30[15] = \<const0> ;
  assign x30[14] = \<const0> ;
  assign x30[13] = \<const0> ;
  assign x30[12] = \<const0> ;
  assign x30[11] = \<const0> ;
  assign x30[10] = \<const0> ;
  assign x30[9] = \<const0> ;
  assign x30[8] = \<const0> ;
  assign x30[7] = \<const0> ;
  assign x30[6] = \<const0> ;
  assign x30[5] = \<const0> ;
  assign x30[4] = \<const0> ;
  assign x30[3] = \<const0> ;
  assign x30[2] = \<const0> ;
  assign x30[1] = \<const0> ;
  assign x30[0] = \<const0> ;
  assign x31[31] = \<const0> ;
  assign x31[30] = \<const0> ;
  assign x31[29] = \<const0> ;
  assign x31[28] = \<const0> ;
  assign x31[27] = \<const0> ;
  assign x31[26] = \<const0> ;
  assign x31[25] = \<const0> ;
  assign x31[24] = \<const0> ;
  assign x31[23] = \<const0> ;
  assign x31[22] = \<const0> ;
  assign x31[21] = \<const0> ;
  assign x31[20] = \<const0> ;
  assign x31[19] = \<const0> ;
  assign x31[18] = \<const0> ;
  assign x31[17] = \<const0> ;
  assign x31[16] = \<const0> ;
  assign x31[15] = \<const0> ;
  assign x31[14] = \<const0> ;
  assign x31[13] = \<const0> ;
  assign x31[12] = \<const0> ;
  assign x31[11] = \<const0> ;
  assign x31[10] = \<const0> ;
  assign x31[9] = \<const0> ;
  assign x31[8] = \<const0> ;
  assign x31[7] = \<const0> ;
  assign x31[6] = \<const0> ;
  assign x31[5] = \<const0> ;
  assign x31[4] = \<const0> ;
  assign x31[3] = \<const0> ;
  assign x31[2] = \<const0> ;
  assign x31[1] = \<const0> ;
  assign x31[0] = \<const0> ;
  assign x4[31] = \<const0> ;
  assign x4[30] = \<const0> ;
  assign x4[29] = \<const0> ;
  assign x4[28] = \<const0> ;
  assign x4[27] = \<const0> ;
  assign x4[26] = \<const0> ;
  assign x4[25] = \<const0> ;
  assign x4[24] = \<const0> ;
  assign x4[23] = \<const0> ;
  assign x4[22] = \<const0> ;
  assign x4[21] = \<const0> ;
  assign x4[20] = \<const0> ;
  assign x4[19] = \<const0> ;
  assign x4[18] = \<const0> ;
  assign x4[17] = \<const0> ;
  assign x4[16] = \<const0> ;
  assign x4[15] = \<const0> ;
  assign x4[14] = \<const0> ;
  assign x4[13] = \<const0> ;
  assign x4[12] = \<const0> ;
  assign x4[11] = \<const0> ;
  assign x4[10] = \<const0> ;
  assign x4[9] = \<const0> ;
  assign x4[8] = \<const0> ;
  assign x4[7] = \<const0> ;
  assign x4[6] = \<const0> ;
  assign x4[5] = \<const0> ;
  assign x4[4] = \<const0> ;
  assign x4[3] = \<const0> ;
  assign x4[2] = \<const0> ;
  assign x4[1] = \<const0> ;
  assign x4[0] = \<const0> ;
  assign x5[31] = \<const0> ;
  assign x5[30] = \<const0> ;
  assign x5[29] = \<const0> ;
  assign x5[28] = \<const0> ;
  assign x5[27] = \<const0> ;
  assign x5[26] = \<const0> ;
  assign x5[25] = \<const0> ;
  assign x5[24] = \<const0> ;
  assign x5[23] = \<const0> ;
  assign x5[22] = \<const0> ;
  assign x5[21] = \<const0> ;
  assign x5[20] = \<const0> ;
  assign x5[19] = \<const0> ;
  assign x5[18] = \<const0> ;
  assign x5[17] = \<const0> ;
  assign x5[16] = \<const0> ;
  assign x5[15] = \<const0> ;
  assign x5[14] = \<const0> ;
  assign x5[13] = \<const0> ;
  assign x5[12] = \<const0> ;
  assign x5[11] = \<const0> ;
  assign x5[10] = \<const0> ;
  assign x5[9] = \<const0> ;
  assign x5[8] = \<const0> ;
  assign x5[7] = \<const0> ;
  assign x5[6] = \<const0> ;
  assign x5[5] = \<const0> ;
  assign x5[4] = \<const0> ;
  assign x5[3] = \<const0> ;
  assign x5[2] = \<const0> ;
  assign x5[1] = \<const0> ;
  assign x5[0] = \<const0> ;
  assign x6[31] = \<const0> ;
  assign x6[30] = \<const0> ;
  assign x6[29] = \<const0> ;
  assign x6[28] = \<const0> ;
  assign x6[27] = \<const0> ;
  assign x6[26] = \<const0> ;
  assign x6[25] = \<const0> ;
  assign x6[24] = \<const0> ;
  assign x6[23] = \<const0> ;
  assign x6[22] = \<const0> ;
  assign x6[21] = \<const0> ;
  assign x6[20] = \<const0> ;
  assign x6[19] = \<const0> ;
  assign x6[18] = \<const0> ;
  assign x6[17] = \<const0> ;
  assign x6[16] = \<const0> ;
  assign x6[15] = \<const0> ;
  assign x6[14] = \<const0> ;
  assign x6[13] = \<const0> ;
  assign x6[12] = \<const0> ;
  assign x6[11] = \<const0> ;
  assign x6[10] = \<const0> ;
  assign x6[9] = \<const0> ;
  assign x6[8] = \<const0> ;
  assign x6[7] = \<const0> ;
  assign x6[6] = \<const0> ;
  assign x6[5] = \<const0> ;
  assign x6[4] = \<const0> ;
  assign x6[3] = \<const0> ;
  assign x6[2] = \<const0> ;
  assign x6[1] = \<const0> ;
  assign x6[0] = \<const0> ;
  assign x7[31] = \<const0> ;
  assign x7[30] = \<const0> ;
  assign x7[29] = \<const0> ;
  assign x7[28] = \<const0> ;
  assign x7[27] = \<const0> ;
  assign x7[26] = \<const0> ;
  assign x7[25] = \<const0> ;
  assign x7[24] = \<const0> ;
  assign x7[23] = \<const0> ;
  assign x7[22] = \<const0> ;
  assign x7[21] = \<const0> ;
  assign x7[20] = \<const0> ;
  assign x7[19] = \<const0> ;
  assign x7[18] = \<const0> ;
  assign x7[17] = \<const0> ;
  assign x7[16] = \<const0> ;
  assign x7[15] = \<const0> ;
  assign x7[14] = \<const0> ;
  assign x7[13] = \<const0> ;
  assign x7[12] = \<const0> ;
  assign x7[11] = \<const0> ;
  assign x7[10] = \<const0> ;
  assign x7[9] = \<const0> ;
  assign x7[8] = \<const0> ;
  assign x7[7] = \<const0> ;
  assign x7[6] = \<const0> ;
  assign x7[5] = \<const0> ;
  assign x7[4] = \<const0> ;
  assign x7[3] = \<const0> ;
  assign x7[2] = \<const0> ;
  assign x7[1] = \<const0> ;
  assign x7[0] = \<const0> ;
  assign x8[31] = \<const0> ;
  assign x8[30] = \<const0> ;
  assign x8[29] = \<const0> ;
  assign x8[28] = \<const0> ;
  assign x8[27] = \<const0> ;
  assign x8[26] = \<const0> ;
  assign x8[25] = \<const0> ;
  assign x8[24] = \<const0> ;
  assign x8[23] = \<const0> ;
  assign x8[22] = \<const0> ;
  assign x8[21] = \<const0> ;
  assign x8[20] = \<const0> ;
  assign x8[19] = \<const0> ;
  assign x8[18] = \<const0> ;
  assign x8[17] = \<const0> ;
  assign x8[16] = \<const0> ;
  assign x8[15] = \<const0> ;
  assign x8[14] = \<const0> ;
  assign x8[13] = \<const0> ;
  assign x8[12] = \<const0> ;
  assign x8[11] = \<const0> ;
  assign x8[10] = \<const0> ;
  assign x8[9] = \<const0> ;
  assign x8[8] = \<const0> ;
  assign x8[7] = \<const0> ;
  assign x8[6] = \<const0> ;
  assign x8[5] = \<const0> ;
  assign x8[4] = \<const0> ;
  assign x8[3] = \<const0> ;
  assign x8[2] = \<const0> ;
  assign x8[1] = \<const0> ;
  assign x8[0] = \<const0> ;
  assign x9[31] = \<const0> ;
  assign x9[30] = \<const0> ;
  assign x9[29] = \<const0> ;
  assign x9[28] = \<const0> ;
  assign x9[27] = \<const0> ;
  assign x9[26] = \<const0> ;
  assign x9[25] = \<const0> ;
  assign x9[24] = \<const0> ;
  assign x9[23] = \<const0> ;
  assign x9[22] = \<const0> ;
  assign x9[21] = \<const0> ;
  assign x9[20] = \<const0> ;
  assign x9[19] = \<const0> ;
  assign x9[18] = \<const0> ;
  assign x9[17] = \<const0> ;
  assign x9[16] = \<const0> ;
  assign x9[15] = \<const0> ;
  assign x9[14] = \<const0> ;
  assign x9[13] = \<const0> ;
  assign x9[12] = \<const0> ;
  assign x9[11] = \<const0> ;
  assign x9[10] = \<const0> ;
  assign x9[9] = \<const0> ;
  assign x9[8] = \<const0> ;
  assign x9[7] = \<const0> ;
  assign x9[6] = \<const0> ;
  assign x9[5] = \<const0> ;
  assign x9[4] = \<const0> ;
  assign x9[3] = \<const0> ;
  assign x9[2] = \<const0> ;
  assign x9[1] = \<const0> ;
  assign x9[0] = \<const0> ;
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[11]_INST_0 
       (.I0(inst_n_54),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(data6[11]),
        .I4(ALU_operation[2]),
        .O(ALU_out[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[11]_INST_0_i_2 
       (.CI(inst_n_57),
        .CO({\ALU_out[11]_INST_0_i_2_n_0 ,\ALU_out[11]_INST_0_i_2_n_1 ,\ALU_out[11]_INST_0_i_2_n_2 ,\ALU_out[11]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data6[11:8]),
        .S({\ALU_out[11]_INST_0_i_3_n_0 ,\ALU_out[11]_INST_0_i_4_n_0 ,\ALU_out[11]_INST_0_i_5_n_0 ,\ALU_out[11]_INST_0_i_6_n_0 }));
  LUT6 #(
    .INIT(64'h757F5555757FFFFF)) 
    \ALU_out[11]_INST_0_i_3 
       (.I0(ALUSrc_B),
        .I1(inst_field[20]),
        .I2(ImmSel[0]),
        .I3(inst_field[7]),
        .I4(ImmSel[1]),
        .I5(inst_field[31]),
        .O(\ALU_out[11]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[11]_INST_0_i_4 
       (.I0(inst_field[30]),
        .I1(ALUSrc_B),
        .O(\ALU_out[11]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[11]_INST_0_i_5 
       (.I0(inst_field[29]),
        .I1(ALUSrc_B),
        .O(\ALU_out[11]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[11]_INST_0_i_6 
       (.I0(inst_field[28]),
        .I1(ALUSrc_B),
        .O(\ALU_out[11]_INST_0_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[15]_INST_0_i_2 
       (.CI(\ALU_out[11]_INST_0_i_2_n_0 ),
        .CO({\ALU_out[15]_INST_0_i_2_n_0 ,\ALU_out[15]_INST_0_i_2_n_1 ,\ALU_out[15]_INST_0_i_2_n_2 ,\ALU_out[15]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data6[15:12]),
        .S({\ALU_out[15]_INST_0_i_3_n_0 ,\ALU_out[15]_INST_0_i_4_n_0 ,\ALU_out[15]_INST_0_i_5_n_0 ,\ALU_out[15]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[15]_INST_0_i_3 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[15]),
        .I4(ALUSrc_B),
        .O(\ALU_out[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[15]_INST_0_i_4 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[14]),
        .I4(ALUSrc_B),
        .O(\ALU_out[15]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[15]_INST_0_i_5 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[13]),
        .I4(ALUSrc_B),
        .O(\ALU_out[15]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[15]_INST_0_i_6 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[12]),
        .I4(ALUSrc_B),
        .O(\ALU_out[15]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[17]_INST_0 
       (.I0(inst_n_56),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(data6[17]),
        .I4(ALU_operation[2]),
        .O(ALU_out[17]));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[18]_INST_0 
       (.I0(inst_n_55),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(data6[18]),
        .I4(ALU_operation[2]),
        .O(ALU_out[18]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[19]_INST_0_i_2 
       (.CI(\ALU_out[15]_INST_0_i_2_n_0 ),
        .CO({\ALU_out[19]_INST_0_i_2_n_0 ,\ALU_out[19]_INST_0_i_2_n_1 ,\ALU_out[19]_INST_0_i_2_n_2 ,\ALU_out[19]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data6[19:16]),
        .S({\ALU_out[19]_INST_0_i_3_n_0 ,\ALU_out[19]_INST_0_i_4_n_0 ,\ALU_out[19]_INST_0_i_5_n_0 ,\ALU_out[19]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[19]_INST_0_i_3 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[19]),
        .I4(ALUSrc_B),
        .O(\ALU_out[19]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[19]_INST_0_i_4 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[18]),
        .I4(ALUSrc_B),
        .O(\ALU_out[19]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[19]_INST_0_i_5 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[17]),
        .I4(ALUSrc_B),
        .O(\ALU_out[19]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h15D5FFFF)) 
    \ALU_out[19]_INST_0_i_6 
       (.I0(inst_field[31]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[16]),
        .I4(ALUSrc_B),
        .O(\ALU_out[19]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[23]_INST_0 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[23]),
        .I5(ALU_operation[2]),
        .O(ALU_out[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[23]_INST_0_i_1 
       (.CI(\ALU_out[19]_INST_0_i_2_n_0 ),
        .CO({\ALU_out[23]_INST_0_i_1_n_0 ,\ALU_out[23]_INST_0_i_1_n_1 ,\ALU_out[23]_INST_0_i_1_n_2 ,\ALU_out[23]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data6[23:20]),
        .S({\ALU_out[23]_INST_0_i_2_n_0 ,\ALU_out[23]_INST_0_i_3_n_0 ,\ALU_out[23]_INST_0_i_4_n_0 ,\ALU_out[23]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[23]_INST_0_i_2 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[23]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[23]_INST_0_i_3 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[23]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[23]_INST_0_i_4 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[23]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[23]_INST_0_i_5 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[23]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[24]_INST_0 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[24]),
        .I5(ALU_operation[2]),
        .O(ALU_out[24]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[25]_INST_0 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[25]),
        .I5(ALU_operation[2]),
        .O(ALU_out[25]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[26]_INST_0 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[26]),
        .I5(ALU_operation[2]),
        .O(ALU_out[26]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[27]_INST_0_i_1 
       (.CI(\ALU_out[23]_INST_0_i_1_n_0 ),
        .CO({\ALU_out[27]_INST_0_i_1_n_0 ,\ALU_out[27]_INST_0_i_1_n_1 ,\ALU_out[27]_INST_0_i_1_n_2 ,\ALU_out[27]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data6[27:24]),
        .S({\ALU_out[27]_INST_0_i_2_n_0 ,\ALU_out[27]_INST_0_i_3_n_0 ,\ALU_out[27]_INST_0_i_4_n_0 ,\ALU_out[27]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[27]_INST_0_i_2 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[27]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[27]_INST_0_i_3 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[27]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[27]_INST_0_i_4 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[27]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[27]_INST_0_i_5 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[27]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[28]_INST_0 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[28]),
        .I5(ALU_operation[2]),
        .O(ALU_out[28]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[29]_INST_0 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[29]),
        .I5(ALU_operation[2]),
        .O(ALU_out[29]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[30]_INST_0 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[30]),
        .I5(ALU_operation[2]),
        .O(ALU_out[30]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[31]_INST_0_i_2 
       (.CI(\ALU_out[27]_INST_0_i_1_n_0 ),
        .CO({\NLW_ALU_out[31]_INST_0_i_2_CO_UNCONNECTED [3],\ALU_out[31]_INST_0_i_2_n_1 ,\ALU_out[31]_INST_0_i_2_n_2 ,\ALU_out[31]_INST_0_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data6[31:28]),
        .S({\ALU_out[31]_INST_0_i_3_n_0 ,\ALU_out[31]_INST_0_i_4_n_0 ,\ALU_out[31]_INST_0_i_5_n_0 ,\ALU_out[31]_INST_0_i_6_n_0 }));
  LUT4 #(
    .INIT(16'h777F)) 
    \ALU_out[31]_INST_0_i_3 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .I2(ImmSel[0]),
        .I3(ImmSel[1]),
        .O(\ALU_out[31]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[31]_INST_0_i_4 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[31]_INST_0_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[31]_INST_0_i_5 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[31]_INST_0_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[31]_INST_0_i_6 
       (.I0(inst_field[31]),
        .I1(ALUSrc_B),
        .O(\ALU_out[31]_INST_0_i_6_n_0 ));
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_DataPath inst
       (.ALUSrc_B(ALUSrc_B),
        .ALUSrc_B_0(inst_n_55),
        .ALUSrc_B_1(inst_n_56),
        .ALU_operation(ALU_operation),
        .ALU_out({ALU_out[31],ALU_out[27],ALU_out[22:19],ALU_out[16:12],ALU_out[10:0]}),
        .\ALU_out[31] (data6),
        .Branch(Branch),
        .CO(inst_n_57),
        .ImmSel(ImmSel),
        .Jump(Jump),
        .Q(PC_out),
        .clk(clk),
        .inst_field(inst_field[31:7]),
        .\inst_field[31] (inst_n_54),
        .rst(rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PCReg
   (ALU_out,
    O,
    ALU_operation_2_sp_1,
    \ALU_operation[2]_0 ,
    DI,
    \ALU_operation[2]_1 ,
    ALUSrc_B_0,
    ALUSrc_B_1,
    ALUSrc_B_2,
    S,
    Q,
    \inst_field[31] ,
    CO,
    \inst_field[27] ,
    \inst_field[31]_0 ,
    \inst_field[23] ,
    ImmSel_1_sp_1,
    \inst_field[19] ,
    \inst_field[15] ,
    \Q_reg[22]_0 ,
    \Q_reg[26]_0 ,
    \Q_reg[2]_0 ,
    ALU_operation,
    inst_field,
    ImmSel,
    ALUSrc_B,
    \ALU_out[31] ,
    \Q[31]_i_9 ,
    Branch,
    Jump,
    \Q_reg[3]_0 ,
    add_c1,
    \Q_reg[3]_1 ,
    add_c0,
    clk,
    rst);
  output [20:0]ALU_out;
  output [0:0]O;
  output ALU_operation_2_sp_1;
  output \ALU_operation[2]_0 ;
  output [0:0]DI;
  output \ALU_operation[2]_1 ;
  output ALUSrc_B_0;
  output ALUSrc_B_1;
  output [3:0]ALUSrc_B_2;
  output [3:0]S;
  output [31:0]Q;
  output [3:0]\inst_field[31] ;
  output [0:0]CO;
  output [3:0]\inst_field[27] ;
  output [3:0]\inst_field[31]_0 ;
  output [3:0]\inst_field[23] ;
  output ImmSel_1_sp_1;
  output [3:0]\inst_field[19] ;
  output [3:0]\inst_field[15] ;
  output [3:0]\Q_reg[22]_0 ;
  output [3:0]\Q_reg[26]_0 ;
  output [0:0]\Q_reg[2]_0 ;
  input [2:0]ALU_operation;
  input [24:0]inst_field;
  input [1:0]ImmSel;
  input ALUSrc_B;
  input [23:0]\ALU_out[31] ;
  input \Q[31]_i_9 ;
  input Branch;
  input Jump;
  input [0:0]\Q_reg[3]_0 ;
  input [30:0]add_c1;
  input \Q_reg[3]_1 ;
  input [30:0]add_c0;
  input clk;
  input rst;

  wire ALUSrc_B;
  wire ALUSrc_B_0;
  wire ALUSrc_B_1;
  wire [3:0]ALUSrc_B_2;
  wire [2:0]ALU_operation;
  wire \ALU_operation[2]_0 ;
  wire \ALU_operation[2]_1 ;
  wire ALU_operation_2_sn_1;
  wire [20:0]ALU_out;
  wire \ALU_out[12]_INST_0_i_1_n_0 ;
  wire \ALU_out[13]_INST_0_i_1_n_0 ;
  wire \ALU_out[14]_INST_0_i_1_n_0 ;
  wire \ALU_out[15]_INST_0_i_1_n_0 ;
  wire \ALU_out[16]_INST_0_i_1_n_0 ;
  wire \ALU_out[19]_INST_0_i_1_n_0 ;
  wire \ALU_out[1]_INST_0_i_1_n_0 ;
  wire \ALU_out[2]_INST_0_i_1_n_0 ;
  wire [23:0]\ALU_out[31] ;
  wire \ALU_out[31]_INST_0_i_1_n_0 ;
  wire \ALU_out[3]_INST_0_i_1_n_0 ;
  wire \ALU_out[3]_INST_0_i_2_n_0 ;
  wire \ALU_out[3]_INST_0_i_2_n_1 ;
  wire \ALU_out[3]_INST_0_i_2_n_2 ;
  wire \ALU_out[3]_INST_0_i_2_n_3 ;
  wire \ALU_out[3]_INST_0_i_3_n_0 ;
  wire \ALU_out[3]_INST_0_i_4_n_0 ;
  wire \ALU_out[3]_INST_0_i_5_n_0 ;
  wire \ALU_out[3]_INST_0_i_6_n_0 ;
  wire \ALU_out[4]_INST_0_i_1_n_0 ;
  wire \ALU_out[7]_INST_0_i_1_n_1 ;
  wire \ALU_out[7]_INST_0_i_1_n_2 ;
  wire \ALU_out[7]_INST_0_i_1_n_3 ;
  wire \ALU_out[7]_INST_0_i_2_n_0 ;
  wire \ALU_out[7]_INST_0_i_3_n_0 ;
  wire \ALU_out[7]_INST_0_i_4_n_0 ;
  wire \ALU_out[7]_INST_0_i_5_n_0 ;
  wire Branch;
  wire [0:0]CO;
  wire [0:0]DI;
  wire [1:0]ImmSel;
  wire ImmSel_1_sn_1;
  wire Jump;
  wire [0:0]O;
  wire [31:0]Q;
  wire \Q[11]_i_2_n_0 ;
  wire \Q[11]_i_3_n_0 ;
  wire \Q[11]_i_4_n_0 ;
  wire \Q[11]_i_5_n_0 ;
  wire \Q[11]_i_6_n_0 ;
  wire \Q[11]_i_7_n_0 ;
  wire \Q[11]_i_8_n_0 ;
  wire \Q[11]_i_9_n_0 ;
  wire \Q[15]_i_10_n_0 ;
  wire \Q[15]_i_11_n_0 ;
  wire \Q[15]_i_12_n_0 ;
  wire \Q[15]_i_13_n_0 ;
  wire \Q[15]_i_2_n_0 ;
  wire \Q[15]_i_3_n_0 ;
  wire \Q[15]_i_4_n_0 ;
  wire \Q[15]_i_5_n_0 ;
  wire \Q[15]_i_6_n_0 ;
  wire \Q[15]_i_7_n_0 ;
  wire \Q[15]_i_8_n_0 ;
  wire \Q[15]_i_9_n_0 ;
  wire \Q[19]_i_10_n_0 ;
  wire \Q[19]_i_11_n_0 ;
  wire \Q[19]_i_12_n_0 ;
  wire \Q[19]_i_13_n_0 ;
  wire \Q[19]_i_2_n_0 ;
  wire \Q[19]_i_3_n_0 ;
  wire \Q[19]_i_4_n_0 ;
  wire \Q[19]_i_5_n_0 ;
  wire \Q[19]_i_6_n_0 ;
  wire \Q[19]_i_7_n_0 ;
  wire \Q[19]_i_8_n_0 ;
  wire \Q[19]_i_9_n_0 ;
  wire \Q[23]_i_2_n_0 ;
  wire \Q[23]_i_3_n_0 ;
  wire \Q[23]_i_4_n_0 ;
  wire \Q[23]_i_5_n_0 ;
  wire \Q[23]_i_6_n_0 ;
  wire \Q[23]_i_7_n_0 ;
  wire \Q[23]_i_8_n_0 ;
  wire \Q[23]_i_9_n_0 ;
  wire \Q[27]_i_2_n_0 ;
  wire \Q[27]_i_3_n_0 ;
  wire \Q[27]_i_4_n_0 ;
  wire \Q[27]_i_5_n_0 ;
  wire \Q[27]_i_6_n_0 ;
  wire \Q[27]_i_7_n_0 ;
  wire \Q[27]_i_8_n_0 ;
  wire \Q[27]_i_9_n_0 ;
  wire \Q[31]_i_10_n_0 ;
  wire \Q[31]_i_15_n_0 ;
  wire \Q[31]_i_16_n_0 ;
  wire \Q[31]_i_17_n_0 ;
  wire \Q[31]_i_18_n_0 ;
  wire \Q[31]_i_19_n_0 ;
  wire \Q[31]_i_20_n_0 ;
  wire \Q[31]_i_21_n_0 ;
  wire \Q[31]_i_22_n_0 ;
  wire \Q[31]_i_23_n_0 ;
  wire \Q[31]_i_24_n_0 ;
  wire \Q[31]_i_25_n_0 ;
  wire \Q[31]_i_26_n_0 ;
  wire \Q[31]_i_2_n_0 ;
  wire \Q[31]_i_3_n_0 ;
  wire \Q[31]_i_4_n_0 ;
  wire \Q[31]_i_5_n_0 ;
  wire \Q[31]_i_6_n_0 ;
  wire \Q[31]_i_7_n_0 ;
  wire \Q[31]_i_8_n_0 ;
  wire \Q[31]_i_9 ;
  wire \Q[3]_i_10_n_0 ;
  wire \Q[3]_i_11_n_0 ;
  wire \Q[3]_i_12_n_0 ;
  wire \Q[3]_i_2_n_0 ;
  wire \Q[3]_i_3_n_0 ;
  wire \Q[3]_i_4_n_0 ;
  wire \Q[3]_i_5_n_0 ;
  wire \Q[3]_i_6_n_0 ;
  wire \Q[3]_i_7_n_0 ;
  wire \Q[3]_i_8_n_0 ;
  wire \Q[7]_i_10_n_0 ;
  wire \Q[7]_i_2_n_0 ;
  wire \Q[7]_i_3_n_0 ;
  wire \Q[7]_i_4_n_0 ;
  wire \Q[7]_i_5_n_0 ;
  wire \Q[7]_i_6_n_0 ;
  wire \Q[7]_i_7_n_0 ;
  wire \Q[7]_i_8_n_0 ;
  wire \Q[7]_i_9_n_0 ;
  wire \Q_reg[11]_i_1_n_0 ;
  wire \Q_reg[11]_i_1_n_1 ;
  wire \Q_reg[11]_i_1_n_2 ;
  wire \Q_reg[11]_i_1_n_3 ;
  wire \Q_reg[11]_i_1_n_4 ;
  wire \Q_reg[11]_i_1_n_5 ;
  wire \Q_reg[11]_i_1_n_6 ;
  wire \Q_reg[11]_i_1_n_7 ;
  wire \Q_reg[15]_i_1_n_0 ;
  wire \Q_reg[15]_i_1_n_1 ;
  wire \Q_reg[15]_i_1_n_2 ;
  wire \Q_reg[15]_i_1_n_3 ;
  wire \Q_reg[15]_i_1_n_4 ;
  wire \Q_reg[15]_i_1_n_5 ;
  wire \Q_reg[15]_i_1_n_6 ;
  wire \Q_reg[15]_i_1_n_7 ;
  wire \Q_reg[19]_i_1_n_0 ;
  wire \Q_reg[19]_i_1_n_1 ;
  wire \Q_reg[19]_i_1_n_2 ;
  wire \Q_reg[19]_i_1_n_3 ;
  wire \Q_reg[19]_i_1_n_4 ;
  wire \Q_reg[19]_i_1_n_5 ;
  wire \Q_reg[19]_i_1_n_6 ;
  wire \Q_reg[19]_i_1_n_7 ;
  wire [3:0]\Q_reg[22]_0 ;
  wire \Q_reg[23]_i_1_n_0 ;
  wire \Q_reg[23]_i_1_n_1 ;
  wire \Q_reg[23]_i_1_n_2 ;
  wire \Q_reg[23]_i_1_n_3 ;
  wire \Q_reg[23]_i_1_n_4 ;
  wire \Q_reg[23]_i_1_n_5 ;
  wire \Q_reg[23]_i_1_n_6 ;
  wire \Q_reg[23]_i_1_n_7 ;
  wire [3:0]\Q_reg[26]_0 ;
  wire \Q_reg[27]_i_1_n_0 ;
  wire \Q_reg[27]_i_1_n_1 ;
  wire \Q_reg[27]_i_1_n_2 ;
  wire \Q_reg[27]_i_1_n_3 ;
  wire \Q_reg[27]_i_1_n_4 ;
  wire \Q_reg[27]_i_1_n_5 ;
  wire \Q_reg[27]_i_1_n_6 ;
  wire \Q_reg[27]_i_1_n_7 ;
  wire [0:0]\Q_reg[2]_0 ;
  wire \Q_reg[31]_i_1_n_1 ;
  wire \Q_reg[31]_i_1_n_2 ;
  wire \Q_reg[31]_i_1_n_3 ;
  wire \Q_reg[31]_i_1_n_4 ;
  wire \Q_reg[31]_i_1_n_5 ;
  wire \Q_reg[31]_i_1_n_6 ;
  wire \Q_reg[31]_i_1_n_7 ;
  wire [0:0]\Q_reg[3]_0 ;
  wire \Q_reg[3]_1 ;
  wire \Q_reg[3]_i_1_n_0 ;
  wire \Q_reg[3]_i_1_n_1 ;
  wire \Q_reg[3]_i_1_n_2 ;
  wire \Q_reg[3]_i_1_n_3 ;
  wire \Q_reg[3]_i_1_n_4 ;
  wire \Q_reg[3]_i_1_n_5 ;
  wire \Q_reg[3]_i_1_n_6 ;
  wire \Q_reg[3]_i_1_n_7 ;
  wire \Q_reg[7]_i_1_n_0 ;
  wire \Q_reg[7]_i_1_n_1 ;
  wire \Q_reg[7]_i_1_n_2 ;
  wire \Q_reg[7]_i_1_n_3 ;
  wire \Q_reg[7]_i_1_n_4 ;
  wire \Q_reg[7]_i_1_n_5 ;
  wire \Q_reg[7]_i_1_n_6 ;
  wire \Q_reg[7]_i_1_n_7 ;
  wire [3:0]S;
  wire [30:0]add_c0;
  wire [30:0]add_c1;
  wire clk;
  wire [7:1]data6;
  wire [24:0]inst_field;
  wire [3:0]\inst_field[15] ;
  wire [3:0]\inst_field[19] ;
  wire [3:0]\inst_field[23] ;
  wire [3:0]\inst_field[27] ;
  wire [3:0]\inst_field[31] ;
  wire [3:0]\inst_field[31]_0 ;
  wire rst;
  wire [3:3]\NLW_Q_reg[31]_i_1_CO_UNCONNECTED ;

  assign ALU_operation_2_sp_1 = ALU_operation_2_sn_1;
  assign ImmSel_1_sp_1 = ImmSel_1_sn_1;
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[10]_INST_0 
       (.I0(ALUSrc_B),
        .I1(inst_field[23]),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [2]),
        .I5(ALU_operation[2]),
        .O(ALU_out[9]));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[12]_INST_0 
       (.I0(\ALU_out[12]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(\ALU_out[31] [4]),
        .I4(ALU_operation[2]),
        .O(ALU_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[12]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[5]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(\ALU_out[12]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[13]_INST_0 
       (.I0(\ALU_out[13]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(\ALU_out[31] [5]),
        .I4(ALU_operation[2]),
        .O(ALU_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[13]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[6]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(\ALU_out[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[14]_INST_0 
       (.I0(\ALU_out[14]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(\ALU_out[31] [6]),
        .I4(ALU_operation[2]),
        .O(ALU_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[14]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[7]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(\ALU_out[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[15]_INST_0 
       (.I0(\ALU_out[15]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(\ALU_out[31] [7]),
        .I4(ALU_operation[2]),
        .O(ALU_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[15]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[8]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(\ALU_out[15]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[16]_INST_0 
       (.I0(\ALU_out[16]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(\ALU_out[31] [8]),
        .I4(ALU_operation[2]),
        .O(ALU_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[16]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[9]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(\ALU_out[16]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[17]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[10]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(ALUSrc_B_1));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[18]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[11]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(ALUSrc_B_0));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[19]_INST_0 
       (.I0(\ALU_out[19]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(\ALU_out[31] [11]),
        .I4(ALU_operation[2]),
        .O(ALU_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h8AAA8000)) 
    \ALU_out[19]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[12]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[24]),
        .O(\ALU_out[19]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[1]_INST_0 
       (.I0(\ALU_out[1]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(data6[1]),
        .I4(ALU_operation[2]),
        .O(ALU_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h8AA88008)) 
    \ALU_out[1]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[14]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[1]),
        .O(\ALU_out[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[20]_INST_0 
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [12]),
        .I5(ALU_operation[2]),
        .O(ALU_out[16]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[21]_INST_0 
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [13]),
        .I5(ALU_operation[2]),
        .O(ALU_out[17]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[22]_INST_0 
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [14]),
        .I5(ALU_operation[2]),
        .O(ALU_out[18]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[27]_INST_0 
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [19]),
        .I5(ALU_operation[2]),
        .O(ALU_out[19]));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[2]_INST_0 
       (.I0(\ALU_out[2]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(data6[2]),
        .I4(ALU_operation[2]),
        .O(ALU_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8AA88008)) 
    \ALU_out[2]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[15]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[2]),
        .O(\ALU_out[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[31]_INST_0 
       (.I0(\ALU_out[31]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(\ALU_out[31] [23]),
        .I4(ALU_operation[2]),
        .O(ALU_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE000)) 
    \ALU_out[31]_INST_0_i_1 
       (.I0(ImmSel[1]),
        .I1(ImmSel[0]),
        .I2(ALUSrc_B),
        .I3(inst_field[24]),
        .O(\ALU_out[31]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[3]_INST_0 
       (.I0(\ALU_out[3]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(data6[3]),
        .I4(ALU_operation[2]),
        .O(ALU_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h8AA88008)) 
    \ALU_out[3]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[16]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[3]),
        .O(\ALU_out[3]_INST_0_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[3]_INST_0_i_2 
       (.CI(1'b0),
        .CO({\ALU_out[3]_INST_0_i_2_n_0 ,\ALU_out[3]_INST_0_i_2_n_1 ,\ALU_out[3]_INST_0_i_2_n_2 ,\ALU_out[3]_INST_0_i_2_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({data6[3:1],O}),
        .S({\ALU_out[3]_INST_0_i_3_n_0 ,\ALU_out[3]_INST_0_i_4_n_0 ,\ALU_out[3]_INST_0_i_5_n_0 ,\ALU_out[3]_INST_0_i_6_n_0 }));
  LUT5 #(
    .INIT(32'h14D7FFFF)) 
    \ALU_out[3]_INST_0_i_3 
       (.I0(inst_field[3]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[16]),
        .I4(ALUSrc_B),
        .O(\ALU_out[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h14D7FFFF)) 
    \ALU_out[3]_INST_0_i_4 
       (.I0(inst_field[2]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[15]),
        .I4(ALUSrc_B),
        .O(\ALU_out[3]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h14D7FFFF)) 
    \ALU_out[3]_INST_0_i_5 
       (.I0(inst_field[1]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[14]),
        .I4(ALUSrc_B),
        .O(\ALU_out[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hABFBFFFF)) 
    \ALU_out[3]_INST_0_i_6 
       (.I0(ImmSel[1]),
        .I1(inst_field[13]),
        .I2(ImmSel[0]),
        .I3(inst_field[0]),
        .I4(ALUSrc_B),
        .O(\ALU_out[3]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3101A8A8)) 
    \ALU_out[4]_INST_0 
       (.I0(\ALU_out[4]_INST_0_i_1_n_0 ),
        .I1(ALU_operation[0]),
        .I2(ALU_operation[1]),
        .I3(data6[4]),
        .I4(ALU_operation[2]),
        .O(ALU_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h8AA88008)) 
    \ALU_out[4]_INST_0_i_1 
       (.I0(ALUSrc_B),
        .I1(inst_field[17]),
        .I2(ImmSel[1]),
        .I3(ImmSel[0]),
        .I4(inst_field[4]),
        .O(\ALU_out[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[5]_INST_0 
       (.I0(ALUSrc_B),
        .I1(inst_field[18]),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[5]),
        .I5(ALU_operation[2]),
        .O(ALU_out[4]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[6]_INST_0 
       (.I0(ALUSrc_B),
        .I1(inst_field[19]),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[6]),
        .I5(ALU_operation[2]),
        .O(ALU_out[5]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[7]_INST_0 
       (.I0(ALUSrc_B),
        .I1(inst_field[20]),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(data6[7]),
        .I5(ALU_operation[2]),
        .O(ALU_out[6]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \ALU_out[7]_INST_0_i_1 
       (.CI(\ALU_out[3]_INST_0_i_2_n_0 ),
        .CO({CO,\ALU_out[7]_INST_0_i_1_n_1 ,\ALU_out[7]_INST_0_i_1_n_2 ,\ALU_out[7]_INST_0_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data6[7:4]),
        .S({\ALU_out[7]_INST_0_i_2_n_0 ,\ALU_out[7]_INST_0_i_3_n_0 ,\ALU_out[7]_INST_0_i_4_n_0 ,\ALU_out[7]_INST_0_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[7]_INST_0_i_2 
       (.I0(inst_field[20]),
        .I1(ALUSrc_B),
        .O(\ALU_out[7]_INST_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[7]_INST_0_i_3 
       (.I0(inst_field[19]),
        .I1(ALUSrc_B),
        .O(\ALU_out[7]_INST_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ALU_out[7]_INST_0_i_4 
       (.I0(inst_field[18]),
        .I1(ALUSrc_B),
        .O(\ALU_out[7]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h14D7FFFF)) 
    \ALU_out[7]_INST_0_i_5 
       (.I0(inst_field[4]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[17]),
        .I4(ALUSrc_B),
        .O(\ALU_out[7]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[8]_INST_0 
       (.I0(ALUSrc_B),
        .I1(inst_field[21]),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [0]),
        .I5(ALU_operation[2]),
        .O(ALU_out[7]));
  LUT6 #(
    .INIT(64'h0F07000788808880)) 
    \ALU_out[9]_INST_0 
       (.I0(ALUSrc_B),
        .I1(inst_field[22]),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [1]),
        .I5(ALU_operation[2]),
        .O(ALU_out[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[11]_i_2 
       (.I0(Q[11]),
        .I1(Jump),
        .O(\Q[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[11]_i_3 
       (.I0(Q[10]),
        .I1(Jump),
        .O(\Q[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[11]_i_4 
       (.I0(Q[9]),
        .I1(Jump),
        .O(\Q[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[11]_i_5 
       (.I0(Q[8]),
        .I1(Jump),
        .O(\Q[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[11]_i_6 
       (.I0(Q[11]),
        .I1(add_c1[10]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[10]),
        .I4(Jump),
        .I5(DI),
        .O(\Q[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[11]_i_7 
       (.I0(Q[10]),
        .I1(add_c1[9]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[9]),
        .I4(Jump),
        .I5(inst_field[23]),
        .O(\Q[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[11]_i_8 
       (.I0(Q[9]),
        .I1(add_c1[8]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[8]),
        .I4(Jump),
        .I5(inst_field[22]),
        .O(\Q[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[11]_i_9 
       (.I0(Q[8]),
        .I1(add_c1[7]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[7]),
        .I4(Jump),
        .I5(inst_field[21]),
        .O(\Q[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[15]_i_10 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[8]),
        .O(\Q[15]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[15]_i_11 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[7]),
        .O(\Q[15]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[15]_i_12 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[6]),
        .O(\Q[15]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[15]_i_13 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[5]),
        .O(\Q[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[15]_i_2 
       (.I0(Q[15]),
        .I1(Jump),
        .O(\Q[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[15]_i_3 
       (.I0(Q[14]),
        .I1(Jump),
        .O(\Q[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[15]_i_4 
       (.I0(Q[13]),
        .I1(Jump),
        .O(\Q[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[15]_i_5 
       (.I0(Q[12]),
        .I1(Jump),
        .O(\Q[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[15]_i_6 
       (.I0(Q[15]),
        .I1(add_c1[14]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[14]),
        .I4(Jump),
        .I5(\Q[15]_i_10_n_0 ),
        .O(\Q[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[15]_i_7 
       (.I0(Q[14]),
        .I1(add_c1[13]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[13]),
        .I4(Jump),
        .I5(\Q[15]_i_11_n_0 ),
        .O(\Q[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[15]_i_8 
       (.I0(Q[13]),
        .I1(add_c1[12]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[12]),
        .I4(Jump),
        .I5(\Q[15]_i_12_n_0 ),
        .O(\Q[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[15]_i_9 
       (.I0(Q[12]),
        .I1(add_c1[11]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[11]),
        .I4(Jump),
        .I5(\Q[15]_i_13_n_0 ),
        .O(\Q[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[19]_i_10 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[12]),
        .O(\Q[19]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[19]_i_11 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[11]),
        .O(\Q[19]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[19]_i_12 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[10]),
        .O(\Q[19]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h15D5)) 
    \Q[19]_i_13 
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[9]),
        .O(\Q[19]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[19]_i_2 
       (.I0(Q[19]),
        .I1(Jump),
        .O(\Q[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[19]_i_3 
       (.I0(Q[18]),
        .I1(Jump),
        .O(\Q[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[19]_i_4 
       (.I0(Q[17]),
        .I1(Jump),
        .O(\Q[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[19]_i_5 
       (.I0(Q[16]),
        .I1(Jump),
        .O(\Q[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[19]_i_6 
       (.I0(Q[19]),
        .I1(add_c1[18]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[18]),
        .I4(Jump),
        .I5(\Q[19]_i_10_n_0 ),
        .O(\Q[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[19]_i_7 
       (.I0(Q[18]),
        .I1(add_c1[17]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[17]),
        .I4(Jump),
        .I5(\Q[19]_i_11_n_0 ),
        .O(\Q[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[19]_i_8 
       (.I0(Q[17]),
        .I1(add_c1[16]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[16]),
        .I4(Jump),
        .I5(\Q[19]_i_12_n_0 ),
        .O(\Q[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[19]_i_9 
       (.I0(Q[16]),
        .I1(add_c1[15]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[15]),
        .I4(Jump),
        .I5(\Q[19]_i_13_n_0 ),
        .O(\Q[19]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[23]_i_2 
       (.I0(Q[23]),
        .I1(Jump),
        .O(\Q[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[23]_i_3 
       (.I0(Q[22]),
        .I1(Jump),
        .O(\Q[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[23]_i_4 
       (.I0(Q[21]),
        .I1(Jump),
        .O(\Q[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[23]_i_5 
       (.I0(Q[20]),
        .I1(Jump),
        .O(\Q[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[23]_i_6 
       (.I0(Q[23]),
        .I1(add_c1[22]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[22]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[23]_i_7 
       (.I0(Q[22]),
        .I1(add_c1[21]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[21]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[23]_i_8 
       (.I0(Q[21]),
        .I1(add_c1[20]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[20]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[23]_i_9 
       (.I0(Q[20]),
        .I1(add_c1[19]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[19]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[27]_i_2 
       (.I0(Q[27]),
        .I1(Jump),
        .O(\Q[27]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[27]_i_3 
       (.I0(Q[26]),
        .I1(Jump),
        .O(\Q[27]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[27]_i_4 
       (.I0(Q[25]),
        .I1(Jump),
        .O(\Q[27]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[27]_i_5 
       (.I0(Q[24]),
        .I1(Jump),
        .O(\Q[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[27]_i_6 
       (.I0(Q[27]),
        .I1(add_c1[26]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[26]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[27]_i_7 
       (.I0(Q[26]),
        .I1(add_c1[25]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[25]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[27]_i_8 
       (.I0(Q[25]),
        .I1(add_c1[24]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[24]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[27]_i_9 
       (.I0(Q[24]),
        .I1(add_c1[23]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[23]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \Q[31]_i_10 
       (.I0(ImmSel[1]),
        .I1(ImmSel[0]),
        .I2(inst_field[24]),
        .O(\Q[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55D0008A)) 
    \Q[31]_i_12 
       (.I0(ALU_operation[2]),
        .I1(\ALU_out[31] [3]),
        .I2(ALU_operation[1]),
        .I3(ALU_operation[0]),
        .I4(\Q[31]_i_9 ),
        .I5(ALU_out[2]),
        .O(ALU_operation_2_sn_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Q[31]_i_13 
       (.I0(\Q[31]_i_15_n_0 ),
        .I1(\Q[31]_i_16_n_0 ),
        .I2(\Q[31]_i_17_n_0 ),
        .I3(\Q[31]_i_18_n_0 ),
        .I4(\Q[31]_i_19_n_0 ),
        .I5(ALU_out[20]),
        .O(\ALU_operation[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55D0008A)) 
    \Q[31]_i_14 
       (.I0(ALU_operation[2]),
        .I1(\ALU_out[31] [10]),
        .I2(ALU_operation[1]),
        .I3(ALU_operation[0]),
        .I4(ALUSrc_B_0),
        .I5(ALU_out[11]),
        .O(\ALU_operation[2]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55D0008A)) 
    \Q[31]_i_15 
       (.I0(ALU_operation[2]),
        .I1(\ALU_out[31] [9]),
        .I2(ALU_operation[1]),
        .I3(ALU_operation[0]),
        .I4(ALUSrc_B_1),
        .I5(ALU_out[14]),
        .O(\Q[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[31]_i_16 
       (.I0(ALU_out[5]),
        .I1(ALU_out[7]),
        .I2(ALU_out[16]),
        .I3(ALU_out[17]),
        .O(\Q[31]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Q[31]_i_17 
       (.I0(ALU_out[4]),
        .I1(ALU_out[6]),
        .I2(ALU_out[9]),
        .I3(ALU_out[18]),
        .O(\Q[31]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \Q[31]_i_18 
       (.I0(\Q[31]_i_20_n_0 ),
        .I1(\Q[31]_i_21_n_0 ),
        .I2(\Q[31]_i_22_n_0 ),
        .I3(Branch),
        .I4(ALU_out[8]),
        .I5(ALU_out[19]),
        .O(\Q[31]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0AAA08AA)) 
    \Q[31]_i_19 
       (.I0(ALU_operation[2]),
        .I1(\ALU_out[31] [18]),
        .I2(\Q[31]_i_23_n_0 ),
        .I3(\Q[31]_i_24_n_0 ),
        .I4(\ALU_out[31] [21]),
        .I5(\Q[31]_i_25_n_0 ),
        .O(\Q[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[31]_i_2 
       (.I0(Q[30]),
        .I1(Jump),
        .O(\Q[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080008A008A008A)) 
    \Q[31]_i_20 
       (.I0(ALU_operation[2]),
        .I1(\ALU_out[31] [17]),
        .I2(ALU_operation[1]),
        .I3(ALU_operation[0]),
        .I4(ALUSrc_B),
        .I5(inst_field[24]),
        .O(\Q[31]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0080008A008A008A)) 
    \Q[31]_i_21 
       (.I0(ALU_operation[2]),
        .I1(\ALU_out[31] [16]),
        .I2(ALU_operation[1]),
        .I3(ALU_operation[0]),
        .I4(ALUSrc_B),
        .I5(inst_field[24]),
        .O(\Q[31]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0080008A008A008A)) 
    \Q[31]_i_22 
       (.I0(ALU_operation[2]),
        .I1(\ALU_out[31] [20]),
        .I2(ALU_operation[1]),
        .I3(ALU_operation[0]),
        .I4(ALUSrc_B),
        .I5(inst_field[24]),
        .O(\Q[31]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \Q[31]_i_23 
       (.I0(ALU_operation[0]),
        .I1(ALU_operation[1]),
        .O(\Q[31]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFEEE)) 
    \Q[31]_i_24 
       (.I0(ALU_operation[0]),
        .I1(ALU_operation[1]),
        .I2(ALUSrc_B),
        .I3(inst_field[24]),
        .O(\Q[31]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h0F0C0A0C00000000)) 
    \Q[31]_i_25 
       (.I0(\ALU_out[31] [22]),
        .I1(\Q[31]_i_26_n_0 ),
        .I2(ALU_operation[0]),
        .I3(ALU_operation[1]),
        .I4(\ALU_out[31] [15]),
        .I5(ALU_operation[2]),
        .O(\Q[31]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Q[31]_i_26 
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .O(\Q[31]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[31]_i_3 
       (.I0(Q[29]),
        .I1(Jump),
        .O(\Q[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[31]_i_4 
       (.I0(Q[28]),
        .I1(Jump),
        .O(\Q[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[31]_i_5 
       (.I0(Q[31]),
        .I1(add_c1[30]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[30]),
        .I4(Jump),
        .I5(\Q[31]_i_10_n_0 ),
        .O(\Q[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[31]_i_6 
       (.I0(Q[30]),
        .I1(add_c1[29]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[29]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[31]_i_7 
       (.I0(Q[29]),
        .I1(add_c1[28]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[28]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[31]_i_8 
       (.I0(Q[28]),
        .I1(add_c1[27]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[27]),
        .I4(Jump),
        .I5(inst_field[24]),
        .O(\Q[31]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \Q[3]_i_10 
       (.I0(inst_field[3]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[16]),
        .O(\Q[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \Q[3]_i_11 
       (.I0(inst_field[2]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[15]),
        .O(\Q[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \Q[3]_i_12 
       (.I0(inst_field[1]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[14]),
        .O(\Q[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hABFB)) 
    \Q[3]_i_13 
       (.I0(ImmSel[1]),
        .I1(inst_field[13]),
        .I2(ImmSel[0]),
        .I3(inst_field[0]),
        .O(ImmSel_1_sn_1));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[3]_i_2 
       (.I0(Q[3]),
        .I1(Jump),
        .O(\Q[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[3]_i_3 
       (.I0(Q[2]),
        .I1(Jump),
        .O(\Q[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[3]_i_4 
       (.I0(Q[1]),
        .I1(Jump),
        .O(\Q[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[3]_i_5 
       (.I0(Q[0]),
        .I1(Jump),
        .O(\Q[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[3]_i_6 
       (.I0(Q[3]),
        .I1(add_c1[2]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[2]),
        .I4(Jump),
        .I5(\Q[3]_i_10_n_0 ),
        .O(\Q[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[3]_i_7 
       (.I0(Q[2]),
        .I1(add_c1[1]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[1]),
        .I4(Jump),
        .I5(\Q[3]_i_11_n_0 ),
        .O(\Q[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[3]_i_8 
       (.I0(Q[1]),
        .I1(add_c1[0]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[0]),
        .I4(Jump),
        .I5(\Q[3]_i_12_n_0 ),
        .O(\Q[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h14D7)) 
    \Q[7]_i_10 
       (.I0(inst_field[4]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(inst_field[17]),
        .O(\Q[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[7]_i_2 
       (.I0(Q[7]),
        .I1(Jump),
        .O(\Q[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[7]_i_3 
       (.I0(Q[6]),
        .I1(Jump),
        .O(\Q[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[7]_i_4 
       (.I0(Q[5]),
        .I1(Jump),
        .O(\Q[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \Q[7]_i_5 
       (.I0(Q[4]),
        .I1(Jump),
        .O(\Q[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[7]_i_6 
       (.I0(Q[7]),
        .I1(add_c1[6]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[6]),
        .I4(Jump),
        .I5(inst_field[20]),
        .O(\Q[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[7]_i_7 
       (.I0(Q[6]),
        .I1(add_c1[5]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[5]),
        .I4(Jump),
        .I5(inst_field[19]),
        .O(\Q[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5555FC0CAAAAFC0C)) 
    \Q[7]_i_8 
       (.I0(Q[5]),
        .I1(add_c1[4]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[4]),
        .I4(Jump),
        .I5(inst_field[18]),
        .O(\Q[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAFC0C5555FC0C)) 
    \Q[7]_i_9 
       (.I0(Q[4]),
        .I1(add_c1[3]),
        .I2(\Q_reg[3]_1 ),
        .I3(add_c0[3]),
        .I4(Jump),
        .I5(\Q[7]_i_10_n_0 ),
        .O(\Q[7]_i_9_n_0 ));
  FDCE \Q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[3]_i_1_n_7 ),
        .Q(Q[0]));
  FDCE \Q_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[11]_i_1_n_5 ),
        .Q(Q[10]));
  FDCE \Q_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[11]_i_1_n_4 ),
        .Q(Q[11]));
  CARRY4 \Q_reg[11]_i_1 
       (.CI(\Q_reg[7]_i_1_n_0 ),
        .CO({\Q_reg[11]_i_1_n_0 ,\Q_reg[11]_i_1_n_1 ,\Q_reg[11]_i_1_n_2 ,\Q_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[11]_i_2_n_0 ,\Q[11]_i_3_n_0 ,\Q[11]_i_4_n_0 ,\Q[11]_i_5_n_0 }),
        .O({\Q_reg[11]_i_1_n_4 ,\Q_reg[11]_i_1_n_5 ,\Q_reg[11]_i_1_n_6 ,\Q_reg[11]_i_1_n_7 }),
        .S({\Q[11]_i_6_n_0 ,\Q[11]_i_7_n_0 ,\Q[11]_i_8_n_0 ,\Q[11]_i_9_n_0 }));
  FDCE \Q_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[15]_i_1_n_7 ),
        .Q(Q[12]));
  FDCE \Q_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[15]_i_1_n_6 ),
        .Q(Q[13]));
  FDCE \Q_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[15]_i_1_n_5 ),
        .Q(Q[14]));
  FDCE \Q_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[15]_i_1_n_4 ),
        .Q(Q[15]));
  CARRY4 \Q_reg[15]_i_1 
       (.CI(\Q_reg[11]_i_1_n_0 ),
        .CO({\Q_reg[15]_i_1_n_0 ,\Q_reg[15]_i_1_n_1 ,\Q_reg[15]_i_1_n_2 ,\Q_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[15]_i_2_n_0 ,\Q[15]_i_3_n_0 ,\Q[15]_i_4_n_0 ,\Q[15]_i_5_n_0 }),
        .O({\Q_reg[15]_i_1_n_4 ,\Q_reg[15]_i_1_n_5 ,\Q_reg[15]_i_1_n_6 ,\Q_reg[15]_i_1_n_7 }),
        .S({\Q[15]_i_6_n_0 ,\Q[15]_i_7_n_0 ,\Q[15]_i_8_n_0 ,\Q[15]_i_9_n_0 }));
  FDCE \Q_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[19]_i_1_n_7 ),
        .Q(Q[16]));
  FDCE \Q_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[19]_i_1_n_6 ),
        .Q(Q[17]));
  FDCE \Q_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[19]_i_1_n_5 ),
        .Q(Q[18]));
  FDCE \Q_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[19]_i_1_n_4 ),
        .Q(Q[19]));
  CARRY4 \Q_reg[19]_i_1 
       (.CI(\Q_reg[15]_i_1_n_0 ),
        .CO({\Q_reg[19]_i_1_n_0 ,\Q_reg[19]_i_1_n_1 ,\Q_reg[19]_i_1_n_2 ,\Q_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[19]_i_2_n_0 ,\Q[19]_i_3_n_0 ,\Q[19]_i_4_n_0 ,\Q[19]_i_5_n_0 }),
        .O({\Q_reg[19]_i_1_n_4 ,\Q_reg[19]_i_1_n_5 ,\Q_reg[19]_i_1_n_6 ,\Q_reg[19]_i_1_n_7 }),
        .S({\Q[19]_i_6_n_0 ,\Q[19]_i_7_n_0 ,\Q[19]_i_8_n_0 ,\Q[19]_i_9_n_0 }));
  FDCE \Q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[3]_i_1_n_6 ),
        .Q(Q[1]));
  FDCE \Q_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[23]_i_1_n_7 ),
        .Q(Q[20]));
  FDCE \Q_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[23]_i_1_n_6 ),
        .Q(Q[21]));
  FDCE \Q_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[23]_i_1_n_5 ),
        .Q(Q[22]));
  FDCE \Q_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[23]_i_1_n_4 ),
        .Q(Q[23]));
  CARRY4 \Q_reg[23]_i_1 
       (.CI(\Q_reg[19]_i_1_n_0 ),
        .CO({\Q_reg[23]_i_1_n_0 ,\Q_reg[23]_i_1_n_1 ,\Q_reg[23]_i_1_n_2 ,\Q_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[23]_i_2_n_0 ,\Q[23]_i_3_n_0 ,\Q[23]_i_4_n_0 ,\Q[23]_i_5_n_0 }),
        .O({\Q_reg[23]_i_1_n_4 ,\Q_reg[23]_i_1_n_5 ,\Q_reg[23]_i_1_n_6 ,\Q_reg[23]_i_1_n_7 }),
        .S({\Q[23]_i_6_n_0 ,\Q[23]_i_7_n_0 ,\Q[23]_i_8_n_0 ,\Q[23]_i_9_n_0 }));
  FDCE \Q_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[27]_i_1_n_7 ),
        .Q(Q[24]));
  FDCE \Q_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[27]_i_1_n_6 ),
        .Q(Q[25]));
  FDCE \Q_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[27]_i_1_n_5 ),
        .Q(Q[26]));
  FDCE \Q_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[27]_i_1_n_4 ),
        .Q(Q[27]));
  CARRY4 \Q_reg[27]_i_1 
       (.CI(\Q_reg[23]_i_1_n_0 ),
        .CO({\Q_reg[27]_i_1_n_0 ,\Q_reg[27]_i_1_n_1 ,\Q_reg[27]_i_1_n_2 ,\Q_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[27]_i_2_n_0 ,\Q[27]_i_3_n_0 ,\Q[27]_i_4_n_0 ,\Q[27]_i_5_n_0 }),
        .O({\Q_reg[27]_i_1_n_4 ,\Q_reg[27]_i_1_n_5 ,\Q_reg[27]_i_1_n_6 ,\Q_reg[27]_i_1_n_7 }),
        .S({\Q[27]_i_6_n_0 ,\Q[27]_i_7_n_0 ,\Q[27]_i_8_n_0 ,\Q[27]_i_9_n_0 }));
  FDCE \Q_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[31]_i_1_n_7 ),
        .Q(Q[28]));
  FDCE \Q_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[31]_i_1_n_6 ),
        .Q(Q[29]));
  FDCE \Q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[3]_i_1_n_5 ),
        .Q(Q[2]));
  FDCE \Q_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[31]_i_1_n_5 ),
        .Q(Q[30]));
  FDCE \Q_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[31]_i_1_n_4 ),
        .Q(Q[31]));
  CARRY4 \Q_reg[31]_i_1 
       (.CI(\Q_reg[27]_i_1_n_0 ),
        .CO({\NLW_Q_reg[31]_i_1_CO_UNCONNECTED [3],\Q_reg[31]_i_1_n_1 ,\Q_reg[31]_i_1_n_2 ,\Q_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Q[31]_i_2_n_0 ,\Q[31]_i_3_n_0 ,\Q[31]_i_4_n_0 }),
        .O({\Q_reg[31]_i_1_n_4 ,\Q_reg[31]_i_1_n_5 ,\Q_reg[31]_i_1_n_6 ,\Q_reg[31]_i_1_n_7 }),
        .S({\Q[31]_i_5_n_0 ,\Q[31]_i_6_n_0 ,\Q[31]_i_7_n_0 ,\Q[31]_i_8_n_0 }));
  FDCE \Q_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[3]_i_1_n_4 ),
        .Q(Q[3]));
  CARRY4 \Q_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\Q_reg[3]_i_1_n_0 ,\Q_reg[3]_i_1_n_1 ,\Q_reg[3]_i_1_n_2 ,\Q_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[3]_i_2_n_0 ,\Q[3]_i_3_n_0 ,\Q[3]_i_4_n_0 ,\Q[3]_i_5_n_0 }),
        .O({\Q_reg[3]_i_1_n_4 ,\Q_reg[3]_i_1_n_5 ,\Q_reg[3]_i_1_n_6 ,\Q_reg[3]_i_1_n_7 }),
        .S({\Q[3]_i_6_n_0 ,\Q[3]_i_7_n_0 ,\Q[3]_i_8_n_0 ,\Q_reg[3]_0 }));
  FDCE \Q_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[7]_i_1_n_7 ),
        .Q(Q[4]));
  FDCE \Q_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[7]_i_1_n_6 ),
        .Q(Q[5]));
  FDCE \Q_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[7]_i_1_n_5 ),
        .Q(Q[6]));
  FDCE \Q_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[7]_i_1_n_4 ),
        .Q(Q[7]));
  CARRY4 \Q_reg[7]_i_1 
       (.CI(\Q_reg[3]_i_1_n_0 ),
        .CO({\Q_reg[7]_i_1_n_0 ,\Q_reg[7]_i_1_n_1 ,\Q_reg[7]_i_1_n_2 ,\Q_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Q[7]_i_2_n_0 ,\Q[7]_i_3_n_0 ,\Q[7]_i_4_n_0 ,\Q[7]_i_5_n_0 }),
        .O({\Q_reg[7]_i_1_n_4 ,\Q_reg[7]_i_1_n_5 ,\Q_reg[7]_i_1_n_6 ,\Q_reg[7]_i_1_n_7 }),
        .S({\Q[7]_i_6_n_0 ,\Q[7]_i_7_n_0 ,\Q[7]_i_8_n_0 ,\Q[7]_i_9_n_0 }));
  FDCE \Q_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[11]_i_1_n_7 ),
        .Q(Q[8]));
  FDCE \Q_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\Q_reg[11]_i_1_n_6 ),
        .Q(Q[9]));
  LUT1 #(
    .INIT(2'h1)) 
    add_c0_carry_i_1
       (.I0(Q[2]),
        .O(\Q_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    add_c1_carry__0_i_1
       (.I0(inst_field[20]),
        .I1(Q[7]),
        .O(\inst_field[27] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_c1_carry__0_i_2
       (.I0(inst_field[19]),
        .I1(Q[6]),
        .O(\inst_field[27] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_c1_carry__0_i_3
       (.I0(inst_field[18]),
        .I1(Q[5]),
        .O(\inst_field[27] [1]));
  LUT5 #(
    .INIT(32'h417DBE82)) 
    add_c1_carry__0_i_4
       (.I0(inst_field[17]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[4]),
        .I4(Q[4]),
        .O(\inst_field[27] [0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    add_c1_carry__1_i_1
       (.I0(inst_field[13]),
        .I1(ImmSel[0]),
        .I2(inst_field[0]),
        .I3(ImmSel[1]),
        .I4(inst_field[24]),
        .O(DI));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    add_c1_carry__1_i_2
       (.I0(inst_field[24]),
        .I1(ImmSel[1]),
        .I2(inst_field[0]),
        .I3(ImmSel[0]),
        .I4(inst_field[13]),
        .I5(Q[11]),
        .O(\inst_field[31]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_c1_carry__1_i_3
       (.I0(inst_field[23]),
        .I1(Q[10]),
        .O(\inst_field[31]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_c1_carry__1_i_4
       (.I0(inst_field[22]),
        .I1(Q[9]),
        .O(\inst_field[31]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_c1_carry__1_i_5
       (.I0(inst_field[21]),
        .I1(Q[8]),
        .O(\inst_field[31]_0 [0]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__2_i_1
       (.I0(inst_field[8]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[15]),
        .O(\inst_field[15] [3]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__2_i_2
       (.I0(inst_field[7]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[14]),
        .O(\inst_field[15] [2]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__2_i_3
       (.I0(inst_field[6]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[13]),
        .O(\inst_field[15] [1]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__2_i_4
       (.I0(inst_field[5]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[12]),
        .O(\inst_field[15] [0]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__3_i_1
       (.I0(inst_field[12]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[19]),
        .O(\inst_field[19] [3]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__3_i_2
       (.I0(inst_field[11]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[18]),
        .O(\inst_field[19] [2]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__3_i_3
       (.I0(inst_field[10]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[17]),
        .O(\inst_field[19] [1]));
  LUT5 #(
    .INIT(32'h407FBF80)) 
    add_c1_carry__3_i_4
       (.I0(inst_field[9]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[24]),
        .I4(Q[16]),
        .O(\inst_field[19] [0]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__4_i_2
       (.I0(Q[22]),
        .I1(Q[23]),
        .O(\Q_reg[22]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__4_i_3
       (.I0(Q[21]),
        .I1(Q[22]),
        .O(\Q_reg[22]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__4_i_4
       (.I0(Q[20]),
        .I1(Q[21]),
        .O(\Q_reg[22]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_c1_carry__4_i_5
       (.I0(Q[20]),
        .I1(inst_field[24]),
        .O(\Q_reg[22]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__5_i_1
       (.I0(Q[26]),
        .I1(Q[27]),
        .O(\Q_reg[26]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__5_i_2
       (.I0(Q[25]),
        .I1(Q[26]),
        .O(\Q_reg[26]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__5_i_3
       (.I0(Q[24]),
        .I1(Q[25]),
        .O(\Q_reg[26]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__5_i_4
       (.I0(Q[23]),
        .I1(Q[24]),
        .O(\Q_reg[26]_0 [0]));
  LUT5 #(
    .INIT(32'hFD0202FD)) 
    add_c1_carry__6_i_1
       (.I0(inst_field[24]),
        .I1(ImmSel[0]),
        .I2(ImmSel[1]),
        .I3(Q[31]),
        .I4(Q[30]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__6_i_2
       (.I0(Q[29]),
        .I1(Q[30]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__6_i_3
       (.I0(Q[28]),
        .I1(Q[29]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    add_c1_carry__6_i_4
       (.I0(Q[27]),
        .I1(Q[28]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h417DBE82)) 
    add_c1_carry_i_1
       (.I0(inst_field[16]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[3]),
        .I4(Q[3]),
        .O(\inst_field[23] [3]));
  LUT5 #(
    .INIT(32'h417DBE82)) 
    add_c1_carry_i_2
       (.I0(inst_field[15]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[2]),
        .I4(Q[2]),
        .O(\inst_field[23] [2]));
  LUT5 #(
    .INIT(32'h417DBE82)) 
    add_c1_carry_i_3
       (.I0(inst_field[14]),
        .I1(ImmSel[1]),
        .I2(ImmSel[0]),
        .I3(inst_field[1]),
        .I4(Q[1]),
        .O(\inst_field[23] [1]));
  LUT5 #(
    .INIT(32'hFF4700B8)) 
    add_c1_carry_i_4
       (.I0(inst_field[0]),
        .I1(ImmSel[0]),
        .I2(inst_field[13]),
        .I3(ImmSel[1]),
        .I4(Q[0]),
        .O(\inst_field[23] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    res2_carry__2_i_1
       (.I0(ALUSrc_B),
        .I1(inst_field[24]),
        .O(ALUSrc_B_2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    res2_carry__2_i_2
       (.I0(ALUSrc_B),
        .I1(inst_field[24]),
        .O(ALUSrc_B_2[2]));
  LUT2 #(
    .INIT(4'h8)) 
    res2_carry__2_i_3
       (.I0(ALUSrc_B),
        .I1(inst_field[24]),
        .O(ALUSrc_B_2[1]));
  LUT2 #(
    .INIT(4'h8)) 
    res2_carry__2_i_4
       (.I0(ALUSrc_B),
        .I1(inst_field[24]),
        .O(ALUSrc_B_2[0]));
  LUT2 #(
    .INIT(4'h7)) 
    res2_carry__2_i_5
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .O(\inst_field[31] [3]));
  LUT2 #(
    .INIT(4'h7)) 
    res2_carry__2_i_6
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .O(\inst_field[31] [2]));
  LUT2 #(
    .INIT(4'h7)) 
    res2_carry__2_i_7
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .O(\inst_field[31] [1]));
  LUT2 #(
    .INIT(4'h7)) 
    res2_carry__2_i_8
       (.I0(inst_field[24]),
        .I1(ALUSrc_B),
        .O(\inst_field[31] [0]));
endmodule
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
