vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/MIO_BUS_0/MIO_BUS_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

