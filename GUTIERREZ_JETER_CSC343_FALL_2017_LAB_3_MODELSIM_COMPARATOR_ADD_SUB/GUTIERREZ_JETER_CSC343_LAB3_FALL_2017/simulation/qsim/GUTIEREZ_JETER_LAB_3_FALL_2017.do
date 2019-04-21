onerror {exit -code 1}
vlib work
vlog -work work GUTIEREZ_JETER_LAB_3_FALL_2017.vo
vlog -work work remove.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.GUTIERREZ_ADDER_4_BITS_vlg_vec_tst -voptargs="+acc"
vcd file -direction GUTIEREZ_JETER_LAB_3_FALL_2017.msim.vcd
vcd add -internal GUTIERREZ_ADDER_4_BITS_vlg_vec_tst/*
vcd add -internal GUTIERREZ_ADDER_4_BITS_vlg_vec_tst/i1/*
run -all
quit -f
