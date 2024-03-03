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
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT VGA_0
  PORT (
    clk_25m : IN STD_LOGIC;
    clk_100m : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    pc : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    inst : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    alu_res : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mem_wen : IN STD_LOGIC;
    dmem_o_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dmem_i_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    dmem_addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rs1 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    rs1_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rs2 : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    rs2_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rd : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    reg_i_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    reg_wen : IN STD_LOGIC;
    is_imm : IN STD_LOGIC;
    is_auipc : IN STD_LOGIC;
    is_lui : IN STD_LOGIC;
    imm : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    a_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    b_val : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    alu_ctrl : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    cmp_ctrl : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    cmp_res : IN STD_LOGIC;
    is_branch : IN STD_LOGIC;
    is_jal : IN STD_LOGIC;
    is_jalr : IN STD_LOGIC;
    do_branch : IN STD_LOGIC;
    pc_branch : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mem_ren : IN STD_LOGIC;
    csr_wen : IN STD_LOGIC;
    csr_ind : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    csr_ctrl : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    csr_r_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
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
    mstatus_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mcause_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mepc_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mtval_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mtvec_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mie_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    mip_o : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
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
    pc => pc,
    inst => inst,
    alu_res => alu_res,
    mem_wen => mem_wen,
    dmem_o_data => dmem_o_data,
    dmem_i_data => dmem_i_data,
    dmem_addr => dmem_addr,
    rs1 => rs1,
    rs1_val => rs1_val,
    rs2 => rs2,
    rs2_val => rs2_val,
    rd => rd,
    reg_i_data => reg_i_data,
    reg_wen => reg_wen,
    is_imm => is_imm,
    is_auipc => is_auipc,
    is_lui => is_lui,
    imm => imm,
    a_val => a_val,
    b_val => b_val,
    alu_ctrl => alu_ctrl,
    cmp_ctrl => cmp_ctrl,
    cmp_res => cmp_res,
    is_branch => is_branch,
    is_jal => is_jal,
    is_jalr => is_jalr,
    do_branch => do_branch,
    pc_branch => pc_branch,
    mem_ren => mem_ren,
    csr_wen => csr_wen,
    csr_ind => csr_ind,
    csr_ctrl => csr_ctrl,
    csr_r_data => csr_r_data,
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
    mstatus_o => mstatus_o,
    mcause_o => mcause_o,
    mepc_o => mepc_o,
    mtval_o => mtval_o,
    mtvec_o => mtvec_o,
    mie_o => mie_o,
    mip_o => mip_o,
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

