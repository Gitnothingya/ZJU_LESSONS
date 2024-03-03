-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Jun  1 15:47:31 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/VGA_0/VGA_0_stub.vhdl
-- Design      : VGA_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k160tffg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VGA_0 is
  Port ( 
    clk_25m : in STD_LOGIC;
    clk_100m : in STD_LOGIC;
    rst : in STD_LOGIC;
    PC_IF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_IF : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_ID : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst_ID : in STD_LOGIC_VECTOR ( 31 downto 0 );
    PC_Ex : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MemRW_Ex : in STD_LOGIC;
    MemRW_Mem : in STD_LOGIC;
    Data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Addr_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data_out_WB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IfId_valid : in STD_LOGIC;
    IdEx_inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IdEx_valid : in STD_LOGIC;
    IdEx_rd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IdEx_rs1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IdEx_rs2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    IdEx_rs1_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IdEx_rs2_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IdEx_reg_wen : in STD_LOGIC;
    IdEx_is_imm : in STD_LOGIC;
    IdEx_imm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IdEx_mem_ren : in STD_LOGIC;
    IdEx_is_branch : in STD_LOGIC;
    IdEx_is_jal : in STD_LOGIC;
    IdEx_is_jalr : in STD_LOGIC;
    IdEx_is_auipc : in STD_LOGIC;
    IdEx_is_lui : in STD_LOGIC;
    IdEx_alu_ctrl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IdEx_cmp_ctrl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ExMa_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ExMa_inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ExMa_valid : in STD_LOGIC;
    ExMa_rd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ExMa_reg_wen : in STD_LOGIC;
    ExMa_mem_ren : in STD_LOGIC;
    ExMa_is_jal : in STD_LOGIC;
    ExMa_is_jalr : in STD_LOGIC;
    MaWb_pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MaWb_inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    MaWb_valid : in STD_LOGIC;
    MaWb_rd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    MaWb_reg_wen : in STD_LOGIC;
    x0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    tp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    hs : out STD_LOGIC;
    vs : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end VGA_0;

architecture stub of VGA_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_25m,clk_100m,rst,PC_IF[31:0],inst_IF[31:0],PC_ID[31:0],inst_ID[31:0],PC_Ex[31:0],MemRW_Ex,MemRW_Mem,Data_out[31:0],Addr_out[31:0],Data_out_WB[31:0],IfId_valid,IdEx_inst[31:0],IdEx_valid,IdEx_rd[4:0],IdEx_rs1[4:0],IdEx_rs2[4:0],IdEx_rs1_val[31:0],IdEx_rs2_val[31:0],IdEx_reg_wen,IdEx_is_imm,IdEx_imm[31:0],IdEx_mem_ren,IdEx_is_branch,IdEx_is_jal,IdEx_is_jalr,IdEx_is_auipc,IdEx_is_lui,IdEx_alu_ctrl[3:0],IdEx_cmp_ctrl[2:0],ExMa_pc[31:0],ExMa_inst[31:0],ExMa_valid,ExMa_rd[4:0],ExMa_reg_wen,ExMa_mem_ren,ExMa_is_jal,ExMa_is_jalr,MaWb_pc[31:0],MaWb_inst[31:0],MaWb_valid,MaWb_rd[4:0],MaWb_reg_wen,x0[31:0],ra[31:0],sp[31:0],gp[31:0],tp[31:0],t0[31:0],t1[31:0],t2[31:0],s0[31:0],s1[31:0],a0[31:0],a1[31:0],a2[31:0],a3[31:0],a4[31:0],a5[31:0],a6[31:0],a7[31:0],s2[31:0],s3[31:0],s4[31:0],s5[31:0],s6[31:0],s7[31:0],s8[31:0],s9[31:0],s10[31:0],s11[31:0],t3[31:0],t4[31:0],t5[31:0],t6[31:0],hs,vs,vga_r[3:0],vga_g[3:0],vga_b[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VGA,Vivado 2020.2";
begin
end;
