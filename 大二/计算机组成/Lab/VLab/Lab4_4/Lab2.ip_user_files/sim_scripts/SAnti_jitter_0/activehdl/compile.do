vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/SAnti_jitter_0/SAnti_jitter_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

