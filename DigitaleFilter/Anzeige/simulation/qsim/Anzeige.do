onerror {quit -f}
vlib work
vlog -work work Anzeige.vo
vlog -work work Anzeige.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Anzeige_vlg_vec_tst
vcd file -direction Anzeige.msim.vcd
vcd add -internal Anzeige_vlg_vec_tst/*
vcd add -internal Anzeige_vlg_vec_tst/i1/*
add wave /*
run -all
