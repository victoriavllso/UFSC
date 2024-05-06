.data
	end: .word 0x10010020
	
	ligades: .asciiz "Digite 1 para ligar e 0 para desligar: "
	newline: .asciiz "\n"
	qualbit: .asciiz "Qual bit deseja desligar ?: "
	
	
.text
	la $s0, end
	li $t0, 4294867195 #carrega um vetor qualquer de 32 bits
	
	
	lw $s0, 0($s0)
	
	sw $t0, 0($s0)
	
	li $v0, 4
	la $a0, ligades
	syscall
	
	li $v0, 5 #le o bit 0 ou 1
	syscall
	move $t0, $v0
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 4
	la $a0, qualbit
	syscall
	
	li $v0, 5 #le qual bit aplicar a mascara
	syscall
	move $t1, $v0
	
	sllv $s3, $s3, $t1
	
	
	beq $t0, 0, desligar
	#SE NAO ELE LIGA AQUI
	
	desligar:
		not $s3, $s3
		and $s4, $s0, $s3