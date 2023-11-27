transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {sad-v3.vho}

vcom -93 -work work {C:/Users/victo/OneDrive/Documentos/GitHub/sistemas-digitais/Relatorios/Relatorio3/sad-v3/testebench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUV=sad-v3_vhd.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  testebench

add wave *
view structure
view signals
run -all
