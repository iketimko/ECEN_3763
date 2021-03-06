# TCL File Generated by Component Editor 13.0dp
# Fri Aug 02 14:52:59 CST 2013
# DO NOT MODIFY


# 
# TERASIC_CLOCK_COUNT "TERASIC_CLOCK_COUNT" v1.0
#  2013.08.02.14:52:59
# 
# 

# 
# request TCL package from ACDS 13.0
# 
package require -exact qsys 13.0


# 
# module TERASIC_CLOCK_COUNT
# 
set_module_property DESCRIPTION ""
set_module_property NAME TERASIC_CLOCK_COUNT
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Terasic Technologies Inc./"
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME TERASIC_CLOCK_COUNT
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset quartus_synth QUARTUS_SYNTH "" "Quartus Synthesis"
set_fileset_property quartus_synth TOP_LEVEL TERASIC_CLOCK_COUNT
set_fileset_property quartus_synth ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file TERASIC_CLOCK_COUNT.v VERILOG PATH TERASIC_CLOCK_COUNT.v TOP_LEVEL_FILE

add_fileset sim_verilog SIM_VERILOG "" "Verilog Simulation"
set_fileset_property sim_verilog ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file TERASIC_CLOCK_COUNT.v VERILOG PATH TERASIC_CLOCK_COUNT.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point slave
# 
add_interface slave avalon end
set_interface_property slave addressAlignment NATIVE
set_interface_property slave addressUnits WORDS
set_interface_property slave associatedClock clock_sink
set_interface_property slave associatedReset clock_sink_reset
set_interface_property slave bitsPerSymbol 8
set_interface_property slave burstOnBurstBoundariesOnly false
set_interface_property slave burstcountUnits WORDS
set_interface_property slave explicitAddressSpan 0
set_interface_property slave holdTime 0
set_interface_property slave linewrapBursts false
set_interface_property slave maximumPendingReadTransactions 0
set_interface_property slave readLatency 0
set_interface_property slave readWaitTime 1
set_interface_property slave setupTime 0
set_interface_property slave timingUnits Cycles
set_interface_property slave writeWaitTime 0
set_interface_property slave ENABLED true
set_interface_property slave EXPORT_OF ""
set_interface_property slave PORT_NAME_MAP ""
set_interface_property slave SVD_ADDRESS_GROUP ""

add_interface_port slave s_address_in address Input 2
add_interface_port slave s_read_in read Input 1
add_interface_port slave s_readdata_out readdata Output 32
add_interface_port slave s_write_in write Input 1
add_interface_port slave s_writedata_in writedata Input 32
set_interface_assignment slave embeddedsw.configuration.isFlash 0
set_interface_assignment slave embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point conduit_end
# 
add_interface conduit_end conduit end
set_interface_property conduit_end associatedClock ""
set_interface_property conduit_end associatedReset ""
set_interface_property conduit_end ENABLED true
set_interface_property conduit_end EXPORT_OF ""
set_interface_property conduit_end PORT_NAME_MAP ""
set_interface_property conduit_end SVD_ADDRESS_GROUP ""

add_interface_port conduit_end CLK_1 export Input 1
add_interface_port conduit_end CLK_2 export Input 1


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink s_clk_in clk Input 1


# 
# connection point clock_sink_reset
# 
add_interface clock_sink_reset reset end
set_interface_property clock_sink_reset associatedClock clock_sink
set_interface_property clock_sink_reset synchronousEdges DEASSERT
set_interface_property clock_sink_reset ENABLED true
set_interface_property clock_sink_reset EXPORT_OF ""
set_interface_property clock_sink_reset PORT_NAME_MAP ""
set_interface_property clock_sink_reset SVD_ADDRESS_GROUP ""

add_interface_port clock_sink_reset s_reset_in reset Input 1

