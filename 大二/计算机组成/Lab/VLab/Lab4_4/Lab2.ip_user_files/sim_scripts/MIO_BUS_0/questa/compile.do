vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"d:/Vteacher/Lab2/Lab2.gen/sources_1/ip/MIO_BUS_0/MIO_BUS_0_sim_netlist.v" \


vlog -work xil_defaultlib \
"glbl.v"

