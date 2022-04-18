onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/CLOCK_50
add wave -noupdate /tb/KEY
add wave -noupdate -radix decimal /tb/SW
add wave -noupdate -divider {COUNTER OUTPUTS}
add wave -noupdate -radix decimal /tb/LEDR
add wave -noupdate -radix decimal /tb/DUT/COUNTER_VAL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {196248 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 116
configure wave -valuecolwidth 47
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {408643 ps} {605519 ps}
