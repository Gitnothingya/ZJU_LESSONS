-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Mar 30 21:11:57 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub d:/Vfile/ALU/ALU.gen/sources_1/ip/orl_0/orl_0_stub.vhdl
-- Design      : orl_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity orl_0 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S : out STD_LOGIC
  );

end orl_0;

architecture stub of orl_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[31:0],S";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "orl,Vivado 2020.2";
begin
end;
