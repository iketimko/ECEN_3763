puts "----------------------------------------------"
puts "-------------- Executing Loop ----------------"
puts "----------------------------------------------"
puts ""
puts ""
# initialize variables
set master_path [lindex [get_service_paths master] 0]
set mpath [claim_service master $master_path ""]
# Set JTAG Path
set jpath [lindex [get_service_paths jtag_debug] 0]

# Program Read Start address
master_write_32 $mpath 0x20000004 0

# Program Write Start address
master_write_32 $mpath 0x20000008 0

# Set Transfer length register
# Write (640*480*4) bytes onto the Transfer length register
master_write_32 $mpath 0x2000000c 0x0012C000

# Program DMA controller without go bit
master_write_32 $mpath 0x20000018 0x294

# Clear status Register
master_write_32 $mpath 0x20000000 0

# FOR DEBUGGING
puts "The values of the first 7 registers are: "
puts [master_read_32 $mpath 0x20000000 7]

# Give go command to the DMA controller
master_write_32 $mpath 0x20000018 0x29c

puts "Running ..."

while {true} {
    # check the status register to ensure the done bit is set
    if {[master_read_32 $mpath 0x20000000 1] == 0x11} {
        # Program Read Start address
        master_write_32 $mpath 0x20000004 0
        # Program Write Start address
        master_write_32 $mpath 0x20000008 0
        # Set Transfer length register
        master_write_32 $mpath 0x2000000c 0x12C000
        # Program DMA controller without go bit
        master_write_32 $mpath 0x20000018 0x294
        # Clear status Register
        master_write_32 $mpath 0x20000000 0
        # Give go command to the DMA controller
        master_write_32 $mpath 0x20000018 0x29c
    }
}

