vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../../Lab2.gen/sources_1/ip/SSeg7_Dev_0/HexTo8SEG.v" \
"../../../../Lab2.gen/sources_1/ip/SSeg7_Dev_0/MC14495_ZJU.v" \
"../../../../Lab2.gen/sources_1/ip/SSeg7_Dev_0/MUX2T1_64.v" \
"../../../../Lab2.gen/sources_1/ip/SSeg7_Dev_0/P2S.v" \
"../../../../Lab2.gen/sources_1/ip/SSeg7_Dev_0/SSeg_map.v" \
"../../../../Lab2.gen/sources_1/ip/SSeg7_Dev_0/SSeg7_Dev.v" \
"../../../../Lab2.gen/sources_1/ip/SSeg7_Dev_0/sim/SSeg7_Dev_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

