.data
    A:  .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16     # espaço para matriz A
    B:  .word 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16     # espaço para matriz B
    MAX: .word 4          # tamanho MAX da matriz


.text
main:
    # Carregando os endereços base
    la $s0, A            # endereço base de A em $s0
    la $s1, B            # endereço base de B em $s1
    lw $s2, MAX          # carregar MAX em $s2

    # Loop para percorrer as linhas da matriz A
    li $t0, 0            # $t0 = i = 0
loop_out:
    beq $t0, $s2, exit   # finalizar loop se i >= MAX

    # Loop para percorrer as colunas da matriz A
    li $t1, 0            # $t1 = j = 0
loop_in:
    beq $t1, $s2, next_loop_out  # avançar para próxima linha se j >= MAX

    # Calcular o endereço de A[i][j]
    mul $t2, $t0, $s2    # $t2 = i * MAX
    add $t2, $t2, $t1    # $t2 = i * MAX + j
    sll $t2, $t2, 2      # $t2 = (i * MAX + j) * 4 (endereço de A[i][j])
    add $t2, $t2, $s0    # endereço final de A[i][j] = base(A) + offset

    # Carregar o valor de A[i][j]
    lw $t3, 0($t2)

    # Calcular o endereço de B[j][i]
    mul $t4, $t1, $s2    # $t4 = j * MAX
    add $t4, $t4, $t0    # $t4 = j * MAX + i
    sll $t4, $t4, 2      # $t4 = (j * MAX + i) * 4 (endereço de B[j][i])
    add $t4, $t4, $s1    # endereço final de B[j][i] = base(B) + offset

    # Carregar o valor de B[j][i]
    lw $t5, 0($t4)

    # Somar A[i][j] com B[j][i]
    add $t3, $t3, $t5

    # Armazenar o resultado de volta em A[i][j]
    sw $t3, 0($t2)

    addi $t1, $t1, 1     # incrementar j
    j loop_in

next_loop_out:
    addi $t0, $t0, 1     # incrementar i
    j loop_out

exit:
    # Fim do programa
    li $v0, 10
    syscall
