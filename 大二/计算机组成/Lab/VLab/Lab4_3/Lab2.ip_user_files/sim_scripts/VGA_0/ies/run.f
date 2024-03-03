-makelib ies_lib/xpm -sv \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab2.gen/sources_1/ip/VGA_0/Hex2Ascii.v" \
  "../../../../Lab2.gen/sources_1/ip/VGA_0/VgaController.v" \
  "../../../../Lab2.gen/sources_1/ip/VGA_0/VgaDebugger.v" \
  "../../../../Lab2.gen/sources_1/ip/VGA_0/VgaDisplay.v" \
  "../../../../Lab2.gen/sources_1/ip/VGA_0/VGA.v" \
  "../../../../Lab2.gen/sources_1/ip/VGA_0/sim/VGA_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

