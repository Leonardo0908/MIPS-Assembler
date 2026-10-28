#2.Ler dois valores para 2 registradores e efetuar a troca dos valores de forma que o valor do 
#primeiro registrador passe ao segundo e o segundo passe ao primeiro. Apresentar os valores 
#após a efetivação do processamento da troca.

.data

msg1: .asciiz "Digite o 1° valor inteiro: "
msg2: .asciiz "Digite o 2° valor inteiro: "
msg3: .asciiz "O 1° valor agora e: "
msg4: .asciiz "\nO 2° valor agora e: "
.text

main:
    # Ler o primeiro valor inteiro
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t1, $v0 # movendo valor para t1

    #Ler o segundo valor inteiro
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 5
    syscall
    move $t2, $v0 # movendo valor para t2

    move $t0, $t1
    move $t1, $t2
    move $t2, $t0

    #mostrar valor 1 em t1
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    add $a0, $t1, 0
    syscall

    #mostrar valor 2 em t2
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    add $a0, $t2, 0
    syscall

    #encerra programa
	li $v0, 10
	syscall

