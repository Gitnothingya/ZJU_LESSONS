vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/Multi_8CH32_0/Multi_8CH32_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

