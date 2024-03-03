-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May  3 18:09:05 2022
-- Host        : DESKTOP-715IQOV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub d:/Vteacher/Lab4_12T/Lab2.gen/sources_1/ip/VGA_0/VGA_0_stub.vhdl
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
    pc : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inst : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_res : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_wen : in STD_LOGIC;
    dmem_o_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_i_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dmem_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rs1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs1_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rs2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rs2_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rd : in STD_LOGIC_VECTOR ( 4 downto 0 );
    reg_i_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    reg_wen : in STD_LOGIC;
    is_imm : in STD_LOGIC;
    is_auipc : in STD_LOGIC;
    is_lui : in STD_LOGIC;
    imm : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    b_val : in STD_LOGIC_VECTOR ( 31 downto 0 );
    alu_ctrl : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cmp_ctrl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    cmp_res : in STD_LOGIC;
    is_branch : in STD_LOGIC;
    is_jal : in STD_LOGIC;
    is_jalr : in STD_LOGIC;
    do_branch : in STD_LOGIC;
    pc_branch : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mem_ren : in STD_LOGIC;
    csr_wen : in STD_LOGIC;
    csr_ind : in STD_LOGIC_VECTOR ( 11 downto 0 );
    csr_ctrl : in STD_LOGIC_VECTOR ( 1 downto 0 );
    csr_r_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
    mstatus_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mcause_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mepc_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mtval_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mtvec_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mie_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mip_o : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
attribute black_box_pad_pin of stub : architecture is "clk_25m,clk_100m,rst,pc[31:0],inst[31:0],alu_res[31:0],mem_wen,dmem_o_data[31:0],dmem_i_data[31:0],dmem_addr[31:0],rs1[4:0],rs1_val[31:0],rs2[4:0],rs2_val[31:0],rd[4:0],reg_i_data[31:0],reg_wen,is_imm,is_auipc,is_lui,imm[31:0],a_val[31:0],b_val[31:0],alu_ctrl[3:0],cmp_ctrl[2:0],cmp_res,is_branch,is_jal,is_jalr,do_branch,pc_branch[31:0],mem_ren,csr_wen,csr_ind[11:0],csr_ctrl[1:0],csr_r_data[31:0],x0[31:0],ra[31:0],sp[31:0],gp[31:0],tp[31:0],t0[31:0],t1[31:0],t2[31:0],s0[31:0],s1[31:0],a0[31:0],a1[31:0],a2[31:0],a3[31:0],a4[31:0],a5[31:0],a6[31:0],a7[31:0],s2[31:0],s3[31:0],s4[31:0],s5[31:0],s6[31:0],s7[31:0],s8[31:0],s9[31:0],s10[31:0],s11[31:0],t3[31:0],t4[31:0],t5[31:0],t6[31:0],mstatus_o[31:0],mcause_o[31:0],mepc_o[31:0],mtval_o[31:0],mtvec_o[31:0],mie_o[31:0],mip_o[31:0],hs,vs,vga_r[3:0],vga_g[3:0],vga_b[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VGA,Vivado 2020.2";
begin
end;
