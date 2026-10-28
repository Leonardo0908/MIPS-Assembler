#2. Receba o raio de uma circunferência. Calcule e mostre o comprimento da circunferência.
#Considere PI = 3.

.data

msg1: .asciiz "Digite o raio:"
msg2: .asciiz "Valor do comprimento da circunferencia é:"

.text
main:
	# Ler o Raio
	li $v0 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	# Calcular circuferencia
	mul $t2, $t0, 2
	mul $t3, $t2, 3
	
	#mostra o resultado
	li $v0 , 4
	la $a0, msg2
	syscall
	li $v0 , 1
	add $a0, $t3, 0
	syscall
	
	#encerra programa
	li $v0, 10
	syscall