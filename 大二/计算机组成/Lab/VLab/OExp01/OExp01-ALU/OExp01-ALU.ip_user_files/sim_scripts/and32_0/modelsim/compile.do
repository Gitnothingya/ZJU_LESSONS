vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../OExp01-ALU.srcs/sources_1/ip/and32_0/and32.v" \
"../../../../OExp01-ALU.srcs/sources_1/ip/and32_0/sim/and32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

