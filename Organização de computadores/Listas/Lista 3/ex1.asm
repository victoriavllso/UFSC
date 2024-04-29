.data
	A: .word 10
	B: .word 15
	C: .word 20
	D: .word 25
	E: .word 30
	F: .word 35
	G: .word 0,0,0,0
	H: .word 0,0,0,0

	
.text
	la  $t0, A
	la  $t1, B
	la  $t2, C
	la  $t3, D
	la  $t4, E
	la  $t5, F
	la  $s6, G	#carrega endereÃ§o base do vetor
	la  $s7, H
	lw  $s0, 0($t0)
	lw  $s1, 0($t1)
	lw  $s2, 0($t2)
	lw  $s3,0($t3)
	lw  $s4, 0($t4)
	lw  $s5, 0($t5)
	
### QuestÃ£o 1.a	G[0] = (A-(B+C)+F) =10
	
	add $t7, $s1, $s2
	sub $t7, $s0, $t7
	add $t7, $t7, $s5
	
    	sw $t7, 0($s6)

### QuestÃ£o 1.b G[1] = E - (A-B) * (B-C) = 5

	li $t7, 0
	sub $t7, $s0, $s1
	sub $t6, $s1, $s2
	mul $t7, $t7, $t6
	sub $t7, $s4, $t7
	sw $t7, 4($s6) #armazena no prÃ³ximo valor do ponteiro
	
### QuestÃ£o 1.c G[2] = G[1] -C = -15

	sub $t7, $t7, $s2
	sw $t7, 8($s6)

### QuestÃ£o 1.c G[3] = G[2] + G[0]  = 	-5
	li $t7, 0
	lw $t0, 0($s6) #carrega de volta da memÃ³ria o valor 10
	lw $t2, 8($s6) #carrega de volta da memÃ³ria o valor -15
	add $t7, $t0, $t2
	sw $t7, 12($s6) #armazena -5 no endeÃ§o G[3]
	


### QuestÃ£o 1.d H[0] = B-C = -5
	li $t7, 0
	sub $t7, $s1, $s2
	sw $t7,0($s7)
	
### QuestÃ£o 1.f  H[1] = A + C = 30
	li $t7, 0
	add $t7, $s0, $s2
	sw $t7, 0($s7)
	
