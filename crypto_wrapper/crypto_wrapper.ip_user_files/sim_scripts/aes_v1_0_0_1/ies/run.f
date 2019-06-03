-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/axis_infrastructure_v1_1_0 \
  "../../../ipstatic/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_register_slice_v1_1_15 \
  "../../../ipstatic/hdl/axis_register_slice_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axis_dwidth_converter_v1_1_14 \
  "../../../ipstatic/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/ip/axis_dwidth_converter_1/sim/axis_dwidth_converter_1.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/hdl/aes_v1_0_S00_AXI.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
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
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/imports/aes_1.0/hdl/aes_v1_0.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sources_1/new/top.v" \
  "../../../../crypto_wrapper.srcs/sources_1/ip/aes_v1_0_0_1/sim/aes_v1_0_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

