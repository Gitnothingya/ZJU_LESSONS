vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab5_23.gen/sources_1/ip/clk_div_0/sources_1/new/clk_div.v" \
"../../../../Lab5_23.gen/sources_1/ip/clk_div_0/sim/clk_div_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

