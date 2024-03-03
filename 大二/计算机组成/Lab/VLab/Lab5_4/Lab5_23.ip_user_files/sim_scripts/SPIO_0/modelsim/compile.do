vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/SPIO_0/SPIO_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

