-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Mar 15 11:35:28 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub d:/Vfile/Lab0/Lab0.gen/sources_1/ip/mux415_0/mux415_0_stub.vhdl
-- Design      : mux415_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux415_0 is
  Port ( 
    I0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s : in STD_LOGIC_VECTOR ( 1 downto 0 );
    o : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );

end mux415_0;

architecture stub of mux415_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "I0[4:0],I1[4:0],I2[4:0],I3[4:0],s[1:0],o[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mux415,Vivado 2020.2";
begin
end;
