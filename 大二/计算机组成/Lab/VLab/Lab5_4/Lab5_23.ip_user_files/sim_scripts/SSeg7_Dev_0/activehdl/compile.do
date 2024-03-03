vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab5_23.gen/sources_1/ip/SSeg7_Dev_0/HexTo8SEG.v" \
"../../../../Lab5_23.gen/sources_1/ip/SSeg7_Dev_0/MC14495_ZJU.v" \
"../../../../Lab5_23.gen/sources_1/ip/SSeg7_Dev_0/MUX2T1_64.v" \
"../../../../Lab5_23.gen/sources_1/ip/SSeg7_Dev_0/P2S.v" \
"../../../../Lab5_23.gen/sources_1/ip/SSeg7_Dev_0/SSeg_map.v" \
"../../../../Lab5_23.gen/sources_1/ip/SSeg7_Dev_0/SSeg7_Dev.v" \
"../../../../Lab5_23.gen/sources_1/ip/SSeg7_Dev_0/sim/SSeg7_Dev_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

