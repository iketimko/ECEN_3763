#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3

#**************************************************************
# Create Clocks
#**************************************************************

create_clock -name clock -period 10.000 [get_ports clock]

#**************************************************************
# Create Virtual Clocks
#**************************************************************

create_clock -name Vclock_in -period 10.000
create_clock -name Vclock_out -period 10.000

#**************************************************************
# Delay Information
#**************************************************************

set_input_delay -clock Vclock_in -max [expr 4+5-(0.5-2) ] [get_ports datain*]
set_input_delay -clock Vclock_in -min [expr 2+3-(1.5-1) ] [get_ports datain*]

set_output_delay -clock Vclock_out -min [expr -3+2.5-(2.5-0.5) ] [get_ports dataout*]
set_output_delay -clock Vclock_out -max [expr 2+3.5-(0.5-1.5) ] [get_ports dataout*]
