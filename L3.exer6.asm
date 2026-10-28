# 6.Escreva um programa que pergunte dois números e indique se são iguais ou diferentes. Caso
#sejam diferentes, mostre o maior e o menor (nesta ordem).

.data

msg1: .asciiz "Digite o Primeiro Numero inteiro: "
msg2: .asciiz "Digite o Segundo Numero inteiro: "
igual: .asciiz "Os Numeros são iguais"
difere: .asciiz "Os Numeros são diferentes"
menor: .asciiz "\nNumero menor: "
maior: .asciiz "\nNumero maior: "

.text

main:
    #Recebendo valor 1
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5
    syscall
    move $t0, $v0

    #Recebendo valor 2
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 5
    syscall
    move $t1, $v0

    beq $t0, $t1, iguais

    li $v0, 4
    la $a0, difere
    syscall
    
diferentes:
    bgt $t1, $t0, caso2

    li $v0, 4
    la $a0, maior
    syscall
    li $v0, 1
    add $a0, $t0, 0 
    syscall

    li $v0, 4
    la $a0, menor
    syscall
    li $v0, 1
    add $a0, $t1, 0 
    syscall
    
    j FimPrograma
    
caso2:
    li $v0, 4
    la $a0, maior
    syscall
    li $v0, 1
    add $a0, $t1, 0 
    syscall

    li $v0, 4
    la $a0, menor
    syscall
    li $v0, 1
    add $a0, $t0, 0 
    syscall
    
    j FimPrograma
iguais:
    li $v0, 4
    la $a0, igual
    syscall

    j FimPrograma
    

#encerra programa
FimPrograma:
	li $v0, 10
	syscall