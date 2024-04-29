.data
	a: .word 4
	b: .word 10
	res: .word 0
.text	
j main

CalculaAreaQuadrado:
	mul $t0, $a1, $a0
	add $v0, $v0, $t0
	jr $ra
	
main:
	la $s0, a
	la $s1, b
	la $s2, res
	lw $a0, 0($s0)
	lw $a1, 0($s1)
	jal CalculaAreaQuadrado
	
	sw $v0, 0($s2)
