vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../Lab5_23.gen/sources_1/ip/clk_div_0/sources_1/new/clk_div.v" \
"../../../../Lab5_23.gen/sources_1/ip/clk_div_0/sim/clk_div_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

