.data
    resultado: .word 0
    numero: .word 0

. text
    la $s0, numero
    la $s1, resultado
    lw $a0, 0($s0)
    jal fatorial

    sw $v0, 0($s1)


fatorial:
    addi $sp, $sp, -8
    sw $ra, 4($sp)
    sw $a0, 0($s0)

    slti $t0, $a0 ,1

    beq $t0, $zero subtrai
    li $v0, 1
    addi $sp, $sp, 8
    jr $ra

subtrai:
    sub $a0, $a0, 1
    jal fatorial

    lw $ra 4($sp)
    lw $a0 0($sp)

    mul $v0, $v0, $a0
    addi $sp, $sp, 8

    jr $ra