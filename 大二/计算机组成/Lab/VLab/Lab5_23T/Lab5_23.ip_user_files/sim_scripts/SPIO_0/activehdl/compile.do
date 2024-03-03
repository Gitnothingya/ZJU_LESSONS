vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"d:/Vteacher/Lab5_23/Lab5_23.gen/sources_1/ip/SPIO_0/SPIO_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

