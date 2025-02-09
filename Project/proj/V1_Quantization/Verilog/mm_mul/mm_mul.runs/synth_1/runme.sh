#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/csehome/lgm0905/tools/SDK/2018.3/bin:/csehome/lgm0905/tools/Vivado/2018.3/ids_lite/ISE/bin/lin64:/csehome/lgm0905/tools/Vivado/2018.3/bin
else
  PATH=/csehome/lgm0905/tools/SDK/2018.3/bin:/csehome/lgm0905/tools/Vivado/2018.3/ids_lite/ISE/bin/lin64:/csehome/lgm0905/tools/Vivado/2018.3/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/csehome/lgm0905/tools/Vivado/2018.3/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/csehome/lgm0905/tools/Vivado/2018.3/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/csehome/lgm0905/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/mm_mul/mm_mul.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log mm_multiplier.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source mm_multiplier.tcl
