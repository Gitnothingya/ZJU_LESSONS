vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../OExp01-ALU.srcs/sources_1/ip/xor32_0/xor32.v" \
"../../../../OExp01-ALU.srcs/sources_1/ip/xor32_0/sim/xor32_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

