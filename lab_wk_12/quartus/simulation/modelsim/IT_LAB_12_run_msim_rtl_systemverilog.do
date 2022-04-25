transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib PD_L12
vmap PD_L12 PD_L12
vlog -vlog01compat -work PD_L12 +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/quartus/PD_L12/synthesis {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/quartus/PD_L12/synthesis/PD_L12.v}
vlog -vlog01compat -work PD_L12 +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/quartus/PD_L12/synthesis/submodules {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/quartus/PD_L12/synthesis/submodules/PD_L12_pll_0.v}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source/shift.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source/reset.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source/ADC_controller.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source/segment7.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source/clk_gate.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source/bin2bcd.sv}
vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/source/IT_LAB_12.sv}

vlog -sv -work work +incdir+C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/quartus/../source {C:/Users/idtti/OneDrive/Desktop/ECEN_3763/lab_wk_12/quartus/../source/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -L PD_L12 -voptargs="+acc"  tb

add wave *
view structure
view signals
run -all
