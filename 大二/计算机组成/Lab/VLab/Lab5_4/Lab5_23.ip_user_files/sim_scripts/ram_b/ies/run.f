-makelib ies_lib/xpm -sv \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab5_23.gen/sources_1/ip/ram_b/sim/ram_b.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

