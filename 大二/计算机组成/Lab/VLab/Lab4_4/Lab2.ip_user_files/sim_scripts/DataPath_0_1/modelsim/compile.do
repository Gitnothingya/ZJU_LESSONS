vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/ALUT.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/ImmGen.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/PCReg.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/RegFile32.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/DataPath.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sim/DataPath_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

