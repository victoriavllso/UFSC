.data
	a: .word 0
	b: .word 0
	resultado: .word 0
	
.text
	la $s0, a
	la $s1, b
	la $s2,resultado
	li $v0, 5
	syscall
	move $t0, $v0 #guarda a
	
	li $v0, 5
	syscall
	move $t1, $v0 #guarda b
	
	li $t2, 5 #REPRESENTA C

	beq $t0, 1, casoa
	beq $t0,2, casob
	
	#se nao default
	add $t1, $t2, 0
	li $v0, 10
	syscall

casoa:
	add $t1, $t2, 1
	sw $t1, 0($s1)
	li $v0, 10
	syscall
	
casob:
	add $t1, $t2, 2
	sw $t1, 0($s1)
	li $v0, 10
	syscall