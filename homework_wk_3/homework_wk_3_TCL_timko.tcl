puts "-> Initializing ISSP environment"
set cable [lindex [get_hardware_names] 0]
set device_name [lindex [get_device_names -hardware_name $cable] 1]
start_insystem_source_probe -device_name $device_name -hardware_name $cable
puts "-> Counter in reset for 5 seconds"
write_source_data -instance_index 0 -value 0
after 5000
puts "-> Counter incrementing for 5 seconds."
write_source_data -instance_index 1 -value 1
write_source_data -instance_index 0 -value 1

after 5000
puts "-> Changing counter direction and running for 5 seconds"
write_source_data -instance_index 1 -value 0
after 5000
puts "-> Resetting the counter"
write_source_data -instance_index 0 -value 0
puts "-> Ending ISSP environment"
end_insystem_source_probe
