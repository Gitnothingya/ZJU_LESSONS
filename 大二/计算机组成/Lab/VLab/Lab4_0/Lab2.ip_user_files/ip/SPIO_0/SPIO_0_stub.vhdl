-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:44:44 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/SPIO_0/SPIO_0_stub.vhdl
-- Design      : SPIO_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SPIO_0 is
  Port ( 
    EN : in STD_LOGIC;
    LED_PEN : out STD_LOGIC;
    Start : in STD_LOGIC;
    clk : in STD_LOGIC;
    led_clk : out STD_LOGIC;
    led_clrn : out STD_LOGIC;
    led_sout : out STD_LOGIC;
    rst : in STD_LOGIC;
    GPIOf0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    LED_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    P_Data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_set : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end SPIO_0;

architecture stub of SPIO_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "EN,LED_PEN,Start,clk,led_clk,led_clrn,led_sout,rst,GPIOf0[13:0],LED_out[15:0],P_Data[31:0],counter_set[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SPIO,Vivado 2020.2";
begin
end;
