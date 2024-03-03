-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  1 15:46:55 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SSeg7_Dev_0_stub.vhdl
-- Design      : SSeg7_Dev_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    flash : in STD_LOGIC;
    Hexs : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 7 downto 0 );
    point : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    Start : in STD_LOGIC;
    SW0 : in STD_LOGIC;
    seg_clk : out STD_LOGIC;
    seg_clrn : out STD_LOGIC;
    SEG_PEN : out STD_LOGIC;
    seg_sout : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,flash,Hexs[31:0],LES[7:0],point[7:0],rst,Start,SW0,seg_clk,seg_clrn,SEG_PEN,seg_sout";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SSeg7_Dev,Vivado 2020.2";
begin
end;
