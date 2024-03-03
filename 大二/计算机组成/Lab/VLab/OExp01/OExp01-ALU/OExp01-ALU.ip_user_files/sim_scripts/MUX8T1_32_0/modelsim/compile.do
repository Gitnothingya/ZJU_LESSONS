vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../OExp01-ALU.srcs/sources_1/ip/MUX8T1_32_0/MUX8T1_32.v" \
"../../../../OExp01-ALU.srcs/sources_1/ip/MUX8T1_32_0/sim/MUX8T1_32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

