vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/ALUT.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/ImmGen.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/PCReg.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/RegFile32.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/DataPath.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sim/DataPath_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

