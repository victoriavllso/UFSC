.data
	resultado: .word 0
	
.text

main:
	la $s0, resultado
	
	#lendo a base
	li $v0, 5
	syscall
	move $a0, $v0
	
	#lendo o expoente
	li $v0, 5
	syscall
	move $a1, $v0
	
	jal pow
	
	sw $v0, 0($s0)
	
	li $v0, 10
	syscall
	
pow:
	li $t0, 1 #res = 1
	li $t1, 0 #contador
	
	loop:
		add $t1, $t1, 1
		mul $t0, $t0, $a0
		bne $t1, $a1, loop
######depois do ultimo beq, vem para cá
	move $v0, $t0
	jr $ra