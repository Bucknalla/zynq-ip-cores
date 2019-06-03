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
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.cache/wt [current_project]
set_property parent.project_path /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part www.digilentinc.com:pynq-z1:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/alex/GitHub/zynq-ip-cores/chacha_1.0/chacha_1.0
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0
  /home/alex/GitHub/zynq-ip-cores/test_1.0
  /home/alex/GitHub/ZyEthCAP/zycap_core
  /home/alex/GitHub/zynq-ip-cores
} [current_project]
set_property ip_output_repo /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/pbox.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/pbox_inv.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/present.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/present_dec.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/present_enc.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/hdl/present_v1_0.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/hdl/present_v1_0_S00_AXI.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/roundkey.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/sbox.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/imports/present_1.0/hdl/sbox_inv.v
  /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/new/pres_top.v
}
read_ip -quiet /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/ip/axis_dwidth_converter_0/axis_dwidth_converter_0.xci
set_property used_in_implementation false [get_files -all /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/ip/axis_dwidth_converter_0/axis_dwidth_converter_0_ooc.xdc]

read_ip -quiet /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/ip/axis_dwidth_converter_1/axis_dwidth_converter_1.xci
set_property used_in_implementation false [get_files -all /home/alex/GitHub/zynq-ip-cores/present_1.0/present_1.0.srcs/sources_1/ip/axis_dwidth_converter_1/axis_dwidth_converter_1_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top pres_top -part xc7z020clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef pres_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file pres_top_utilization_synth.rpt -pb pres_top_utilization_synth.pb"