vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab2.gen/sources_1/ip/clk_div_0/sources_1/new/clk_div.v" \
"../../../../Lab2.gen/sources_1/ip/clk_div_0/sim/clk_div_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

