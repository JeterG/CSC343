onerror {exit -code 1}
vlib work
vlog -work work GUTIERREZ_JETER_LAB_1_FALL_2017.vo
vlog -work work GUTIERREZ_CLA32_ADDER_SUBTRACTOR.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.GUTIERREZ_cla32_add_subtract_vlg_vec_tst -voptargs="+acc"
vcd file -direction GUTIERREZ_JETER_LAB_1_FALL_2017.msim.vcd
vcd add -internal GUTIERREZ_cla32_add_subtract_vlg_vec_tst/*
vcd add -internal GUTIERREZ_cla32_add_subtract_vlg_vec_tst/i1/*
run -all
quit -f
