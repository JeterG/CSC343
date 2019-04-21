onerror {exit -code 1}
vlib work
vlog -work work SRAM_32_BOARD.vo
vlog -work work Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Ramport_vlg_vec_tst -voptargs="+acc"
vcd file -direction SRAM_32_BOARD.msim.vcd
vcd add -internal Ramport_vlg_vec_tst/*
vcd add -internal Ramport_vlg_vec_tst/i1/*
run -all
quit -f
