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
# File: quartus_lab_wk_9.tcl
# Generated on: Tue Apr 12 19:34:25 2022

# change directory
cd ../quartus

# Load flow
load_package flow

# Load Quartus Prime Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "IT_LAB_9"]} {
		puts "Project IT_LAB_9 is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists IT_LAB_9]} {
		project_open -revision IT_LAB_9 IT_LAB_9
	} else {
		project_new -revision IT_LAB_9 IT_LAB_9
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSXFC6D6F31C6
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 16.0.2
	set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Standard Edition"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "08:44:01 FEBRUARY 08,2022"
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6
	set_global_assignment -name NUM_PARALLEL_PROCESSORS 4
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (Verilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "VERILOG HDL" -section_id eda_simulation
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
	set_global_assignment -name QIP_FILE ROM_pixels.qip
	set_global_assignment -name QIP_FILE ROM_640p.qip
	set_global_assignment -name QIP_FILE PD_LAB_9/synthesis/PD_LAB_9.qip
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/tb.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/pixelgen.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/top.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/timer.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/reset.sv
	set_global_assignment -name VERILOG_FILE ../source/IT_LAB_9.v
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/counter.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/clock.sv
	set_global_assignment -name QIP_FILE ../source/PLL_quartus_files/PLL.qip
	set_global_assignment -name SIP_FILE ../source/PLL_quartus_files/PLL.sip
	set_global_assignment -name ENABLE_SIGNALTAP ON
	set_global_assignment -name USE_SIGNALTAP_FILE stp1.stp
	set_global_assignment -name SIGNALTAP_FILE stp1.stp
	set_global_assignment -name SLD_NODE_CREATOR_ID 110 -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_ENTITY_NAME sld_signaltap -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_BLOCK_TYPE=AUTO" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_DATA_BITS=130" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_BITS=130" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_BITS=130" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_NODE_INFO=805334528" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_POWER_UP_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK=000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INVERSION_MASK_LENGTH=411" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STORAGE_QUALIFIER_INVERSION_MASK_LENGTH=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SEGMENT_SIZE=128" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ATTRIBUTE_MEM_MODE=OFF" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_FLOW_USE_GENERATED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_STATE_BITS=11" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_BUFFER_FULL_STOP=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_CURRENT_RESOURCE_WIDTH=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_INCREMENTAL_ROUTING=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_SAMPLE_DEPTH=128" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_IN_ENABLED=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_RAM_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_COUNTER_PIPELINE=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ADVANCED_TRIGGER_ENTITY=basic,1," -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_TRIGGER_LEVEL_PIPELINE=1" -section_id auto_signaltap_0
	set_global_assignment -name SLD_NODE_PARAMETER_ASSIGNMENT "SLD_ENABLE_ADVANCED_TRIGGER=0" -section_id auto_signaltap_0
	set_global_assignment -name SLD_FILE db/stp1_auto_stripped.stp
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
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[9]
	set_location_assignment PIN_AA24 -to LEDR[0]
	set_location_assignment PIN_AB23 -to LEDR[1]
	set_location_assignment PIN_AC23 -to LEDR[2]
	set_location_assignment PIN_AD24 -to LEDR[3]
	set_location_assignment PIN_AG25 -to LEDR[4]
	set_location_assignment PIN_AF25 -to LEDR[5]
	set_location_assignment PIN_AE24 -to LEDR[6]
	set_location_assignment PIN_AF24 -to LEDR[7]
	set_location_assignment PIN_AB22 -to LEDR[8]
	set_location_assignment PIN_AC22 -to LEDR[9]
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
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[10]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[11]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_ADDR[12]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_BA[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CAS_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CKE
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_CS_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[8]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[9]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[10]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[11]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[12]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[13]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[14]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_DQ[15]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_LDQM
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_RAS_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_UDQM
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to DRAM_WE_N
	set_location_assignment PIN_AK14 -to DRAM_ADDR[0]
	set_location_assignment PIN_AH14 -to DRAM_ADDR[1]
	set_location_assignment PIN_AG15 -to DRAM_ADDR[2]
	set_location_assignment PIN_AE14 -to DRAM_ADDR[3]
	set_location_assignment PIN_AB15 -to DRAM_ADDR[4]
	set_location_assignment PIN_AC14 -to DRAM_ADDR[5]
	set_location_assignment PIN_AD14 -to DRAM_ADDR[6]
	set_location_assignment PIN_AF15 -to DRAM_ADDR[7]
	set_location_assignment PIN_AH15 -to DRAM_ADDR[8]
	set_location_assignment PIN_AG13 -to DRAM_ADDR[9]
	set_location_assignment PIN_AG12 -to DRAM_ADDR[10]
	set_location_assignment PIN_AH13 -to DRAM_ADDR[11]
	set_location_assignment PIN_AJ14 -to DRAM_ADDR[12]
	set_location_assignment PIN_AF13 -to DRAM_BA[0]
	set_location_assignment PIN_AJ12 -to DRAM_BA[1]
	set_location_assignment PIN_AF11 -to DRAM_CAS_N
	set_location_assignment PIN_AK13 -to DRAM_CKE
	set_location_assignment PIN_AH12 -to DRAM_CLK
	set_location_assignment PIN_AG11 -to DRAM_CS_N
	set_location_assignment PIN_AK6 -to DRAM_DQ[0]
	set_location_assignment PIN_AJ7 -to DRAM_DQ[1]
	set_location_assignment PIN_AK7 -to DRAM_DQ[2]
	set_location_assignment PIN_AK8 -to DRAM_DQ[3]
	set_location_assignment PIN_AK9 -to DRAM_DQ[4]
	set_location_assignment PIN_AG10 -to DRAM_DQ[5]
	set_location_assignment PIN_AK11 -to DRAM_DQ[6]
	set_location_assignment PIN_AJ11 -to DRAM_DQ[7]
	set_location_assignment PIN_AH10 -to DRAM_DQ[8]
	set_location_assignment PIN_AJ10 -to DRAM_DQ[9]
	set_location_assignment PIN_AJ9 -to DRAM_DQ[10]
	set_location_assignment PIN_AH9 -to DRAM_DQ[11]
	set_location_assignment PIN_AH8 -to DRAM_DQ[12]
	set_location_assignment PIN_AH7 -to DRAM_DQ[13]
	set_location_assignment PIN_AJ6 -to DRAM_DQ[14]
	set_location_assignment PIN_AJ5 -to DRAM_DQ[15]
	set_location_assignment PIN_AB13 -to DRAM_LDQM
	set_location_assignment PIN_AE13 -to DRAM_RAS_N
	set_location_assignment PIN_AK12 -to DRAM_UDQM
	set_location_assignment PIN_AA13 -to DRAM_WE_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_CLK27
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_DATA[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_HS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_RESET_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to TD_VS
	set_location_assignment PIN_AC18 -to TD_CLK27
	set_location_assignment PIN_AG27 -to TD_DATA[0]
	set_location_assignment PIN_AF28 -to TD_DATA[1]
	set_location_assignment PIN_AE28 -to TD_DATA[2]
	set_location_assignment PIN_AE27 -to TD_DATA[3]
	set_location_assignment PIN_AE26 -to TD_DATA[4]
	set_location_assignment PIN_AD27 -to TD_DATA[5]
	set_location_assignment PIN_AD26 -to TD_DATA[6]
	set_location_assignment PIN_AD25 -to TD_DATA[7]
	set_location_assignment PIN_AH28 -to TD_HS
	set_location_assignment PIN_AC27 -to TD_RESET_N
	set_location_assignment PIN_AG28 -to TD_VS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_BLANK_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_B[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_G[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_HS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[4]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[5]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[6]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_R[7]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_SYNC_N
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to VGA_VS
	set_location_assignment PIN_AK22 -to VGA_BLANK_N
	set_location_assignment PIN_AJ21 -to VGA_B[0]
	set_location_assignment PIN_AJ20 -to VGA_B[1]
	set_location_assignment PIN_AH20 -to VGA_B[2]
	set_location_assignment PIN_AJ19 -to VGA_B[3]
	set_location_assignment PIN_AH19 -to VGA_B[4]
	set_location_assignment PIN_AJ17 -to VGA_B[5]
	set_location_assignment PIN_AJ16 -to VGA_B[6]
	set_location_assignment PIN_AK16 -to VGA_B[7]
	set_location_assignment PIN_AK21 -to VGA_CLK
	set_location_assignment PIN_AK26 -to VGA_G[0]
	set_location_assignment PIN_AJ25 -to VGA_G[1]
	set_location_assignment PIN_AH25 -to VGA_G[2]
	set_location_assignment PIN_AK24 -to VGA_G[3]
	set_location_assignment PIN_AJ24 -to VGA_G[4]
	set_location_assignment PIN_AH24 -to VGA_G[5]
	set_location_assignment PIN_AK23 -to VGA_G[6]
	set_location_assignment PIN_AH23 -to VGA_G[7]
	set_location_assignment PIN_AK19 -to VGA_HS
	set_location_assignment PIN_AK29 -to VGA_R[0]
	set_location_assignment PIN_AK28 -to VGA_R[1]
	set_location_assignment PIN_AK27 -to VGA_R[2]
	set_location_assignment PIN_AJ27 -to VGA_R[3]
	set_location_assignment PIN_AH27 -to VGA_R[4]
	set_location_assignment PIN_AF26 -to VGA_R[5]
	set_location_assignment PIN_AG26 -to VGA_R[6]
	set_location_assignment PIN_AJ26 -to VGA_R[7]
	set_location_assignment PIN_AJ22 -to VGA_SYNC_N
	set_location_assignment PIN_AK18 -to VGA_VS
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_ADCDAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_ADCLRCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_BCLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_DACDAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_DACLRCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_XCK
	set_location_assignment PIN_AJ29 -to AUD_ADCDAT
	set_location_assignment PIN_AH29 -to AUD_ADCLRCK
	set_location_assignment PIN_AF30 -to AUD_BCLK
	set_location_assignment PIN_AF29 -to AUD_DACDAT
	set_location_assignment PIN_AG30 -to AUD_DACLRCK
	set_location_assignment PIN_AH30 -to AUD_XCK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_CLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_CLK2
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_DAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to PS2_DAT2
	set_location_assignment PIN_AB25 -to PS2_CLK
	set_location_assignment PIN_AC25 -to PS2_CLK2
	set_location_assignment PIN_AA25 -to PS2_DAT
	set_location_assignment PIN_AB26 -to PS2_DAT2
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_CONVST
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_DIN
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_DOUT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to ADC_SCLK
	set_location_assignment PIN_Y21 -to ADC_CONVST
	set_location_assignment PIN_W22 -to ADC_DIN
	set_location_assignment PIN_V23 -to ADC_DOUT
	set_location_assignment PIN_W24 -to ADC_SCLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FPGA_I2C_SCLK
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to FPGA_I2C_SDAT
	set_location_assignment PIN_Y24 -to FPGA_I2C_SCLK
	set_location_assignment PIN_Y23 -to FPGA_I2C_SDAT
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to IRDA_RXD
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to IRDA_TXD
	set_location_assignment PIN_W20 -to IRDA_RXD
	set_location_assignment PIN_W21 -to IRDA_TXD
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_clk -to CLOCK_50 -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[0] -to "top:u1|DRAM_CAS_N" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[1] -to "top:u1|DRAM_RAS_N" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[2] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|dma_ctl_irq" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[3] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[4] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[5] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[6] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[7] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[8] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[9] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[10] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[11] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[12] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[13] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[14] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[15] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[16] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[17] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[18] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[19] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[20] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[21] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[22] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[23] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[24] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[25] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[26] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[27] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[28] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[29] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonmm_write_slave_waitrequest" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[30] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonmm_write_slave_write" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[31] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[32] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[33] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[34] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[35] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[36] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[37] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[38] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[39] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[40] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[41] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[42] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[43] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[44] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[45] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[46] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[47] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[48] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[49] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[50] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[51] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[52] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[53] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[54] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[55] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[56] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[57] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[58] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[59] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[60] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[61] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[62] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[63] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_ready" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[64] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_valid" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[65] -to "top:u1|timer:u2|H_pos[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[66] -to "top:u1|timer:u2|H_pos[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[67] -to "top:u1|timer:u2|H_pos[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[68] -to "top:u1|timer:u2|H_pos[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[69] -to "top:u1|timer:u2|H_pos[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[70] -to "top:u1|timer:u2|H_pos[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[71] -to "top:u1|timer:u2|H_pos[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[72] -to "top:u1|timer:u2|H_pos[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[73] -to "top:u1|timer:u2|H_pos[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[74] -to "top:u1|timer:u2|H_pos[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[75] -to "top:u1|timer:u2|H_pos[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[76] -to "top:u1|timer:u2|H_pos[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[77] -to "top:u1|timer:u2|H_pos[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[78] -to "top:u1|timer:u2|H_pos[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[79] -to "top:u1|timer:u2|H_pos[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[80] -to "top:u1|timer:u2|H_pos[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[81] -to "top:u1|timer:u2|H_pos[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[82] -to "top:u1|timer:u2|H_pos[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[83] -to "top:u1|timer:u2|H_pos[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[84] -to "top:u1|timer:u2|H_pos[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[85] -to "top:u1|timer:u2|H_pos[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[86] -to "top:u1|timer:u2|H_pos[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[87] -to "top:u1|timer:u2|H_pos[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[88] -to "top:u1|timer:u2|H_pos[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[89] -to "top:u1|timer:u2|H_pos[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[90] -to "top:u1|timer:u2|H_pos[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[91] -to "top:u1|timer:u2|H_pos[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[92] -to "top:u1|timer:u2|H_pos[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[93] -to "top:u1|timer:u2|H_pos[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[94] -to "top:u1|timer:u2|H_pos[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[95] -to "top:u1|timer:u2|H_pos[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[96] -to "top:u1|timer:u2|H_pos[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[97] -to "top:u1|timer:u2|V_pos[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[98] -to "top:u1|timer:u2|V_pos[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[99] -to "top:u1|timer:u2|V_pos[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[100] -to "top:u1|timer:u2|V_pos[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[101] -to "top:u1|timer:u2|V_pos[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[102] -to "top:u1|timer:u2|V_pos[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[103] -to "top:u1|timer:u2|V_pos[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[104] -to "top:u1|timer:u2|V_pos[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[105] -to "top:u1|timer:u2|V_pos[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[106] -to "top:u1|timer:u2|V_pos[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[107] -to "top:u1|timer:u2|V_pos[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[108] -to "top:u1|timer:u2|V_pos[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[109] -to "top:u1|timer:u2|V_pos[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[110] -to "top:u1|timer:u2|V_pos[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[111] -to "top:u1|timer:u2|V_pos[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[112] -to "top:u1|timer:u2|V_pos[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[113] -to "top:u1|timer:u2|V_pos[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[114] -to "top:u1|timer:u2|V_pos[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[115] -to "top:u1|timer:u2|V_pos[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[116] -to "top:u1|timer:u2|V_pos[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[117] -to "top:u1|timer:u2|V_pos[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[118] -to "top:u1|timer:u2|V_pos[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[119] -to "top:u1|timer:u2|V_pos[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[120] -to "top:u1|timer:u2|V_pos[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[121] -to "top:u1|timer:u2|V_pos[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[122] -to "top:u1|timer:u2|V_pos[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[123] -to "top:u1|timer:u2|V_pos[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[124] -to "top:u1|timer:u2|V_pos[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[125] -to "top:u1|timer:u2|V_pos[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[126] -to "top:u1|timer:u2|V_pos[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[127] -to "top:u1|timer:u2|V_pos[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[128] -to "top:u1|timer:u2|V_pos[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_trigger_in[129] -to "top:u1|timer:u2|valid_video" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[0] -to "top:u1|DRAM_CAS_N" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[1] -to "top:u1|DRAM_RAS_N" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[2] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|dma_ctl_irq" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[3] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[4] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[5] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[6] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[7] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[8] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[9] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[10] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[11] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[12] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[13] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[14] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[15] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[16] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[17] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[18] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[19] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[20] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[21] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[22] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[23] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[24] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[25] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[26] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[27] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[28] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_dma_0:dma_0|readaddress[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[29] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonmm_write_slave_waitrequest" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[30] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonmm_write_slave_write" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[31] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[32] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[33] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[34] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[35] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[36] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[37] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[38] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[39] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[40] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[41] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[42] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[43] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[44] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[45] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[46] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[47] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[48] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[49] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[50] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[51] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[52] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[53] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[54] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[55] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[56] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[57] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[58] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[59] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[60] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[61] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[62] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_data[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[63] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_ready" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[64] -to "top:u1|PD_LAB_9:u4|PD_LAB_9_fifo_0:fifo_0|avalonst_source_valid" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[65] -to "top:u1|timer:u2|H_pos[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[66] -to "top:u1|timer:u2|H_pos[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[67] -to "top:u1|timer:u2|H_pos[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[68] -to "top:u1|timer:u2|H_pos[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[69] -to "top:u1|timer:u2|H_pos[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[70] -to "top:u1|timer:u2|H_pos[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[71] -to "top:u1|timer:u2|H_pos[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[72] -to "top:u1|timer:u2|H_pos[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[73] -to "top:u1|timer:u2|H_pos[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[74] -to "top:u1|timer:u2|H_pos[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[75] -to "top:u1|timer:u2|H_pos[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[76] -to "top:u1|timer:u2|H_pos[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[77] -to "top:u1|timer:u2|H_pos[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[78] -to "top:u1|timer:u2|H_pos[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[79] -to "top:u1|timer:u2|H_pos[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[80] -to "top:u1|timer:u2|H_pos[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[81] -to "top:u1|timer:u2|H_pos[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[82] -to "top:u1|timer:u2|H_pos[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[83] -to "top:u1|timer:u2|H_pos[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[84] -to "top:u1|timer:u2|H_pos[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[85] -to "top:u1|timer:u2|H_pos[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[86] -to "top:u1|timer:u2|H_pos[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[87] -to "top:u1|timer:u2|H_pos[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[88] -to "top:u1|timer:u2|H_pos[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[89] -to "top:u1|timer:u2|H_pos[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[90] -to "top:u1|timer:u2|H_pos[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[91] -to "top:u1|timer:u2|H_pos[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[92] -to "top:u1|timer:u2|H_pos[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[93] -to "top:u1|timer:u2|H_pos[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[94] -to "top:u1|timer:u2|H_pos[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[95] -to "top:u1|timer:u2|H_pos[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[96] -to "top:u1|timer:u2|H_pos[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[97] -to "top:u1|timer:u2|V_pos[0]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[98] -to "top:u1|timer:u2|V_pos[10]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[99] -to "top:u1|timer:u2|V_pos[11]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[100] -to "top:u1|timer:u2|V_pos[12]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[101] -to "top:u1|timer:u2|V_pos[13]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[102] -to "top:u1|timer:u2|V_pos[14]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[103] -to "top:u1|timer:u2|V_pos[15]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[104] -to "top:u1|timer:u2|V_pos[16]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[105] -to "top:u1|timer:u2|V_pos[17]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[106] -to "top:u1|timer:u2|V_pos[18]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[107] -to "top:u1|timer:u2|V_pos[19]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[108] -to "top:u1|timer:u2|V_pos[1]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[109] -to "top:u1|timer:u2|V_pos[20]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[110] -to "top:u1|timer:u2|V_pos[21]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[111] -to "top:u1|timer:u2|V_pos[22]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[112] -to "top:u1|timer:u2|V_pos[23]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[113] -to "top:u1|timer:u2|V_pos[24]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[114] -to "top:u1|timer:u2|V_pos[25]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[115] -to "top:u1|timer:u2|V_pos[26]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[116] -to "top:u1|timer:u2|V_pos[27]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[117] -to "top:u1|timer:u2|V_pos[28]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[118] -to "top:u1|timer:u2|V_pos[29]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[119] -to "top:u1|timer:u2|V_pos[2]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[120] -to "top:u1|timer:u2|V_pos[30]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[121] -to "top:u1|timer:u2|V_pos[31]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[122] -to "top:u1|timer:u2|V_pos[3]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[123] -to "top:u1|timer:u2|V_pos[4]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[124] -to "top:u1|timer:u2|V_pos[5]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[125] -to "top:u1|timer:u2|V_pos[6]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[126] -to "top:u1|timer:u2|V_pos[7]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[127] -to "top:u1|timer:u2|V_pos[8]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[128] -to "top:u1|timer:u2|V_pos[9]" -section_id auto_signaltap_0
	set_instance_assignment -name CONNECT_TO_SLD_NODE_ENTITY_PORT acq_data_in[129] -to "top:u1|timer:u2|valid_video" -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[0] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[1] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[2] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[3] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[4] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[5] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[6] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[7] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[8] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[9] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[10] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[11] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[12] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[13] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[14] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[15] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[16] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[17] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[18] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[19] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[20] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[21] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[22] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[23] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[24] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[25] -to auto_signaltap_0|gnd -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[26] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[27] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[28] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[29] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[30] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name POST_FIT_CONNECT_TO_SLD_NODE_ENTITY_PORT crc[31] -to auto_signaltap_0|vcc -section_id auto_signaltap_0
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

    # Compile project with flow
	execute_flow -compile

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}

# change directory
cd ../source
