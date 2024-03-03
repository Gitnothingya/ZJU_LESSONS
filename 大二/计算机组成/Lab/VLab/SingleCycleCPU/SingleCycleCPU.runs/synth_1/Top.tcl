# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7k160tffg676-2L

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.cache/wt [current_project]
set_property parent.project_path D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Defines.vh
read_mem {
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/dmem_data.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/font_8x16.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/vga_debugger.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/imem_data.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/font_8x16.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/vga_debugger.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/imem_data.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/dmem_data.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/imem_data2.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/dmem_data2.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/imem_data3.mem
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Mem/imem_data4.mem
}
read_verilog -library xil_defaultlib {
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Alu.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/ClockDividor.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Comparator.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Controller.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Core.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Csr.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/DMem.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/IMem.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/ImmGen.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/InputAntiJitter.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/LEDCtrl.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/MACtrl.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Mem.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/PC.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/RegFile.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/VGA.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/VgaController.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/VgaDebugger.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/VgaDisplay.v
  D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/imports/Materials/Top.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/constrs_1/imports/Materials/Constraints.xdc
set_property used_in_implementation false [get_files D:/EDAFile_vivado/LAB4/SingleCycleCPU/SingleCycleCPU.srcs/constrs_1/imports/Materials/Constraints.xdc]


synth_design -top Top -part xc7k160tffg676-2L


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_utilization_synth.rpt -pb Top_utilization_synth.pb"
