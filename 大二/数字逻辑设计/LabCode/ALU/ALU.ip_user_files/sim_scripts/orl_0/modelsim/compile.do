vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../ALU.gen/sources_1/ip/orl_0/orl.v" \
"../../../../ALU.gen/sources_1/ip/orl_0/sim/orl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

