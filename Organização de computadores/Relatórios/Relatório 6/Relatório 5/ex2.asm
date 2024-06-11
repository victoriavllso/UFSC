.data

	resultado: .word 0
	n: .word 0

	# ---- strings para imprimir no console ----
	recebeN: .asciiz "Insira o valor de n: "
	newLine: .asciiz "\n"
	valorResultado: .asciiz "O fatorial de n é: "
.text
	la $s0, resultado
	la $s1, n

	# ---- recebendo n por teclado -----
 	# ---- imprime mensagem para receber o valor de n ----
 	li $v0, 4
 	la $a0, recebeN
 	syscall
 	
   	# ---- recebe o valor de n ----
 	li $v0, 5	#comando para ler inteiro
 	syscall
 	move $a1, $v0	#salva o inteiro lido em $t0
 	
	li $a2, 1

	
	jal fatorial
	
	move $v1, $t1
	sw $v1, 0($s1)
 	# ---- imprime nova linha ----	
 	li $v0, 4
 	la $a0, valorResultado
 	syscall
 	
 	 # ---- imprime resultado ----
 	 li $v0, 1
 	 li $a0, 0
 	 add $a0, $a0, $v1
 	 syscall

fatorial:
	addi	$sp, $sp, -8 		# incrementa a pilha para armazenar RA e valor
	sw	$ra, 4($sp)		# salva o ra atual 
	sw	$a1, 0($sp)		# salva o n atual 
	

	beq	$a1, $zero return	# se caso, n chegar em 0, a funcao acaba

	addi	$a1, $a1, -1		# subtrai 1 de n
	jal 	fatorial
	
	

	mul	$t1, $t1,  $a1		# multiplicação recursiva
	
	return:	

		lw 	$ra, 4($sp)
		lw	$a1, 0($sp)
		addi	$sp, $sp, 8
		jr	$ra		#pula para mul $t1, $t1,  $a1	