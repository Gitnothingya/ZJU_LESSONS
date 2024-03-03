vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../ALU.gen/sources_1/ip/orl_0/orl.v" \
"../../../../ALU.gen/sources_1/ip/orl_0/sim/orl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

