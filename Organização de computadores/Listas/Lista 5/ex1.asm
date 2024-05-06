.data
	#dados: .half 1,2,4, 5
	A: .word 1
	B: .word 2
	C: .word 3
	d: .word 4
.text
	la $t0, A
	lh $t1 0($t0)
	
