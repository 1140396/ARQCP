.section .text

	.global calc

calc:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	subl $4, %esp # reserva lugar na stack para variaveis locais até 4 bytes

	movl 12(%ebp), %ecx # copia o segundo parâmetro da função para o ecx
	movl 8(%ebp), %edx # copia o primeiro parâmetro da função para o edx
	movl (%ecx), %eax # copia o valor apontado por ecx para o eax

	subl %edx, %eax # subtrai o valor de edx ao eax

	movl %eax, -4(%ebp) # guarda o valor do eax no espaço da stack reservado para vairaveis locais

	movl 16(%ebp), %eax # copia o terceiro parâmetro da função para o eax

	imull -4(%ebp) # multiplica o valor da variavel local pelo eax

	subl $2, %eax # subrai 2 ao eax
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
