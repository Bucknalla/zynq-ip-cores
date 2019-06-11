#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2017.4 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Jun 11 17:04:54 BST 2019
# SW Build 2086221 on Fri Dec 15 20:54:30 MST 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xelab -wto 85c3cdb51f474e999210f823943532e6 --incr --debug typical --relax --mt 8 -L axis_infrastructure_v1_1_0 -L axis_register_slice_v1_1_15 -L axis_dwidth_converter_v1_1_14 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot present_tb_behav xil_defaultlib.present_tb xil_defaultlib.glbl -log elaborate.log
