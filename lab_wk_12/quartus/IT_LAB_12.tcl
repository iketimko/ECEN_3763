# Copyright (C) 2020  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: IT_LAB_12.tcl
# Generated on: Mon Apr 25 20:38:04 2022

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "IT_LAB_12"]} {
		puts "Project IT_LAB_12 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists IT_LAB_12]} {
		project_open -revision IT_LAB_12 IT_LAB_12
	} else {
		project_new -revision IT_LAB_12 IT_LAB_12
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name NUM_PARALLEL_PROCESSORS 4
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSXFC6D6F31C6
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 16.0.2
	set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Standard Edition"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "11:59:08 APRIL 15,2022"
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (SystemVerilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "SYSTEMVERILOG HDL" -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name EDA_TEST_BENCH_ENABLE_STATUS TEST_BENCH_MODE -section_id eda_simulation
	set_global_assignment -name EDA_NATIVELINK_SIMULATION_TEST_BENCH tb -section_id eda_simulation
	set_global_assignment -name EDA_TEST_BENCH_NAME tb -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id tb
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME tb -section_id tb
	set_global_assignment -name EDA_TEST_BENCH_FILE ../source/tb.sv -section_id tb
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/shift.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/reset.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/tb.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/ADC_controller.sv
	set_global_assignment -name QIP_FILE PD_L12/synthesis/PD_L12.qip
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/segment7.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/IT_LAB_12.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/clk_gate.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/bin2bcd.sv
	set_global_assignment -name SDC_FILE IT_LAB_12.SDC
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE signal_tap.stp
	set_global_assignment -name SIGNALTAP_FILE signal_tap.stp
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_BLOCK_TYPE=AUTO" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334528" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ATTRIBUTE_MEM_MODE=OFF" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INCREMENTAL_ROUTING=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_COUNTER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=69" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=69" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_BITS=69" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=230" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=512" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=512" -section_id auto_signaltap_0
	set_global_assignment -name SLD_FILE db/signal_tap_auto_stripped.stp
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK2_50
	set_instance_assignment -name IO_STANDARD "2.5 V" -to CLOCK3_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK4_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50
	set_location_assignment PIN_AA16 -to CLOCK2_50
	set_location_assignment PIN_Y26 -to CLOCK3_50
	set_location_assignment PIN_K14 -to CLOCK4_50
	set_location_assignment PIN_AF14 -to CLOCK_50
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[3]
	set_location_assignment PIN_AJ4 -to KEY[0]
	set_location_assignment PIN_AK4 -to KEY[1]
	set_location_assignment PIN_AA14 -to KEY[2]
	set_location_assignment PIN_AA15 -to KEY[3]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[0]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[1]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[2]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[3]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[4]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[5]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[6]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[7]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[8]
	set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[9]
	set_location_assignment PIN_AB30 -to SW[0]
	set_location_assignment PIN_Y27 -to SW[1]
	set_location_assignment PIN_AB28 -to SW[2]
	set_location_assignment PIN_AC30 -to SW[3]
	set_location_assignment PIN_W25 -to SW[4]
	set_location_assignment PIN_V25 -to SW[5]
	set_location_assignment PIN_AC28 -to SW[6]
	set_location_assignment PIN_AD30 -to SW[7]
	set_location_assignment PIN_AC29 -to SW[8]
	set_location_assignment PIN_AA30 -to SW[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX0[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX1[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX2[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX3[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX4[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to HEX5[6]
	set_location_assignment PIN_W17 -to HEX0[0]
	set_location_assignment PIN_V18 -to HEX0[1]
	set_location_assignment PIN_AG17 -to HEX0[2]
	set_location_assignment PIN_AG16 -to HEX0[3]
	set_location_assignment PIN_AH17 -to HEX0[4]
	set_location_assignment PIN_AG18 -to HEX0[5]
	set_location_assignment PIN_AH18 -to HEX0[6]
	set_location_assignment PIN_AF16 -to HEX1[0]
	set_location_assignment PIN_V16 -to HEX1[1]
	set_location_assignment PIN_AE16 -to HEX1[2]
	set_location_assignment PIN_AD17 -to HEX1[3]
	set_location_assignment PIN_AE18 -to HEX1[4]
	set_location_assignment PIN_AE17 -to HEX1[5]
	set_location_assignment PIN_V17 -to HEX1[6]
	set_location_assignment PIN_AA21 -to HEX2[0]
	set_location_assignment PIN_AB17 -to HEX2[1]
	set_location_assignment PIN_AA18 -to HEX2[2]
	set_location_assignment PIN_Y17 -to HEX2[3]
	set_location_assignment PIN_Y18 -to HEX2[4]
	set_location_assignment PIN_AF18 -to HEX2[5]
	set_location_assignment PIN_W16 -to HEX2[6]
	set_location_assignment PIN_Y19 -to HEX3[0]
	set_location_assignment PIN_W19 -to HEX3[1]
	set_location_assignment PIN_AD19 -to HEX3[2]
	set_location_assignment PIN_AA20 -to HEX3[3]
	set_location_assignment PIN_AC20 -to HEX3[4]
	set_location_assignment PIN_AA19 -to HEX3[5]
	set_location_assignment PIN_AD20 -to HEX3[6]
	set_location_assignment PIN_AD21 -to HEX4[0]
	set_location_assignment PIN_AG22 -to HEX4[1]
	set_location_assignment PIN_AE22 -to HEX4[2]
	set_location_assignment PIN_AE23 -to HEX4[3]
	set_location_assignment PIN_AG23 -to HEX4[4]
	set_location_assignment PIN_AF23 -to HEX4[5]
	set_location_assignment PIN_AH22 -to HEX4[6]
	set_location_assignment PIN_AF21 -to HEX5[0]
	set_location_assignment PIN_AG21 -to HEX5[1]
	set_location_assignment PIN_AF20 -to HEX5[2]
	set_location_assignment PIN_AG20 -to HEX5[3]
	set_location_assignment PIN_AE19 -to HEX5[4]
	set_location_assignment PIN_AF19 -to HEX5[5]
	set_location_assignment PIN_AB21 -to HEX5[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_CONVST
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_DIN
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_DOUT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SCLK
	set_location_assignment PIN_Y21 -to ADC_CONVST
	set_location_assignment PIN_W22 -to ADC_DIN
	set_location_assignment PIN_V23 -to ADC_DOUT
	set_location_assignment PIN_W24 -to ADC_SCLK
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to CLOCK_50 -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[1] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[2] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[3] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[6] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[9] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[11] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[13] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[15] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[18] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[20] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[21] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[23] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[24] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[26] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[30] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to ADC_CONVST -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[1] -to HEX0[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[2] -to HEX0[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[3] -to HEX0[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[4] -to HEX0[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[5] -to HEX0[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[6] -to HEX0[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[7] -to HEX0[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[8] -to HEX1[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[9] -to HEX1[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[10] -to HEX1[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[11] -to HEX1[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[12] -to HEX1[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[13] -to HEX1[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[14] -to HEX1[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[15] -to HEX2[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[16] -to HEX2[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[17] -to HEX2[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[18] -to HEX2[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[19] -to HEX2[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[20] -to HEX2[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[21] -to HEX2[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[22] -to HEX3[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[23] -to HEX3[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[24] -to HEX3[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[25] -to HEX3[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[26] -to HEX3[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[27] -to HEX3[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[28] -to HEX3[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[29] -to "bin2bcd:u3|binary_in[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[30] -to "bin2bcd:u3|binary_in[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[31] -to "bin2bcd:u3|binary_in[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[32] -to "bin2bcd:u3|binary_in[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[33] -to "bin2bcd:u3|binary_in[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[34] -to "bin2bcd:u3|binary_in[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[35] -to "bin2bcd:u3|binary_in[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[36] -to "bin2bcd:u3|binary_in[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[37] -to "bin2bcd:u3|binary_in[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[38] -to "bin2bcd:u3|binary_in[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[39] -to "bin2bcd:u3|binary_in[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[40] -to "bin2bcd:u3|binary_in[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[41] -to "segment7:u4|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[42] -to "segment7:u4|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[43] -to "segment7:u4|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[44] -to "segment7:u4|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[45] -to "segment7:u4|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[46] -to "segment7:u4|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[47] -to "segment7:u4|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[48] -to "segment7:u5|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[49] -to "segment7:u5|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[50] -to "segment7:u5|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[51] -to "segment7:u5|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[52] -to "segment7:u5|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[53] -to "segment7:u5|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[54] -to "segment7:u5|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[55] -to "segment7:u6|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[56] -to "segment7:u6|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[57] -to "segment7:u6|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[58] -to "segment7:u6|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[59] -to "segment7:u6|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[60] -to "segment7:u6|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[61] -to "segment7:u6|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[62] -to "segment7:u7|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[63] -to "segment7:u7|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[64] -to "segment7:u7|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[65] -to "segment7:u7|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[66] -to "segment7:u7|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[67] -to "segment7:u7|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[68] -to "segment7:u7|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to ADC_CONVST -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to HEX0[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to HEX0[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to HEX0[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to HEX0[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to HEX0[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to HEX0[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to HEX0[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to HEX1[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to HEX1[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to HEX1[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to HEX1[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to HEX1[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to HEX1[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to HEX1[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[15] -to HEX2[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[16] -to HEX2[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[17] -to HEX2[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[18] -to HEX2[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[19] -to HEX2[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[20] -to HEX2[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[21] -to HEX2[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[22] -to HEX3[0] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[23] -to HEX3[1] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[24] -to HEX3[2] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[25] -to HEX3[3] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[26] -to HEX3[4] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[27] -to HEX3[5] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[28] -to HEX3[6] -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[29] -to "bin2bcd:u3|binary_in[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[30] -to "bin2bcd:u3|binary_in[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[31] -to "bin2bcd:u3|binary_in[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[32] -to "bin2bcd:u3|binary_in[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[33] -to "bin2bcd:u3|binary_in[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[34] -to "bin2bcd:u3|binary_in[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[35] -to "bin2bcd:u3|binary_in[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[36] -to "bin2bcd:u3|binary_in[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[37] -to "bin2bcd:u3|binary_in[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[38] -to "bin2bcd:u3|binary_in[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[39] -to "bin2bcd:u3|binary_in[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[40] -to "bin2bcd:u3|binary_in[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[41] -to "segment7:u4|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[42] -to "segment7:u4|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[43] -to "segment7:u4|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[44] -to "segment7:u4|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[45] -to "segment7:u4|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[46] -to "segment7:u4|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[47] -to "segment7:u4|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[48] -to "segment7:u5|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[49] -to "segment7:u5|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[50] -to "segment7:u5|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[51] -to "segment7:u5|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[52] -to "segment7:u5|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[53] -to "segment7:u5|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[54] -to "segment7:u5|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[55] -to "segment7:u6|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[56] -to "segment7:u6|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[57] -to "segment7:u6|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[58] -to "segment7:u6|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[59] -to "segment7:u6|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[60] -to "segment7:u6|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[61] -to "segment7:u6|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[62] -to "segment7:u7|seg[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[63] -to "segment7:u7|seg[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[64] -to "segment7:u7|seg[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[65] -to "segment7:u7|seg[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[66] -to "segment7:u7|seg[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[67] -to "segment7:u7|seg[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[68] -to "segment7:u7|seg[6]" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[0] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[4] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[5] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[7] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[8] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[10] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[12] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[14] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[16] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[17] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[22] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[28] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[19] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[25] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[27] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[29] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[31] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
