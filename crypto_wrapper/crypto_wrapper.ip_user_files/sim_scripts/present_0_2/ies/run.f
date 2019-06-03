-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../ipstatic/axis_dwidth_converter_0/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_register_slice_v1_1_15 \
  "../../../ipstatic/axis_dwidth_converter_0/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_dwidth_converter_v1_1_14 \
  "../../../ipstatic/axis_dwidth_converter_0/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/ip/axis_dwidth_converter_1/sim/axis_dwidth_converter_1.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/pbox.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/pbox_inv.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/present.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/present_dec.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/present_enc.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/hdl/present_v1_0.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/hdl/present_v1_0_S00_AXI.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/roundkey.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/sbox.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/imports/present_1.0/hdl/sbox_inv.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sources_1/new/pres_top.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/present_0_2/sim/present_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

