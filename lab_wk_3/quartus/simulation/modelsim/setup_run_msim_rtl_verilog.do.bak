transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_1/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_1/source/setup.sv}

vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_1/quartus/../source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_1/quartus/../source/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
