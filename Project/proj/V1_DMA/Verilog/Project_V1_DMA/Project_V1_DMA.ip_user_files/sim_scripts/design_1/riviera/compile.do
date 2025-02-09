vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_4
vlib riviera/processing_system7_vip_v1_0_6
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_fifo_v1_0_12
vlib riviera/axi_datamover_v5_1_20
vlib riviera/axi_sg_v4_1_11
vlib riviera/axi_cdma_v4_1_18
vlib riviera/blk_mem_gen_v8_3_6
vlib riviera/axi_bram_ctrl_v4_1_0
vlib riviera/xbip_utils_v3_0_9
vlib riviera/axi_utils_v2_0_5
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_5
vlib riviera/xbip_dsp48_multadd_v3_0_5
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/floating_point_v7_1_7
vlib riviera/axi_protocol_converter_v2_1_18
vlib riviera/axi_clock_converter_v2_1_17
vlib riviera/axi_dwidth_converter_v2_1_18

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_4 riviera/axi_vip_v1_1_4
vmap processing_system7_vip_v1_0_6 riviera/processing_system7_vip_v1_0_6
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_fifo_v1_0_12 riviera/lib_fifo_v1_0_12
vmap axi_datamover_v5_1_20 riviera/axi_datamover_v5_1_20
vmap axi_sg_v4_1_11 riviera/axi_sg_v4_1_11
vmap axi_cdma_v4_1_18 riviera/axi_cdma_v4_1_18
vmap blk_mem_gen_v8_3_6 riviera/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 riviera/axi_bram_ctrl_v4_1_0
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 riviera/axi_utils_v2_0_5
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_5 riviera/xbip_dsp48_addsub_v3_0_5
vmap xbip_dsp48_multadd_v3_0_5 riviera/xbip_dsp48_multadd_v3_0_5
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap floating_point_v7_1_7 riviera/floating_point_v7_1_7
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 riviera/axi_clock_converter_v2_1_17
vmap axi_dwidth_converter_v2_1_18 riviera/axi_dwidth_converter_v2_1_18

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_4  -sv2k12 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_6  -sv2k12 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_12 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/544a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_20 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/dfb3/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_11 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/efa7/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_cdma_v4_1_18 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/8f92/hdl/axi_cdma_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_cdma_0_0/sim/design_1_axi_cdma_0_0.vhd" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_1/sim/design_1_xbar_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_5 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_5 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_7 -93 \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/hdl/floating_point_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_myip_0_0/src/floating_point_MAC/sim/floating_point_MAC.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4/clk_wiz_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4/clk_wiz_0.v" \
"../../../bd/design_1/ipshared/8ac9/src/mm_multiplier.v" \
"../../../bd/design_1/ipshared/8ac9/src/my_pe.v" \
"../../../bd/design_1/ipshared/8ac9/hdl/myip_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/8ac9/hdl/myip_v1_0.v" \
"../../../bd/design_1/ip/design_1_myip_0_0/sim/design_1_myip_0_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_17  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_18  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ipshared/70cf/hdl" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_myip_0_0/src/clk_wiz_0_4" "+incdir+../../../../Project_V1_DMA.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+C:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

