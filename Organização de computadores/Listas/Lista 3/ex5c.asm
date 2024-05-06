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
	
### if a<=b

bge $t1, $t0, soma
li $v0, 10 #se nao for, encessa o programa
syscall


soma: #se for, faz a soma
	addi $t0, $t0, 1
	sw $t0, 0($s2)