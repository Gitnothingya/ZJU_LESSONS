vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../ALU.gen/sources_1/ip/srl_0/srl.v" \
"../../../../ALU.gen/sources_1/ip/srl_0/sim/srl_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

