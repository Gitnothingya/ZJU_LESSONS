-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  3 09:46:30 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SCPU2_0_stub.vhdl
-- Design      : SCPU2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    inst_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst : in STD_LOGIC;
    Data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MIO_ready : in STD_LOGIC;
    MemRW : out STD_LOGIC;
    PC_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    CPU_MIO : out STD_LOGIC;
    Data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,inst_in[31:0],rst,Data_in[31:0],MIO_ready,MemRW,PC_out[31:0],Addr_out[31:0],CPU_MIO,Data_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SCPU2,Vivado 2020.2";
begin
end;
