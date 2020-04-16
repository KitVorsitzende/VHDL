onerror {quit -f}
vlib work
vlog -work work choose.vo
vlog -work work choose.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.choose_vlg_vec_tst
vcd file -direction choose.msim.vcd
vcd add -internal choose_vlg_vec_tst/*
vcd add -internal choose_vlg_vec_tst/i1/*
add wave /*
run -all
