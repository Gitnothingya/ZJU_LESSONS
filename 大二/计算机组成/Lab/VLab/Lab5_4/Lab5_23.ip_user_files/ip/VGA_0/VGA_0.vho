-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:VGA:1.0
-- IP Revision: 3

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT VGA_0
  PORT (
    clk_25m : IN STD_LOGIC;
    clk_100m : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    PC_IF : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inst_IF : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC_ID : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inst_ID : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    PC_Ex : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MemRW_Ex : IN STD_LOGIC;
    MemRW_Mem : IN STD_LOGIC;
    Data_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Addr_out : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    Data_out_WB : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IfId_valid : IN STD_LOGIC;
    IdEx_inst : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IdEx_valid : IN STD_LOGIC;
    IdEx_rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IdEx_rs1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IdEx_rs2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    IdEx_rs1_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IdEx_rs2_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IdEx_reg_wen : IN STD_LOGIC;
    IdEx_is_imm : IN STD_LOGIC;
    IdEx_imm : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    IdEx_mem_ren : IN STD_LOGIC;
    IdEx_is_branch : IN STD_LOGIC;
    IdEx_is_jal : IN STD_LOGIC;
    IdEx_is_jalr : IN STD_LOGIC;
    IdEx_is_auipc : IN STD_LOGIC;
    IdEx_is_lui : IN STD_LOGIC;
    IdEx_alu_ctrl : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    IdEx_cmp_ctrl : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    ExMa_pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ExMa_inst : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ExMa_valid : IN STD_LOGIC;
    ExMa_rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    ExMa_reg_wen : IN STD_LOGIC;
    ExMa_mem_ren : IN STD_LOGIC;
    ExMa_is_jal : IN STD_LOGIC;
    ExMa_is_jalr : IN STD_LOGIC;
    MaWb_pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MaWb_inst : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    MaWb_valid : IN STD_LOGIC;
    MaWb_rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    MaWb_reg_wen : IN STD_LOGIC;
    x0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    ra : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    sp : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    gp : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    tp : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    t0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    t1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    t2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a0 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s11 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    t3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    t4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    t5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    t6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    hs : OUT STD_LOGIC;
    vs : OUT STD_LOGIC;
    vga_r : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    vga_g : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    vga_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : VGA_0
  PORT MAP (
    clk_25m => clk_25m,
    clk_100m => clk_100m,
    rst => rst,
    PC_IF => PC_IF,
    inst_IF => inst_IF,
    PC_ID => PC_ID,
    inst_ID => inst_ID,
    PC_Ex => PC_Ex,
    MemRW_Ex => MemRW_Ex,
    MemRW_Mem => MemRW_Mem,
    Data_out => Data_out,
    Addr_out => Addr_out,
    Data_out_WB => Data_out_WB,
    IfId_valid => IfId_valid,
    IdEx_inst => IdEx_inst,
    IdEx_valid => IdEx_valid,
    IdEx_rd => IdEx_rd,
    IdEx_rs1 => IdEx_rs1,
    IdEx_rs2 => IdEx_rs2,
    IdEx_rs1_val => IdEx_rs1_val,
    IdEx_rs2_val => IdEx_rs2_val,
    IdEx_reg_wen => IdEx_reg_wen,
    IdEx_is_imm => IdEx_is_imm,
    IdEx_imm => IdEx_imm,
    IdEx_mem_ren => IdEx_mem_ren,
    IdEx_is_branch => IdEx_is_branch,
    IdEx_is_jal => IdEx_is_jal,
    IdEx_is_jalr => IdEx_is_jalr,
    IdEx_is_auipc => IdEx_is_auipc,
    IdEx_is_lui => IdEx_is_lui,
    IdEx_alu_ctrl => IdEx_alu_ctrl,
    IdEx_cmp_ctrl => IdEx_cmp_ctrl,
    ExMa_pc => ExMa_pc,
    ExMa_inst => ExMa_inst,
    ExMa_valid => ExMa_valid,
    ExMa_rd => ExMa_rd,
    ExMa_reg_wen => ExMa_reg_wen,
    ExMa_mem_ren => ExMa_mem_ren,
    ExMa_is_jal => ExMa_is_jal,
    ExMa_is_jalr => ExMa_is_jalr,
    MaWb_pc => MaWb_pc,
    MaWb_inst => MaWb_inst,
    MaWb_valid => MaWb_valid,
    MaWb_rd => MaWb_rd,
    MaWb_reg_wen => MaWb_reg_wen,
    x0 => x0,
    ra => ra,
    sp => sp,
    gp => gp,
    tp => tp,
    t0 => t0,
    t1 => t1,
    t2 => t2,
    s0 => s0,
    s1 => s1,
    a0 => a0,
    a1 => a1,
    a2 => a2,
    a3 => a3,
    a4 => a4,
    a5 => a5,
    a6 => a6,
    a7 => a7,
    s2 => s2,
    s3 => s3,
    s4 => s4,
    s5 => s5,
    s6 => s6,
    s7 => s7,
    s8 => s8,
    s9 => s9,
    s10 => s10,
    s11 => s11,
    t3 => t3,
    t4 => t4,
    t5 => t5,
    t6 => t6,
    hs => hs,
    vs => vs,
    vga_r => vga_r,
    vga_g => vga_g,
    vga_b => vga_b
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file VGA_0.vhd when simulating
-- the core, VGA_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

