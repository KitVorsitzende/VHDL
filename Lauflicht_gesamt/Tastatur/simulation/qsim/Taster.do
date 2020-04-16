onerror {quit -f}
vlib work
vlog -work work Taster.vo
vlog -work work Taster.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Taster_vlg_vec_tst
vcd file -direction Taster.msim.vcd
vcd add -internal Taster_vlg_vec_tst/*
vcd add -internal Taster_vlg_vec_tst/i1/*
add wave /*
run -all
