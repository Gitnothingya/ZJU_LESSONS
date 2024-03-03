vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../ALU.gen/sources_1/ip/mux8132_0/mux8132.v" \
"../../../../ALU.gen/sources_1/ip/mux8132_0/sim/mux8132_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

