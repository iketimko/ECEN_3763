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
# File: setup.tcl
# Generated on: Mon Apr 11 15:44:10 2022

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
	if {[string compare $quartus(project) "setup"]} {
		puts "Project setup is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists setup]} {
		project_open -revision setup setup
	} else {
		project_new -revision setup setup
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name POST_FLOW_SCRIPT_FILE "quartus_stp:prog.tcl"
	set_global_assignment -name FAMILY "Cyclone V"
	set_global_assignment -name DEVICE 5CSXFC6D6F31C6
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 16.0.2
	set_global_assignment -name LAST_QUARTUS_VERSION "20.1.1 Standard Edition"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "18:59:46 JANUARY 17,2022"
	set_global_assignment -name DEVICE_FILTER_PACKAGE FBGA
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 896
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 6
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (SystemVerilog)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT "SYSTEMVERILOG HDL" -section_id eda_simulation
	set_global_assignment -name VERILOG_INPUT_VERSION SYSTEMVERILOG_2005
	set_global_assignment -name VERILOG_SHOW_LMF_MAPPING_MESSAGES OFF
	set_global_assignment -name EDA_TEST_BENCH_ENABLE_STATUS TEST_BENCH_MODE -section_id eda_simulation
	set_global_assignment -name EDA_NATIVELINK_SIMULATION_TEST_BENCH tb -section_id eda_simulation
	set_global_assignment -name EDA_TEST_BENCH_NAME tb -section_id eda_simulation
	set_global_assignment -name EDA_DESIGN_INSTANCE_NAME NA -section_id tb
	set_global_assignment -name EDA_TEST_BENCH_MODULE_NAME tb -section_id tb
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/tb.sv
	set_global_assignment -name SYSTEMVERILOG_FILE ../source/setup.sv
	set_global_assignment -name SDC_FILE setup.SDC
	set_global_assignment -name EDA_TEST_BENCH_FILE ../source/tb.sv -section_id tb
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
