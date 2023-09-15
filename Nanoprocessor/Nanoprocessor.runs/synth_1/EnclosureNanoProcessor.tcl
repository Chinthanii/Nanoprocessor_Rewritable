# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
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
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.cache/wt [current_project]
set_property parent.project_path E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.2 [current_project]
set_property ip_output_repo e:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Decoder_2_to_4.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Decoder_3_to_8.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Decoder_4_to16.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/FA.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/HA.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Ins_Decoder.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Mux_16_to_1_16bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Mux_16way_1bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Mux_16way_8bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Mux_2way_4bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Mux_2way_8bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Mux_8_to_1.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Mux_8way_8bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/PC_4bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Processor.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/RAM.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/RCA_4.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/RCA_8.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/imports/new/REg_16Bit3.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Reg.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/imports/new/Reg_16Bit1.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/imports/new/Reg_16Bit2.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/imports/new/Reg_16Bit4.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/imports/new/Reg_16Bit5.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/imports/new/Reg_16Bit6.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/imports/new/Reg_16Bit7.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Reg_16bit.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Reg_16bit0.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Reg_Bank_16byte.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/SevenSegDispHandler.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Slow_Clk.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/Slow_Clk2.vhd
  E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/sources_1/new/EnclosureNanoProcessor.vhd
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/constrs_1/imports/UOM_CS1050/Basys3Labs.xdc
set_property used_in_implementation false [get_files E:/Sasindu/Vivado_Projects/UOM_CS1050/Lab9Enhanced3/NanoprocessorV3.xpr/Nanoprocessor/Nanoprocessor.srcs/constrs_1/imports/UOM_CS1050/Basys3Labs.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top EnclosureNanoProcessor -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef EnclosureNanoProcessor.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file EnclosureNanoProcessor_utilization_synth.rpt -pb EnclosureNanoProcessor_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
