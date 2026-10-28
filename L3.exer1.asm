#1.Elaborar um programa que apresente o valor da conversão em real (R$) de um valor lido em 
#dólar (US$). O programa deve considerar a cotação do dólar em R$5 (Usar apenas números 
#inteiros).

.data

msg1: .asciiz "Digite o valor em Dolar: "
msg2: .asciiz "O valor é de: "
msg3: .asciiz " Reais"

.text

main:
    # Ler o valor em Dolar
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 5 
    syscall
    move $t0, $v0

    # Calculando o valor em Reais
    mul  $t1, $t0, 5

    # mostrar o valor em reais
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 1
    add $a0, $t1, 0
    syscall
    li $v0, 4
    la $a0, msg3
    syscall

    #encerra programa
	li $v0, 10
	syscall