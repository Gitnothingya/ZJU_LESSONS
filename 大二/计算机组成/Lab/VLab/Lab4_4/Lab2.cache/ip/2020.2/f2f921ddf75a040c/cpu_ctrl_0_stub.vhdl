-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  3 22:26:03 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_ctrl_0_stub.vhdl
-- Design      : cpu_ctrl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    OPcode : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Fun3 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Fun7 : in STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    ImmSel : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ALUSrc_B : out STD_LOGIC;
    MemtoReg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Jump : out STD_LOGIC;
    Branch : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    MemRW : out STD_LOGIC;
    ALU_Control : out STD_LOGIC_VECTOR ( 2 downto 0 );
    CPU_MIO : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "OPcode[4:0],Fun3[2:0],Fun7,MIO_ready,ImmSel[1:0],ALUSrc_B,MemtoReg[1:0],Jump,Branch,RegWrite,MemRW,ALU_Control[2:0],CPU_MIO";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cpu_ctrl,Vivado 2020.2";
begin
end;
