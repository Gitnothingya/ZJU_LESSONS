vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../../Lab2.gen/sources_1/ip/VGA_0/Hex2Ascii.v" \
"../../../../Lab2.gen/sources_1/ip/VGA_0/VgaController.v" \
"../../../../Lab2.gen/sources_1/ip/VGA_0/VgaDebugger.v" \
"../../../../Lab2.gen/sources_1/ip/VGA_0/VgaDisplay.v" \
"../../../../Lab2.gen/sources_1/ip/VGA_0/VGA.v" \
"../../../../Lab2.gen/sources_1/ip/VGA_0/sim/VGA_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

