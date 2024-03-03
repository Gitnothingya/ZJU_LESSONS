vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab0.gen/sources_1/ip/mux415_0/sources_1/new/mux415.v" \
"../../../../Lab0.gen/sources_1/ip/mux415_0/sim/mux415_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

