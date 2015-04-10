# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
set_property ip_repo_paths {
  D:/Library/Documents/ECE532/Milestone4/IP
  D:/Libraries/University/ECE532/Milestone4_b/IP/aicontroller/aicontroller.srcs/sources_1
  D:/Library/Documents/ECE532/Milestone4/IP
} [current_fileset]
read_verilog -library xil_defaultlib {
  D:/Libraries/University/ECE532/Milestone4_b/IP/aicontroller/aicontroller.srcs/sources_1/src/eval_block.v
  D:/Libraries/University/ECE532/Milestone4_b/IP/aicontroller/aicontroller.srcs/sources_1/imports/new/placement.v
  D:/Libraries/University/ECE532/Milestone4_b/IP/aicontroller/aicontroller.srcs/sources_1/src/score_ten.v
  D:/Libraries/University/ECE532/Milestone4_b/IP/aicontroller/aicontroller.srcs/sources_1/new/aicontroller.v
}
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Libraries/University/ECE532/Milestone4_b/IP/aicontroller/aicontroller.srcs/sources_1/aicontroller_v1_0_project/aicontroller_v1_0_project.cache/wt [current_project]
set_property parent.project_dir D:/Libraries/University/ECE532/Milestone4_b/IP/aicontroller/aicontroller.srcs/sources_1/aicontroller_v1_0_project [current_project]
synth_design -top aicontroller -part xc7a100tcsg324-1
write_checkpoint aicontroller.dcp
report_utilization -file aicontroller_utilization_synth.rpt -pb aicontroller_utilization_synth.pb