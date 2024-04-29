.data 
	g: .word 0
	h: .word 0
	i: .word 0
	j: .word 0
	f: .word 0
.text


main:

	la $s0, f #armazena o resultado

	
	#lendo g
	li $v0, 5 #comando para ler inteiro
	syscall
	move $a0, $v0
	#lendo h
	li $v0, 5 #comando para ler inteiro
	syscall
	move $a1, $v0
	
	#lendo i
	li $v0, 5 #comando para ler inteiro
	syscall
	move $a2, $v0

	#lendo j
	li $v0, 5 #comando para ler inteiro
	syscall
	move $a3, $v0
	
	jal calcula
	
	sw $v0, 0($s0) #armazena na memória

    li $v0, 10
    syscall

calcula:
	addi $sp, $sp, -4 #aumenta a pilha
	sw $s1, 0($sp)	#armazenando s1
	add $t1, $a0, $a1 #g+h
	add $t2, $a2, $a3 #i+i
	sub $s1, $t1, $t2 #(g+h) - (i+j)
	move $v0, $s1	#move o resultado para o reg de retorno
	lw  $s1, 0($sp) #restaura o registrador
	addi $sp, $sp, 4 #limpa a pilha
	jr $ra


	
	
	
