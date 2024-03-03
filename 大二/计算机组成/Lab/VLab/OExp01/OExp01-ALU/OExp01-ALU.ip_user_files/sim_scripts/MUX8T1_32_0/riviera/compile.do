vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../OExp01-ALU.srcs/sources_1/ip/MUX8T1_32_0/MUX8T1_32.v" \
"../../../../OExp01-ALU.srcs/sources_1/ip/MUX8T1_32_0/sim/MUX8T1_32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

