transcript on
if ![file isdirectory IT_LAB_7_iputf_libs] {
	file mkdir IT_LAB_7_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/PLL_quartus_files/PLL_sim/PLL.vo"

vlog -vlog01compat -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/IT_LAB_7.v}
vlog -vlog01compat -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/quartus {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/quartus/ROM_640p.v}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/reset.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/pixelgen.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/counter.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/timer.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/top.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/source/clock.sv}

vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/quartus/../source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_7/quartus/../source/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb

add wave *
view structure
view signals
do wave.do
run -all
