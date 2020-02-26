.section .data

	.global mixed_sum

mixed_sum:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %esi # guarda o valor anterior do esi na stack

	movl 8(%ebp), %eax # copia o primeiro parâmetro para o eax
	movl 12(%ebp), %edx # copia o segundo parâmetro para o edx
	movl 16(%ebp), %ecx # copia o terceiro parâmetro para o ecx

	pushl %ecx # insere os parâmetros para a função na stack
	pushl %edx # ""
	pushl %eax # ""

	call join_bits # chama a função

	movl %eax, %esi # copia o valor de retorno da função para o esi

	popl %eax # recupera o eax
	popl %edx # recupera o edx
	popl %ecx # recupera o ecx

	pushl %ecx # insere os parâmetros para a função na stack
	pushl %eax # ""
	pushl %edx # ""

	call join_bits # chama a função

	addl %eax, %esi # adiciona o valor retornado para função ao esi

	popl %edx # recupera o edx
	popl %eax # recupera o eax
	popl %ecx # recupera o ecx

	movl %esi, %eax # copoia o valor do esi para o eax

	popl %esi # restaura o valor anterior do esi

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
