vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../../ALU.gen/sources_1/ip/adc_1/adc.v" \
"../../../../ALU.gen/sources_1/ip/adc_1/sim/adc_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

