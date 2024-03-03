vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/SPIO_0/SPIO_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

