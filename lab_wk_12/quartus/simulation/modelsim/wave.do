onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/KEY
add wave -noupdate /tb/SW
add wave -noupdate /tb/CLOCK_50
add wave -noupdate -radix unsigned /tb/DUT/u1/state
add wave -noupdate -color Magenta -height 25 /tb/DUT/u2/clkg_en
add wave -noupdate -color Magenta -height 25 /tb/DUT/ADC_SCLK
add wave -noupdate -height 25 /tb/DUT/u1/ADC_clk
add wave -noupdate -height 25 /tb/DUT/u1/CTRL
add wave -noupdate -color Yellow -height 25 /tb/DUT/u1/SDI
add wave -noupdate -color Yellow -height 25 /tb/DUT/u1/SDO
add wave -noupdate -color Yellow -height 25 /tb/DUT/u1/CONVST
add wave -noupdate -height 25 /tb/DUT/u1/binval
add wave -noupdate /tb/DUT/u1/DOUT
add wave -noupdate /tb/DUT/u1/u0/clk
add wave -noupdate /tb/DUT/u4/seg
add wave -noupdate /tb/DUT/u5/seg
add wave -noupdate /tb/DUT/u6/seg
add wave -noupdate /tb/DUT/u7/seg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {21800058 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 155
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {34635606 ps}
