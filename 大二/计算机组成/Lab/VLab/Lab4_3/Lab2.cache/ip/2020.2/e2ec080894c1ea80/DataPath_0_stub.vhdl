-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  3 12:22:27 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ DataPath_0_stub.vhdl
-- Design      : DataPath_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Branch : in STD_LOGIC;
    Jump : in STD_LOGIC;
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemtoReg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUSrc_B : in STD_LOGIC;
    ImmSel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inst_field : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALU_operation : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    ALU_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    x31 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Branch,Jump,Data_in[31:0],MemtoReg[1:0],ALUSrc_B,ImmSel[1:0],inst_field[31:0],ALU_operation[2:0],clk,rst,RegWrite,ALU_out[31:0],Data_out[31:0],PC_out[31:0],x0[31:0],x1[31:0],x2[31:0],x3[31:0],x4[31:0],x5[31:0],x6[31:0],x7[31:0],x8[31:0],x9[31:0],x10[31:0],x11[31:0],x12[31:0],x13[31:0],x14[31:0],x15[31:0],x16[31:0],x17[31:0],x18[31:0],x19[31:0],x20[31:0],x21[31:0],x22[31:0],x23[31:0],x24[31:0],x25[31:0],x26[31:0],x27[31:0],x28[31:0],x29[31:0],x30[31:0],x31[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DataPath,Vivado 2020.2";
begin
end;
