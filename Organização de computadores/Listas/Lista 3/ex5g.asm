.data
	a: .word 1
	b: .word 2
	resultado: .word 0
	
.text
	la $s0, a
	la $s1, b
	la $s2,resultado


	lw $t0, 0($s0)
	lw $t1, 0($s1)
	
	
	li $t2, 0
	li $t5, 5
for:
	beq $t2, $t5, fim
	addi $t2, $t2, 1
	add $t0, $t1, 1
	add $t1, $t1, 3
	j for

	
			
fim:
	sw $t0, 0($s0)
	sw $t1, 0($s1)
	