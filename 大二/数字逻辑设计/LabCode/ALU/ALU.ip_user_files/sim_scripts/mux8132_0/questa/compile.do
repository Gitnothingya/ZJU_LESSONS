vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../ALU.gen/sources_1/ip/mux8132_0/mux8132.v" \
"../../../../ALU.gen/sources_1/ip/mux8132_0/sim/mux8132_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

