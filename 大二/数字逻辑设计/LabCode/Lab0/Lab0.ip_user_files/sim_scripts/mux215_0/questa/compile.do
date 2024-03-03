vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../Lab0.gen/sources_1/ip/mux215_0/sources_1/new/mux215.v" \
"../../../../Lab0.gen/sources_1/ip/mux215_0/sim/mux215_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

