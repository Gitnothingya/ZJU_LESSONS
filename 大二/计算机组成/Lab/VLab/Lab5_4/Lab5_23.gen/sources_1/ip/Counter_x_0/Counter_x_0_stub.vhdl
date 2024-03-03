-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  1 15:45:21 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/Counter_x_0/Counter_x_0_stub.vhdl
-- Design      : Counter_x_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter_x_0 is
  Port ( 
    clk : in STD_LOGIC;
    clk0 : in STD_LOGIC;
    clk1 : in STD_LOGIC;
    clk2 : in STD_LOGIC;
    counter0_OUT : out STD_LOGIC;
    counter1_OUT : out STD_LOGIC;
    counter2_OUT : out STD_LOGIC;
    counter_we : in STD_LOGIC;
    rst : in STD_LOGIC;
    counter_ch : in STD_LOGIC_VECTOR ( 1 downto 0 );
    counter_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_val : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Counter_x_0;

architecture stub of Counter_x_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,clk0,clk1,clk2,counter0_OUT,counter1_OUT,counter2_OUT,counter_we,rst,counter_ch[1:0],counter_out[31:0],counter_val[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Counter_x,Vivado 2020.2";
begin
end;
