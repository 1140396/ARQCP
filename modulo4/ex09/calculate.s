.section .text

	.global print_result
	.global calculate

calculate:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	subl $8, %esp # reserva espaço na stack para variaveis locais até 8 bytes

	movl 8(%ebp), %eax # copia o primeiro parâmetro da função para o eax
	movl 12(%ebp), %ecx # copia o segundo parâmetro da função para o ecx

	addl %ecx, %eax # adiciona o valor do ecx ao eax

	movl %eax, -4(%ebp) # guarda o valor do eax no espaço da stack para variaveis locais
	movl 8(%ebp), %eax  # copia o segundo parâmetro da função para o eax

	imull %ecx # multiplica o valor do ecx pelo eax

	movl %eax, -8(%ebp) # guarda o valor do eax no espaço da stack para variaveis locais

	pushl -4(%ebp) # adiciona na stack o 4 parametro da função que vai ser chamada
	pushl 12(%ebp) # adiciona na stack o 3 parametro da função que vai ser chamada
	pushl 8(%ebp) # adiciona na stack o 2 parametro da função que vai ser chamada
	pushl $0x2A # adiciona na stack o 1 parametro da função que vai ser chamada

	call print_result # chama a função print_result

	addl $16, %esp # limpa os valores dos parâmetros passados da stack

	pushl -8(%ebp) # adiciona na stack o 4 parametro da função que vai ser chamada
	pushl 12(%ebp) # adiciona na stack o 3 parametro da função que vai ser chamada
	pushl 8(%ebp) # adiciona na stack o 2 parametro da função que vai ser chamada
	pushl $0x2A # adiciona na stack o 1 parametro da função que vai ser chamada

	call print_result # chama a função print_result

	addl $16, %esp # limpa os valores dos parâmetros passados da stack

	movl -8(%ebp), %ecx # copia o valor do espaço na stack para variaveis locais para o ecx
	movl -4(%ebp), %eax # copia o valor do espaço na stack para variaveis locais para o eax

	subl %ecx, %eax # subtrai o ecx ao eax

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
