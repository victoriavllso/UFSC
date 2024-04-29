.data
	n1: .word 0
	n2: .word 0
	valor1: .asciiz "Digite o valor de n1: "
	valor2: .asciiz "Digite o valor de n2: "
	novalinha: .asciiz "\n"
	resultado: .word 0
.text

main:
	la $s0, n1
	la $s1, n2
	la $s2, resultado
	lw $a2, 0($s0)
	lw $a3, 0($s1)
	jal soma
	
	sw $v0, 0($s2)
	
	li $v0, 10
	syscall
	
leitura:

#imprime a mensagem para n1
	li $v0, 4
	la $a0, valor1
	syscall
	
#le o inteiro n1

	li $v0, 5
	syscall
	move $a2, $v0
	
#imprime nova linha	
	li $v0, 4
	la $a0, novalinha
	syscall
	
#imprime mensagem para n2
	li $v0, 4
	la $a0, valor2
	syscall
	
#le o inteiro para n2	
	li $v0, 5
	syscall
	move $a3, $v0

	jr $ra

soma:
	add $sp, $sp, -4
	sw $ra, 0($sp)
	jal leitura
	
	lw $ra, 0($sp)
	add $sp, $sp,4
	
	add $t0, $a2, $a3
	move $v0, $t0
	jr $ra
	
