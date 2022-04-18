# Set Master Path
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
}  {else 
    puts "ERROR: The Clock is Not Running"
}
# Test reset
set rst [jtag_debug_sample_reset $jpath]
if {$rst == 1}  {
    puts "The reset level is correct"
}  {else 
    puts "ERROR: Incorrect Reset Level"
}
# write a value to the 8 bit PIO
master_write_8 $mpath 0x10 0x55
after 2000
# Quit Gracefully
jtag_debug_reset_system $jpath
close_service master $mpath
puts "Successfully completed ... Goodbye ..."
