transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/student2/j262li/coe328/lab3/seg7.vhd}
vcom -93 -work work {/home/student2/j262li/lab5/moore.vhd}
vcom -93 -work work {/home/student2/j262li/coe328/lab4b/decod1.vhd}
vcom -93 -work work {/home/student2/j262li/coe328/lab6/latch1.vhd}
vcom -93 -work work {/home/student2/j262li/lab6/ALU_p1.vhd}
vcom -93 -work work {/home/student2/j262li/coe328/lab6/combiner4_8.vhd}
vcom -93 -work work {/home/student2/j262li/coe328/lab6/combiner8_16.vhd}
vcom -93 -work work {/home/student2/j262li/coe328/lab6/decouple1_3.vhd}
vcom -93 -work work {/home/student2/j262li/coe328/lab6/ALUDE.vhd}

