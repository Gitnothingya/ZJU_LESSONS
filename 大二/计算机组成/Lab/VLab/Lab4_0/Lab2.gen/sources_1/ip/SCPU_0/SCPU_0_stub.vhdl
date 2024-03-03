-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:41:56 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/SCPU_0/SCPU_0_stub.vhdl
-- Design      : SCPU_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SCPU_0 is
  Port ( 
    CPU_MIO : out STD_LOGIC;
    MIO_ready : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end SCPU_0;

architecture stub of SCPU_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CPU_MIO,MIO_ready,MemRW,clk,rst,Addr_out[31:0],Data_in[31:0],Data_out[31:0],PC_out[31:0],inst_in[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SCPU,Vivado 2020.2";
begin
end;
