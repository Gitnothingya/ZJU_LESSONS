-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 10 18:07:55 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vteacher/OExp00/OExp00-Element/OExp00-Element.srcs/sources_1/bd/OExp00_Element/ip/OExp00_Element_MUX2T1_8_0_0/OExp00_Element_MUX2T1_8_0_0_stub.vhdl
-- Design      : OExp00_Element_MUX2T1_8_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity OExp00_Element_MUX2T1_8_0_0 is
  Port ( 
    s : in STD_LOGIC;
    I0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end OExp00_Element_MUX2T1_8_0_0;

architecture stub of OExp00_Element_MUX2T1_8_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s,I0[7:0],I1[7:0],o[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MUX2T1_8,Vivado 2017.4";
begin
end;
