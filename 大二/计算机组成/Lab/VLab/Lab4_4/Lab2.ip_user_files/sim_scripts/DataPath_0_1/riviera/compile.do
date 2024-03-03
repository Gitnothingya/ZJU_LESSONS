vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/ALUT.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/ImmGen.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/PCReg.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/RegFile32.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sources_1/new/DataPath.v" \
"../../../../Lab2.gen/sources_1/ip/DataPath_0_1/sim/DataPath_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

