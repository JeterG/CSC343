onerror {exit -code 1}
vlib work
vlog -work work GUTIERREZ_JETER_LAB6_MEMORY_LAB.vo
vlog -work work RAMPORT1_SIMULATION.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.RAMPORT1_vlg_vec_tst -voptargs="+acc"
vcd file -direction GUTIERREZ_JETER_LAB6_MEMORY_LAB.msim.vcd
vcd add -internal RAMPORT1_vlg_vec_tst/*
vcd add -internal RAMPORT1_vlg_vec_tst/i1/*
run -all
quit -f
