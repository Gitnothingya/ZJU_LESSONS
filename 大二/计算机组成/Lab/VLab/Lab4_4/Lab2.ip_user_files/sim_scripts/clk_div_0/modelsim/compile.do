vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../Lab2.gen/sources_1/ip/clk_div_0/sources_1/new/clk_div.v" \
"../../../../Lab2.gen/sources_1/ip/clk_div_0/sim/clk_div_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

