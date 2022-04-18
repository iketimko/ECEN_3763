onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb/CLOCK_50
add wave -noupdate /tb/VGA_CLK
add wave -noupdate -radix hexadecimal /tb/VGA_R
add wave -noupdate -radix hexadecimal /tb/VGA_G
add wave -noupdate -radix hexadecimal /tb/VGA_B
add wave -noupdate -radix hexadecimal /tb/u0/u3/VGA_RGB
add wave -noupdate -radix octal /tb/u0/u3/reg_add
add wave -noupdate -radix decimal /tb/u0/u3/H_pos
add wave -noupdate -radix decimal /tb/u0/u3/V_pos
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {47419 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 172
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
WaveRestoreZoom {0 ps} {266168 ps}
