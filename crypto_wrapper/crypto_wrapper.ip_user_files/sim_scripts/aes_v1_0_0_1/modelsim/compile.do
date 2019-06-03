vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axis_infrastructure_v1_1_0
vlib modelsim_lib/msim/axis_register_slice_v1_1_15
vlib modelsim_lib/msim/axis_dwidth_converter_v1_1_14

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axis_infrastructure_v1_1_0 modelsim_lib/msim/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_15 modelsim_lib/msim/axis_register_slice_v1_1_15
vmap axis_dwidth_converter_v1_1_14 modelsim_lib/msim/axis_dwidth_converter_v1_1_14

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_15 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_14 -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/ip/axis_dwidth_converter_1/sim/axis_dwidth_converter_1.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/hdl/aes_v1_0_S00_AXI.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/types.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/cipher_cu.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/math.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/sbox.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/state_reg.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/cipher.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/counter.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/encryption_module.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/inv_cipher_cu.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/inv_cipher.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/decrementor.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/decryption_module.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/key_expander.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/dp_ram.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/key_expansion_cu.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/key_expansion.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/aes_module_cu.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/aes_module.vhd" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/src/aes_wrapper.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/hdl/aes_v1_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/new/top.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sim/aes_v1_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

