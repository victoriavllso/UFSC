.data
	vetor: .word 0,0,0,0
	
.text
	la $s0, vetor
	li $t0, 1
	sw $t0, 0($s0)
	#add $s0, $s0, 4 #pula p prox endereço
	li $t0, 3
	sw $t0, 4($s0) #pula p prox e salva o numero 2
	li $t0, 2
	sw $t0, 8($s0)