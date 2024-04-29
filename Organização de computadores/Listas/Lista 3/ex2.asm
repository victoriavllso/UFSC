.data

	vetor: .word 1,2,3,4,5
	resultado: .word 0
	
	
.text
	
main:	
	la $s0, vetor
	la $s1, resultado
	
	move $a0, $s0
	li $a1, 5
	
	 jal soma
	  
	sw $v0, 0($s1)
	
soma:
	addi $sp, $sp, -8
	sw $ra, 0($sp)
	sw $a0, 4($sp)
	
	bne $a1, $zero loop
	add $sp, $sp, 8
	jr $ra
	
loop:
	sub $a1, $a1, 1
	add $a0, $a0, 4 #pega o próximo elemento do vetor
	jal soma
	
	lw $a0, 4($sp)
	lw $ra, 0($sp)
	add $sp, $sp, 8
	lw $t1, 0($a0)
	add $v0, $v0, $t1
	jr $ra
