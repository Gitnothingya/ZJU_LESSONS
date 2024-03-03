vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../ALU.gen/sources_1/ip/and32_0/and32.v" \
"../../../../ALU.gen/sources_1/ip/and32_0/sim/and32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

