onerror {quit -f}
vlib work
vlog -work work Lauflicht.vo
vlog -work work Lauflicht.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lauflicht_vlg_vec_tst
vcd file -direction Lauflicht.msim.vcd
vcd add -internal Lauflicht_vlg_vec_tst/*
vcd add -internal Lauflicht_vlg_vec_tst/i1/*
add wave /*
run -all
