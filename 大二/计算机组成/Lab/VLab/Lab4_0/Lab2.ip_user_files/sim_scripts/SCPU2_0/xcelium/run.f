-makelib xcelium_lib/xpm -sv \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Lab2.gen/sources_1/ip/SCPU2_0/src/DataPath.v" \
  "../../../../Lab2.gen/sources_1/ip/SCPU2_0/src/SCPU_ctrl.v" \
  "../../../../Lab2.gen/sources_1/ip/SCPU2_0/new/SCPU2.v" \
  "../../../../Lab2.gen/sources_1/ip/SCPU2_0/sim/SCPU2_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

