transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {sadv1.vho}

vcom -93 -work work {C:/Users/victo/OneDrive/Documentos/GitHub/sistemas-digitais/Relatorios/Relatorio3/sad-v1/tb_v1.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUV=sadv1_vhd.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb_v1

add wave *
view structure
view signals
run 5000 ns
