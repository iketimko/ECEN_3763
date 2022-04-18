# This file should be in your source directory
# Instance 0 is the pushbutton ISSP, instance 1 is the SW ISSP.

# Uncomment lines 6-8 to automatically program your board (Windows PC)
# You must program your board once using the Quartus programmer to create the .cdf file
puts "Programming board........"
qexec "quartus_pgm.exe ../quartus/setup.cdf"
puts "Programming complete."

puts "\nOpen project."
project_open "C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_3/quartus/setup"

# initialize_connections, this will return DE-SoC [USB-1]
set cable [lindex [get_hardware_names] 0]
puts "\nThe Bitblaster cable name is $cable."

# this will return the FPGA device
# returns @2: 5CS3BA6(.|ES)/5CSEMA6/.. (ox02D020DD)
set device_name [lindex [get_device_names -hardware_name $cable] 1]
puts "\nThe FPGA fabric containing the ISSP blocks is called $device_name."

#  Connect to the ISSP cores
start_insystem_source_probe -device_name $device_name -hardware_name $cable

#------------ Begin Program Code -------------------------
# NOTES:
#   - RESET Block: Instance Index: 0
#       - Reset: Value 0
#   - KEY Block: Instance Index 1
#       - Reset: Value 0
#       - Set count from switch: Value 1
#       - Change Direction: Value 2
#       - UNUSED KEY: Value 3
#   - SWITCH Block: Instance Index 2
#       - Each index (0-9) sets the switch value for that switch

write_source_data -instance_index 1 -value 1110
puts "\n-------------------------------------"
puts "Hello, my name is FPGAvery"
after 1000
puts "These are all the things I can do!"
puts "-------------------------------------\n"

# Do a Sweep with the LEDs -----------------------------
write_source_data -instance_index 1 -value 1101
write_source_data -instance_index 2 -value 1000000000
after 250
write_source_data -instance_index 2 -value 0100000000
after 250
write_source_data -instance_index 2 -value 0010000000
after 250
write_source_data -instance_index 2 -value 0001000000
after 250
write_source_data -instance_index 2 -value 0000100000
after 250
write_source_data -instance_index 2 -value 0000010000
after 250
write_source_data -instance_index 2 -value 0000001000
after 250
write_source_data -instance_index 2 -value 0000000100
after 250
write_source_data -instance_index 2 -value 0000000010
after 250
write_source_data -instance_index 2 -value 0000000001
after 250
write_source_data -instance_index 2 -value 0000000010
after 250
write_source_data -instance_index 2 -value 0000000100
after 250
write_source_data -instance_index 2 -value 0000001000
after 250
write_source_data -instance_index 2 -value 0000010000
after 250
write_source_data -instance_index 2 -value 0000100000
after 250
write_source_data -instance_index 2 -value 0001000000
after 250
write_source_data -instance_index 2 -value 0010000000
after 250
write_source_data -instance_index 2 -value 0100000000
after 250
write_source_data -instance_index 2 -value 1000000000
after 250
write_source_data -instance_index 2 -value 1111111111
after 2000

puts "-> Setting and reading Switch Value"
write_source_data -instance_index 2 -value 1010101010
after 500
write_source_data -instance_index 2 -value 0101010101
after 500
write_source_data -instance_index 2 -value 1010101010
after 500
write_source_data -instance_index 2 -value 0101010101
after 500
write_source_data -instance_index 2 -value 1010101010
after 500
write_source_data -instance_index 2 -value 0101010101
after 500
write_source_data -instance_index 2 -value 0000000000

puts "-> Counter in reset for 3 seconds"
write_source_data -instance_index 1 -value 1110
after 3000

puts "-> Counter incrementing for 3 seconds."
write_source_data -instance_index 1 -value 1111
after 3000

puts "-> Changing counter direction and running for 3 seconds"
write_source_data -instance_index 1 -value 1011
after 3000

puts "-> Reading counter value from switches"
write_source_data -instance_index 1 -value 1101
after 3000

puts "-> Resetting the counter"
write_source_data -instance_index 1 -value 1110

#------------ End Program Code ---------------------------

# Test complete
puts "\nTest complete."
end_insystem_source_probe
project_close

# Set working directory back to source
cd ../source

