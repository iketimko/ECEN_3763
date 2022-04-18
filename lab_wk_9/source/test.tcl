# Set Master Path
puts "----------------------------------------------"
puts "---------------- Running Test ----------------"
puts "----------------------------------------------"
puts ""
set master_path [lindex [get_service_paths master] 0]
puts "master_path is: $master_path"
after 100
set mpath [claim_service master $master_path ""]
puts "mpath is: $mpath"
after 100
# Set JTAG Path
set jpath [lindex [get_service_paths jtag_debug] 0]
puts "jpath is: $jpath"
after 100
# Reset system
puts "Resetting System ... ..."
jtag_debug_reset_system $jpath
after 10
puts "Reset Complete"
# Test Clock
set clk [jtag_debug_sense_clock $jpath]
if {$clk == 1}  {
    puts "The Clock is running Properly"
} else { 
    puts "ERROR: The Clock is Not Running"
}
# Test reset
set rst [jtag_debug_sample_reset $jpath]
if {$rst == 1}  {
    puts "The reset level is correct"
} else { 
    puts "ERROR: Incorrect Reset Level"
}
# Begin writing values to the SDRAM
puts "Writing 1000 Values to the SDRAM chip ... ..."
for {set i 0} {$i < 2000} {incr i 2} {
    master_write_16 $mpath $i 0x5555
}

# Begin reading values from the SDRAM
puts "Reading 1000 Values from the SDRAM chip ... ..."
set errflag 0
for {set i 0} {$i < 2000} {incr i 2} {
    if {[master_read_16 $mpath $i 1] != 0x5555}  {
        set errflag 1
    }
}
if {$errflag != 0} {
    # master_write_16 $mpath 0x10000000 0x0001
    puts "There was a read or write error"
} else {
    puts "There were no errors"
    # master_write_16 $mpath 0x10000000 0x0200  
}

# Reset the system and close the paths
puts "Operation Complete, Exiting ..."
jtag_debug_reset_system $jpath
close_service master $mpath
puts ""
puts "----------------------------------------------"
puts "--------------- Test Complete ----------------"
puts "----------------------------------------------"