.section .data

	.global A
	.global B

.section .text
	
	.global isMultiple
	
isMultiple:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	#body

	cmpl $0, A # verifica se a variavel A é 0
	je jump_if_not_multiple

	cmpl $0, B # verifica se a variavel B é 0
	je jump_if_not_multiple

	movl A, %eax # insere a variavel A no eax

	cdq # extende o sinal

	movl $0, %edx # limpa o edx
	
	divl B # divide o conteudo do registo eax pela variavel B
	
	cmpl $0, %edx # verifca o número no registo edx
	je jump_if_multiple
	jg jump_if_not_multiple

jump_if_multiple:

	movl $1, %eax # insire o valor 1 no registo eax
	jmp fim

jump_if_not_multiple:

	movl $0, %eax # insire o valor 0 no registo eax
	jmp fim

	# epilogue

fim:	
	movl %ebp, %esp
	popl %ebp

	ret
