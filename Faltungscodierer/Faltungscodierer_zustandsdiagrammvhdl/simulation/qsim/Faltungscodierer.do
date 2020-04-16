onerror {quit -f}
vlib work
vlog -work work Faltungscodierer.vo
vlog -work work Faltungscodierer.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Faltungscodierer_vlg_vec_tst
vcd file -direction Faltungscodierer.msim.vcd
vcd add -internal Faltungscodierer_vlg_vec_tst/*
vcd add -internal Faltungscodierer_vlg_vec_tst/i1/*
add wave /*
run -all
