vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../ALU.gen/sources_1/ip/xor32_0/xor32.v" \
"../../../../ALU.gen/sources_1/ip/xor32_0/sim/xor32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

