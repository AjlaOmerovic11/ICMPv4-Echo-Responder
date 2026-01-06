onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_icmp_echo_mac_ignore/s_state
add wave -noupdate /tb_icmp_echo_mac_ignore/clock
add wave -noupdate /tb_icmp_echo_mac_ignore/reset
add wave -noupdate -radix hexadecimal /tb_icmp_echo_mac_ignore/in_data
add wave -noupdate /tb_icmp_echo_mac_ignore/in_valid
add wave -noupdate /tb_icmp_echo_mac_ignore/in_sop
add wave -noupdate /tb_icmp_echo_mac_ignore/in_eop
add wave -noupdate /tb_icmp_echo_mac_ignore/in_ready
add wave -noupdate /tb_icmp_echo_mac_ignore/out_data
add wave -noupdate /tb_icmp_echo_mac_ignore/out_valid
add wave -noupdate /tb_icmp_echo_mac_ignore/out_sop
add wave -noupdate /tb_icmp_echo_mac_ignore/out_eop
add wave -noupdate /tb_icmp_echo_mac_ignore/out_ready
add wave -noupdate /tb_icmp_echo_mac_ignore/clk_period
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {524830 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {315 ns}
