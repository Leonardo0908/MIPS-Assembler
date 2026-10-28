# 5.Escreva um programa que pergunte os coeficientes de uma equação de segundo grau (A, B e
#C) e:
#a) se DELTA for maior que zero: imprima “DUAS RAÍZES REAIS”;
#b) se DELTA for igual a zero: imprima apenas “UMA RAÍZ REAL”;
#c) se DELTA menor que zero: imprima a mensagem “NÃO EXISTEM RAÍZES REAIS”.
#(Não é necessário calcular as raízes caso existam).

.data

msgA: .asciiz "Digite coeficiente A: "
msgB: .asciiz "Digite coeficiente B: "
msgC: .asciiz "Digite coeficiente C: "
msg1: .asciiz "DUAS RAÍZES REAIS"
msg2: .asciiz "UMA RAÍZ REAL"
msg3: .asciiz "NÃO EXISTEM RAÍZES REAIS"

.text

main:
    #Recebendo valor A
    li $v0, 4
    la $a0, msgA
    syscall
    li $v0, 5
    syscall
    move $t0, $v0

    #Recebendo valor B
    li $v0, 4
    la $a0, msgB
    syscall
    li $v0, 5
    syscall
    move $t1, $v0

    #Recebendo valor C
    li $v0, 4
    la $a0, msgC
    syscall
    li $v0, 5
    syscall
    move $t2, $v0

    mul $t3, $t1, $t1 #B ao quadrado
    mul $t4, $t0, $t2 #A * C
    mul $t4, $t4, 4   #(A*C) * 4
    sub $t3, $t3, $t4 # B ao quadrado menos (4*A*C)

    bgt $t3, 0, duasRaizes #se DELTA for maior que zero: imprima “DUAS RAÍZES REAIS”;
    
    beq $t3, 0 umaRaiz #se DELTA for igual a zero: imprima apenas “UMA RAÍZ REAL”;
    
    blt $t3, 0 semRaiz#se DELTA menor que zero: imprima a mensagem “NÃO EXISTEM RAÍZES REAIS”.

duasRaizes:   #$t4 = X1, $t5 = X2
    li $v0, 4
    la $a0, msg1
    syscall
    
    j FimPrograma
    
umaRaiz:    
    li $v0, 4
    la $a0, msg2
    syscall
    
    j FimPrograma
    
semRaiz:
    #Sem Raiz
    li $v0 , 4
    la $a0, msg3  
    syscall
    
    j FimPrograma



#encerra programa
FimPrograma:
	li $v0, 10
	syscall