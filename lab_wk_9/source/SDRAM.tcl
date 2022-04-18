# Set Master Path
puts "----------------------------------------------"
puts "------------ Programming Memory --------------"
puts "----------------------------------------------"
puts ""
set master_path [lindex [get_service_paths master] 0]
set mpath [claim_service master $master_path ""]
# Set JTAG Path
set jpath [lindex [get_service_paths jtag_debug] 0]

# Write the data to SDRAM
    for {set i 0} {$i < 1228800} {incr i 4} {
        if {$i < 409600} {
            # write cherry RGB
            master_write_32 $mpath $i 0xFF0027
        } elseif {$i < 819200} {
            # write citrus RGB
            master_write_32 $mpath $i 0xC1FF00
        } else {
            # write green/blue RGB
            master_write_32 $mpath $i 0x00F166             
        }
    }

# For Debugging
puts "The first 30 values written are"
puts [master_read_32 $mpath 0 30]

# Quit gracefully
jtag_debug_reset_system $jpath
close_service master $mpath
puts ""
puts "----------------------------------------------"
puts "----------- Programming Complete -------------"
puts "----------------------------------------------"