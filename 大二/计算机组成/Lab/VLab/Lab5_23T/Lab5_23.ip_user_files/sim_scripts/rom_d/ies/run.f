-makelib ies_lib/xpm -sv \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/dist_mem_gen_v8_0_13 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab5_23.gen/sources_1/ip/rom_d/sim/rom_d.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

