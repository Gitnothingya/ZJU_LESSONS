-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  1 15:45:00 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/clk_div_0/clk_div_0_stub.vhdl
-- Design      : clk_div_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_div_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    SW2 : in STD_LOGIC;
    SW8 : in STD_LOGIC;
    STEP : in STD_LOGIC;
    clkdiv : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Clk_CPU : out STD_LOGIC
  );

end clk_div_0;

architecture stub of clk_div_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,SW2,SW8,STEP,clkdiv[31:0],Clk_CPU";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clk_div,Vivado 2020.2";
begin
end;
