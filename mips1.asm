#1. Receba os valores do comprimento, largura e altura de um paralelepípedo. Calcule e mostre
#seu volume.
.data

mensagem1: .asciiz "Digite o Comprimento"
mensagem2: .asciiz "Digite o Largura"
mensagem3: .asciiz "Digite o Altura"
mensagem4: .asciiz "O Volume é:"
.text
main:
	# Ler o comprimento
	li $v0 4
	la $a0, mensagem1
	syscall
	
	li $v0, 5
	syscall
	move $t0, $v0
	
	#ler a Altura
	li $v0, 4
	la $a0, mensagem3
	syscall
	
	li $v0, 5
	syscall
	move $t2, $v0
	
	#Ler Largura
	li $v0, 4
	la $a0, mensagem2
	syscall
	
	li $v0, 5 
	syscall
	move $t1, $v0
	
	# Calcular o Volume
	mul $t3, $t0, $t1
	mul $t3, $t3, $t2
	
	#mostra o resultado
	li $v0 , 4
	la $a0, mensagem4
	li $v0 , 1
	add $a0, $t3, 0
	syscall
	
	#encerra programa
	li $v0, 10
	syscall
	
	