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
	
	li $t2, 5

while: 
	bge $t0, $t2, fim
	addi $t0, $t0,1
	addi $t1, $t1,2
	j while
	
fim:
	sw $t0, 0($s0)
	sw $t1, 0($s1)
	