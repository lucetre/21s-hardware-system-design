# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.runs/synth_1/.Xil/Vivado-8360-lucetre/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7z020clg484-1
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/ec67/hdl
    c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_5
    c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/70cf/hdl
  } {
      C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include {
    c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/ec67/hdl
    c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_5
    c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/70cf/hdl
  } {
      C:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/synth/design_1_xbar_0.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/89bb/src/integer_MAC.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/89bb/src/mm_multiplier.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/89bb/src/my_pe.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/89bb/hdl/myip_v1_0_S00_AXI.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/89bb/hdl/myip_v1_0.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/synth/design_1_myip_0_0.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_5/clk_wiz_0_clk_wiz.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_5/clk_wiz_0.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_aw_atc.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_b_atc.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_w_atc.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_atc.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/8fd3/hdl/verilog/processing_system7_v5_5_trace_buffer.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/synth/design_1_processing_system7_0_0.v
      C:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/synth/design_1.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_1/synth/design_1_auto_pc_1.v
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/synth/design_1_auto_pc_0.v
    }
      rt::read_vhdl -lib axi_bram_ctrl_v4_1_0 c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd
      rt::read_vhdl -lib blk_mem_gen_v8_3_6 c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/2751/hdl/blk_mem_gen_v8_3_vhsyn_rfs.vhd
      rt::read_vhdl -lib xil_defaultlib {
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_0/synth/design_1_axi_bram_ctrl_0_0.vhd
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/synth/design_1_blk_mem_gen_0_0.vhd
      c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ip/design_1_rst_ps7_0_50M_0/synth/design_1_rst_ps7_0_50M_0.vhd
    }
      rt::read_vhdl -lib blk_mem_gen_v8_4_2 c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/37c2/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd
      rt::read_vhdl -lib fifo_generator_v13_2_3 c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_vhsyn_rfs.vhd
      rt::read_vhdl -lib lib_cdc_v1_0_2 c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd
      rt::read_vhdl -lib proc_sys_reset_v5_0_13 c:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd
      rt::read_vhdl -lib xpm C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top design_1_wrapper
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "C:/Users/lucet/semester/21s-hardware-system-design/Project/proj/V1_Quantization/Verilog/Project_V1_Quantization/Project_V1_Quantization.runs/synth_1/.Xil/Vivado-8360-lucetre/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
