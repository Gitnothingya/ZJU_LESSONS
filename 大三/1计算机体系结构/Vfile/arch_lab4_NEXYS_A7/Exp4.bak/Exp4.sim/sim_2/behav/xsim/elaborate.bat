@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Nov 30 23:46:21 +0800 2022
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto 6b382772ef754ad2ae155e9aebccdccf --incr --debug typical --relax --mt 8 -L xil_defaultlib -L dist_mem_gen_v8_0_12 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot core_sim_behav xil_defaultlib.core_sim xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto 6b382772ef754ad2ae155e9aebccdccf --incr --debug typical --relax --mt 8 -L xil_defaultlib -L dist_mem_gen_v8_0_12 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot core_sim_behav xil_defaultlib.core_sim xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
