onerror {quit -f}
vlib work
vlog -work work Hochpass.vo
vlog -work work Hochpass.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Hochpass_vlg_vec_tst
vcd file -direction Hochpass.msim.vcd
vcd add -internal Hochpass_vlg_vec_tst/*
vcd add -internal Hochpass_vlg_vec_tst/i1/*
add wave /*
run -all
