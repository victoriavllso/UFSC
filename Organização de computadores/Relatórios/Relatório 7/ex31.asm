.data
	matriz: .space 262144		# aloca 256 linhas * 256 colunas * 4 bytes = 262.144 bytes de espaços no vetor

	
.text
	la 	$s0, matriz				# carrega endereço base da matriz
	li 	$t0, 0					# inicia row como 0
	li	$t2, 0					# inicia value como 0
	li 	$t3, 256				# registrador que verifica se preenchemos as 16 posições
	
	loop_out:
		li	$t1, 0				# reseta a coluna para 0

		loop_in:
			# --- calculando o offset (distancia do endereço base ao dado atual) = ( linha * 256 + coluna ) * tam_word --- 
			sll 	$t4, $t0, 8		# offset ($t4) = linha * 256
			add 	$t4, $t4, $t1		# offset += coluna
			sll 	$t4, $t4, 2		# offset *= 4 (fazendo isso pois estamos trabalhando com word = 4 bytes)
			add 	$t4, $s0, $t4       	# endereço = end. base + offset

			# --- mexendo com a matriz ---
			sw 	$t2, 0($t4)		# armazena value na posição da matriz
			addi 	$t2, $t2, 1		# value += 1
			addi 	$t1, $t1, 1		# coluna += 1
			bne  	$t1, $t3, loop_in	# verificamos se coluna < 16, caso contrário repetimos o loop interno

			addi 	$t0, $t0, 1		# linha += 1
			bne 	$t0, $t3, loop_out  	# pula para o loop de fora

	li	$v0, 10
	syscall