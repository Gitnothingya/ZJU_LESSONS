-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 12:43:58 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ MIO_BUS_0_stub.vhdl
-- Design      : MIO_BUS_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    GPIOe0000000_we : out STD_LOGIC;
    GPIOf0000000_we : out STD_LOGIC;
    clk : in STD_LOGIC;
    counter0_out : in STD_LOGIC;
    counter1_out : in STD_LOGIC;
    counter2_out : in STD_LOGIC;
    counter_we : out STD_LOGIC;
    data_ram_we : out STD_LOGIC;
    mem_w : in STD_LOGIC;
    rst : in STD_LOGIC;
    BTN : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Cpu_data2bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Cpu_data4bus : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Peripheral_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 15 downto 0 );
    addr_bus : in STD_LOGIC_VECTOR ( 31 downto 0 );
    counter_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    led_out : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ram_addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_data_in : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_data_out : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "GPIOe0000000_we,GPIOf0000000_we,clk,counter0_out,counter1_out,counter2_out,counter_we,data_ram_we,mem_w,rst,BTN[3:0],Cpu_data2bus[31:0],Cpu_data4bus[31:0],Peripheral_in[31:0],SW[15:0],addr_bus[31:0],counter_out[31:0],led_out[15:0],ram_addr[9:0],ram_data_in[31:0],ram_data_out[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MIO_BUS,Vivado 2020.2";
begin
end;
