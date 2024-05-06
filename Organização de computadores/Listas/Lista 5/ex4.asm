.data
	string: .space 8 #.space reserva o número especificado de espaço na memória
	
	letraa:	.byte 'a' #o tamanho de um char é um byte a(decimal) = 61 (hexadecimal)
	fimstring: .byte '\0'
	resultado: .word 0
.text
	
#string de 7 digitos, ou seja, 7 bytes. Cada byte é um char (digito)

	la $s1, letraa
	la $s2, fimstring
	la $s4 resultado
	
	
	lb $t1, 0($s1) #carrega a letra a 
	lb $t4, 0($s2) #carrega o fim da string
	
	li $v0, 8	#pede entrada de palavra
	la $a0, string
	la $a1, 8	#numero de bytes que serão lidos (declaramos 1 a mais pois o último é o caracter nulo "fim da string")
	syscall
	

contagem:
	li $t0, 0	#contador de letras a

		loop:
			lb $t3, 0($a0)	#carrega a letra da string no endereço a0
			beq $t3, $t1, soma	#compara se a letra atual é igual a letra "a"
			add $a0, $a0, 1 #vai pro prox byte (proxima letra da string
			beq $t3, $t4, fim	# se chegou ao final da string, salva na memória
			j loop	#repete o loop até chegar ao fim da string
soma:
	addi $t0, $t0,1	#acrescenta 1 no contador de letras
	add $a0, $a0, 1 #vai pro prox byte
	j loop	

fim:
	sw $t0, 0($s4)
			
