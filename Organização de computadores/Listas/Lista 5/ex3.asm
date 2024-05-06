.data
	string: .space 20 #tamanho máximo que pode ter
	
.text
	
#string de 7 digitos, ou seja, 7 bytes. Cada byte é um char (digito)
	
	li $v0, 8
	la $a0, string
	la $a1, 8	#numero de bytes que serão lidos
	syscall

	