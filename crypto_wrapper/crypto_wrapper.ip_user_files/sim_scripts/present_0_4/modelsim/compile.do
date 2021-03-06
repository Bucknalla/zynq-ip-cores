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

vlog -work xil_defaultlib -64 -incr -sv "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axis_infrastructure_v1_1_0 -64 -incr "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
"../../../ipstatic/axis_dwidth_converter_0/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_register_slice_v1_1_15 -64 -incr "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
"../../../ipstatic/axis_dwidth_converter_0/hdl/axis_register_slice_v1_1_vl_rfs.v" \

vlog -work axis_dwidth_converter_v1_1_14 -64 -incr "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
"../../../ipstatic/axis_dwidth_converter_0/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" "+incdir+../../../ipstatic/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" "+incdir+../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/sim/axis_dwidth_converter_1.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/pbox.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/pbox_inv.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/present.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/present_dec.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/present_enc.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/hdl/present_v1_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/hdl/present_v1_0_S00_AXI.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/roundkey.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/sbox.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/sbox_inv.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/new/pres_top.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sim/present_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

