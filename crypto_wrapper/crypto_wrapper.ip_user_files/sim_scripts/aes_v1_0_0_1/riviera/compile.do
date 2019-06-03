vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_register_slice_v1_1_15
vlib riviera/axis_dwidth_converter_v1_1_14

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_15 riviera/axis_register_slice_v1_1_15
vmap axis_dwidth_converter_v1_1_14 riviera/axis_dwidth_converter_v1_1_14

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_15  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_14  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/ip/axis_dwidth_converter_1/sim/axis_dwidth_converter_1.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/hdl/aes_v1_0_S00_AXI.v" \

vcom -work xil_defaultlib -93 \
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

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../ipstatic/hdl" "+incdir+../../../ipstatic/hdl" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/hdl/aes_v1_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/new/top.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sim/aes_v1_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

