vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../Lab5_23.gen/sources_1/ip/VGA_0/VgaController.v" \
"../../../../Lab5_23.gen/sources_1/ip/VGA_0/VgaDebugger.v" \
"../../../../Lab5_23.gen/sources_1/ip/VGA_0/VgaDisplay.v" \
"../../../../Lab5_23.gen/sources_1/ip/VGA_0/VGA.v" \
"../../../../Lab5_23.gen/sources_1/ip/VGA_0/sim/VGA_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

