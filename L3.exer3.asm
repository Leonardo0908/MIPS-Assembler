#3. Crie um programa que lê o mês e o ano de nascimento de uma pessoa e o mês e ano atual. 
#Calcule e mostre qual é: a idade da pessoa em meses.


.data

msg1: .asciiz "digite o mes de nascimento: "
msg2: .asciiz "digite o ano de nascimento: "
msg3: .asciiz "digite o mes de atual: "
msg4: .asciiz "digite o ano de atual: "
msg5: .asciiz "A idade em meses é: "

.text

main:
    #Lendo o mes de nasciemnto
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t1, $v0 #movendo o mes para T1
    
    #Lendo o ano de nasciemnto
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t2, $v0 #movendo o ano para T2
   
    #Lendo o mes de atual
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 5
    syscall
    move $t3, $v0 #movendo o mes para T3
    
    #Lendo o ano de atual
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 5
    syscall
    move $t4, $v0 #movendo o ano para T4

    sub $t5, $t4, $t2

    mul $t0, $t5, 12

    sub $t5, $t1, $t3
    bge $t1, $t3, caso2 #verifica se T1 é maior que T3

    sub $t5, $t3, $t1

caso2:
    add $t0, $t0, $t5

    li $v0, 4
    la $a0, msg5    
    syscall

    li $v0, 1
    add $a0, $t0, 0
    syscall

    #encerra programa
	li $v0, 10
	syscall


