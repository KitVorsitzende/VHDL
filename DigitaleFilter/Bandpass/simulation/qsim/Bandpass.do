onerror {quit -f}
vlib work
vlog -work work Bandpass.vo
vlog -work work Bandpass.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Bandpass_vlg_vec_tst
vcd file -direction Bandpass.msim.vcd
vcd add -internal Bandpass_vlg_vec_tst/*
vcd add -internal Bandpass_vlg_vec_tst/i1/*
add wave /*
run -all
