set master_path [lindex [get_service_paths master] 0]
puts "master_path is: $master_path"
after 100
set mpath [claim_service master $master_path ""]
puts "mpath is: $mpath"
after 100
set jpath [lindex [get_service_paths jtag_debug] 0]
puts "jpath is: $jpath"
after 100
jtag_debug_reset_system $jpath
after 100
set clk [jtag_debug_sense_clock $jpath]
puts "Clock is: $clk"
after 100
set rst [jtag_debug_sample_reset $jpath]
puts "reset value is: $rst"
after 2000
master_write_8 $mpath 0x0 0x1
after 2000
master_write_8 $mpath 0x10 0x55
after 2000
set sw_read [master_read_16 $mpath 0x100 1]
puts "Switch Value is: $sw_read"
after 2000
jtag_debug_reset_system $jpath
close_service master $mpath
