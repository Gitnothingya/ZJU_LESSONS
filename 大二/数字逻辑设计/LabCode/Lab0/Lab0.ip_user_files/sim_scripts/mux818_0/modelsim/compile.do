vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../Lab0.gen/sources_1/ip/mux818_0/mux818.v" \
"../../../../Lab0.gen/sources_1/ip/mux818_0/sim/mux818_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

