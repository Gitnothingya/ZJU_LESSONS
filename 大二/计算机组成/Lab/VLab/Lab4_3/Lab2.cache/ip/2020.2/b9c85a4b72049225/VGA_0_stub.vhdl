-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Thu Mar 24 17:08:03 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ VGA_0_stub.vhdl
-- Design      : VGA_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk_25m : in STD_LOGIC;
    clk_100m : in STD_LOGIC;
    rst : in STD_LOGIC;
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_res : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_wen : in STD_LOGIC;
    dmem_o_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_i_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hs : out STD_LOGIC;
    vs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_25m,clk_100m,rst,pc[31:0],inst[31:0],alu_res[31:0],mem_wen,dmem_o_data[31:0],dmem_i_data[31:0],dmem_addr[31:0],hs,vs,vga_r[3:0],vga_g[3:0],vga_b[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VGA,Vivado 2020.2";
begin
end;
