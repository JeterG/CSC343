transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {GUTIERREZ_JETER_LAB_7_FALL_2017_7_1200mv_85c_slow.vo}

