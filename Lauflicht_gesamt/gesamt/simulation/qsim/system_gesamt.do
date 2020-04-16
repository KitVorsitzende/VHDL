onerror {quit -f}
vlib work
vlog -work work system_gesamt.vo
vlog -work work system_gesamt.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.system_gesamt_vlg_vec_tst
vcd file -direction system_gesamt.msim.vcd
vcd add -internal system_gesamt_vlg_vec_tst/*
vcd add -internal system_gesamt_vlg_vec_tst/i1/*
add wave /*
run -all
