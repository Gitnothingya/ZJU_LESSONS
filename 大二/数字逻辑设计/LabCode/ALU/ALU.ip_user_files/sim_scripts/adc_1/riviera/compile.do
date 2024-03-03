vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../ALU.gen/sources_1/ip/adc_1/adc.v" \
"../../../../ALU.gen/sources_1/ip/adc_1/sim/adc_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

