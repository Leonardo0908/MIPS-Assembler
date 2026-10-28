#4 O proprietário da empresa ABC LTDA precisa de um programa de computador para calcular o 
#novo salário que seus funcionários irão receber a partir do mês que vem. Sabendo que o 
#aumento de salário para todos os funcionários será de 25%, faça um programa que lê o valor do 
#salário atual do funcionário e informa o seu novo salário acrescido de 25% (Por se tratar de 
#apenas número inteiros, para calcular 25% deve-se multiplicar o valor por 25 e dividir por 100).

.data

msg1: .asciiz "Digite o salario do funcionario: "
msg2: .asciiz "O novo salario do funcionario é: "

.text

main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    mul $t2, $t1, 25

    div $t0, $t2, 100

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    add $a0, $t0, $t1
    syscall

    #encerra o programa
    li $v0, 10
    syscall