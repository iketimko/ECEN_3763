onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/CLOCK_50
add wave -noupdate /tb/KEY
add wave -noupdate /tb/SW
add wave -noupdate /tb/ADC_DOUT
add wave -noupdate /tb/DUT/u2/ADC_clk
add wave -noupdate /tb/DUT/ADC_clk_en
add wave -noupdate /tb/DUT/u1/enable
add wave -noupdate /tb/DUT/u1/clk_out
add wave -noupdate /tb/DUT/u2/CONVST
add wave -noupdate /tb/DUT/u2/SDO
add wave -noupdate /tb/DUT/u2/SDI
add wave -noupdate /tb/DUT/u2/binval
add wave -noupdate /tb/DUT/u2/COUNTER_VAL
add wave -noupdate /tb/DUT/u2/CTRL
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {120000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2048 ns}
