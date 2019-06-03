#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2017.4 (64-bit)
#
# Filename    : present_0.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Mon Jun 03 16:25:44 BST 2019
# SW Build 2086221 on Fri Dec 15 20:54:30 MST 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved. 
#
# usage: present_0.sh [-help]
# usage: present_0.sh [-lib_map_path]
# usage: present_0.sh [-noclean_files]
# usage: present_0.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'present_0.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm axis_infrastructure_v1_1_0 axis_register_slice_v1_1_15 axis_dwidth_converter_v1_1_14)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "present_0.sh - Script generated by export_simulation (Vivado v2017.4 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axis_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
    "$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl/axis_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axis_register_slice_v1_1_15 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
    "$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl/axis_register_slice_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axis_dwidth_converter_v1_1_14 $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
    "$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl/axis_dwidth_converter_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../ipstatic/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/hdl" +incdir+"$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/hdl" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_0/sim/axis_dwidth_converter_0.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/ip/axis_dwidth_converter_1/sim/axis_dwidth_converter_1.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/pbox.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/pbox_inv.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/present.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/present_dec.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/present_enc.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/hdl/present_v1_0.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/hdl/present_v1_0_S00_AXI.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/roundkey.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/sbox.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/imports/present_1.0/hdl/sbox_inv.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sources_1/new/pres_top.v" \
    "$ref_dir/../../../../crypto_wrapper.srcs/sources_1/ip/present_0_4/sim/present_0.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.present_0 xil_defaultlib.glbl -o present_0_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./present_0_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./present_0.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  else
    lib_map_path="/home/alex/GitHub/zynq-ip-cores/crypto_wrapper/crypto_wrapper.cache/compile_simlib/vcs"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key present_0_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc present_0_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./present_0.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: present_0.sh [-help]\n\
Usage: present_0.sh [-lib_map_path]\n\
Usage: present_0.sh [-reset_run]\n\
Usage: present_0.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
