.section .data

	.global num

.section .text

	.global steps

steps:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl num, %eax # insere variavel num no registo eax
	cdq # extende o sinal

	movb $3, %cl # insere o número 3 na parte cl do registo ecx

	imulb %cl # multiplica a parte cl do registo ecx pelo registo eax
	
	addl $6, %eax # soma 6 ao registo eax
	
	movb $3, %cl # insire o número 3 na parte cl do resgisto ecx
	
	idivb %cl # divide o registo eax pela parte cl do registo ecx

	addl $12, %eax # soma 12 ao registo eax
	
	subl num, %eax # subtrai o conteudo da variavel num ao registo eax
	
	subl $1, %eax # subtrai 1 ao registo eax

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
