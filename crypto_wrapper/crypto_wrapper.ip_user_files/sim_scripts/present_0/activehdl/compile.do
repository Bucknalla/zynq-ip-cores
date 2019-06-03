vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_register_slice_v1_1_15
vlib activehdl/axis_dwidth_converter_v1_1_14

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_register_slice_v1_1_15 activehdl/axis_register_slice_v1_1_15
vmap axis_dwidth_converter_v1_1_14 activehdl/axis_dwidth_converter_v1_1_14

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
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/ip/axis_dwidth_converter_1/sim/axis_dwidth_converter_1.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/pbox.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/pbox_inv.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/present.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/present_dec.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/present_enc.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/hdl/present_v1_0.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/hdl/present_v1_0_S00_AXI.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/roundkey.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/sbox.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/imports/present_1.0/hdl/sbox_inv.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sources_1/new/pres_top.v" \
"../../../../crypto_wrapper.srcs/sources_1/ip/present_0/sim/present_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

