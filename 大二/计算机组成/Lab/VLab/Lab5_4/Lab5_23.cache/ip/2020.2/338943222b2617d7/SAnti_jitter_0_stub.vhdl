-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  1 15:46:19 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SAnti_jitter_0_stub.vhdl
-- Design      : SAnti_jitter_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CR : out STD_LOGIC;
    Key_ready : out STD_LOGIC;
    RSTN : in STD_LOGIC;
    clk : in STD_LOGIC;
    readn : in STD_LOGIC;
    rst : out STD_LOGIC;
    BTN_OK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Key_out : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Key_x : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Key_y : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    SW_OK : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pulse_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CR,Key_ready,RSTN,clk,readn,rst,BTN_OK[3:0],Key_out[4:0],Key_x[4:0],Key_y[3:0],SW[15:0],SW_OK[15:0],pulse_out[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SAnti_jitter,Vivado 2020.2";
begin
end;
