vlib work
vlib activehdl

vlib activehdl/xpm
vlib activehdl/xil_defaultlib

vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab2.gen/sources_1/ip/SCPU2_0/src/DataPath.v" \
"../../../../Lab2.gen/sources_1/ip/SCPU2_0/src/SCPU_ctrl.v" \
"../../../../Lab2.gen/sources_1/ip/SCPU2_0/new/SCPU2.v" \
"../../../../Lab2.gen/sources_1/ip/SCPU2_0/sim/SCPU2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

