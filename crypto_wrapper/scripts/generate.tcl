exec cp ./crypto_wrapper.srcs/sources_1/new/crypto_top_pres.v ./crypto_wrapper.srcs/sources_1/new/crypto_top.v
open_project ./crypto_wrapper.xpr
synth_design -top crypto_top -mode out_of_context -part xc7z020clg400-1
write_checkpoint -force ./crypto_wrapper.checkpoint/pres.dcp

# Add new run
exec cp ./crypto_wrapper.srcs/sources_1/new/crypto_top_aes.v ./crypto_wrapper.srcs/sources_1/new/crypto_top.v
refresh_design
# Add IP
#create_ip -name aes_v1_0 -vendor user.org -library user -version 1.0 -module_name aes_v1_0_0
generate_target {instantiation_template} [get_files ./crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0/aes_v1_0_0.xci]
update_compile_order -fileset sources_1
generate_target all [get_files  ./crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0/aes_v1_0_0.xci]
catch { config_ip_cache -export [get_ips -all aes_v1_0_0] }
export_ip_user_files -of_objects [get_files ./crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0/aes_v1_0_0.xci] -no_script -sync -force -quiet
create_ip_run [get_files -of_objects [get_fileset sources_1] ./crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0/aes_v1_0_0.xci]

synth_design -top crypto_top -mode out_of_context -part xc7z020clg400-1
write_checkpoint -force ./crypto_wrapper.checkpoint/aes.dcp
