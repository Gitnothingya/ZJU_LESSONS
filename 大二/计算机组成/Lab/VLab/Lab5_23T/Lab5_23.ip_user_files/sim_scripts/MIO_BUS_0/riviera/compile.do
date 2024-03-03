vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/MIO_BUS_0/MIO_BUS_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

