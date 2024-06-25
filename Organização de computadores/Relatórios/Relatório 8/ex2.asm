.data
# Definindo matrizes
	A: 	.word 	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 
	B: 	.word 	1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16

# Definindo variáveis
	MAX:		.word	4	# tamanho da matriz
	block_size:	.word	2	# tamanho do bloco

.text

main:
    # Carregar os endereços base e parâmetros
    la $s0, A              # endereço base de A
    la $s1, B              # endereço base de B
    lw $s2, MAX            # carregar MAX em $s2
    lw $s3, block_size     # carregar block_size em $s3

    # Loop externo sobre os blocos (i)
    li $t0, 0              # $t0 = i = 0
outer_loop:
    bge $t0, $s2, exit     # se i >= MAX, sair do loop

    # Loop externo sobre os blocos (j)
    li $t1, 0              # $t1 = j = 0
block_outer_loop:
    bge $t1, $s2, next_outer_loop  # se j >= MAX, próximo bloco de i

    # Loop interno sobre os elementos do bloco (ii)
    move $t2, $t0          # $t2 = ii = i
in_i_loop:
    
    #bge $t2, $s2, block_outer_loop # se ii >= MAX, próximo bloco de j
    add $t4, $t0, $s3      # $t4 = i + block_size
    bge $t2, $t4, block_outer_loop # se ii >= i + block_size, próximo bloco de j

    # Loop interno sobre os elementos do bloco (jj)
    move $t3, $t1          # $t3 = jj = j
in_j_loop:
    bge $t3, $s2, in_i_loop  # se jj >= MAX, próximo bloco de ii
    add $t5, $t1, $s3      # $t5 = j + block_size
    bge $t3, $t5, in_i_loop  # se jj >= j + block_size, próximo bloco de ii

    # Calcular o endereço de A[ii][jj]
    mul $t6, $t2, $s2      # $t6 = ii * MAX
    add $t6, $t6, $t3      # $t6 = ii * MAX + jj
    sll $t6, $t6, 2        # $t6 = (ii * MAX + jj) * 4 (endereço de A[ii][jj])
    add $t6, $t6, $s0      # endereço final de A[ii][jj] = base(A) + offset

    # Carregar o valor de A[ii][jj]
    lw $t7, 0($t6)

    # Calcular o endereço de B[jj][ii]
    mul $t8, $t3, $s2      # $t8 = jj * MAX
    add $t8, $t8, $t2      # $t8 = jj * MAX + ii
    sll $t8, $t8, 2        # $t
    # Calcular o endereço de B[jj][ii]
    mul $t8, $t3, $s2      # $t8 = jj * MAX
    add $t8, $t8, $t2      # $t8 = jj * MAX + ii
    sll $t8, $t8, 2        # $t8 = (jj * MAX + ii) * 4 (endereço de B[jj][ii])
    add $t8, $t8, $s1      # endereço final de B[jj][ii] = base(B) + offset

    # Carregar o valor de B[jj][ii]
    lw $t9, 0($t8)			############----------------------------carregando o endereço de B errado

    # Somar A[ii][jj] com B[jj][ii]
    add $t7, $t7, $t9

    # Armazenar o resultado de volta em A[ii][jj]
    sw $t7, 0($t6)			############----------------------------carregando o endereço de offset errado

    addi $t3, $t3, 1       # incrementar jj
    j in_j_loop

    addi $t2, $t2, 1       # incrementar ii
    j in_i_loop

    addi $t1, $t1, 1       # incrementar j
    j block_outer_loop

next_outer_loop:
    addi $t0, $t0, 1       # incrementar i
    j outer_loop

exit:
    # Fim do programa
    li $v0, 10
    syscall
