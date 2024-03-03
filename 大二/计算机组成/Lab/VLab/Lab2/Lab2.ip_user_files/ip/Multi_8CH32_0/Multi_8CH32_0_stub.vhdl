-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:44:12 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/Multi_8CH32_0/Multi_8CH32_0_stub.vhdl
-- Design      : Multi_8CH32_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multi_8CH32_0 is
  Port ( 
    EN : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Data0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Disp_num : out STD_LOGIC_VECTOR ( 31 downto 0 );
    LES : in STD_LOGIC_VECTOR ( 63 downto 0 );
    LE_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Test : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    point_in : in STD_LOGIC_VECTOR ( 63 downto 0 );
    point_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Multi_8CH32_0;

architecture stub of Multi_8CH32_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "EN,clk,rst,Data0[31:0],Disp_num[31:0],LES[63:0],LE_out[7:0],Test[2:0],data1[31:0],data2[31:0],data3[31:0],data4[31:0],data5[31:0],data6[31:0],data7[31:0],point_in[63:0],point_out[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Multi_8CH32,Vivado 2020.2";
begin
end;
