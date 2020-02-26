.section .data
	
	.global ptr1

.section .text

	.global decrypt

decrypt:
	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body
	
	movl $0, %eax # limpa o registo eax
	movl $0, %ecx # limpa o registo ecx
	
	movl ptr1, %edx # copia o endereço do para qual o apontador aponta para o edx

start_loop:

	movb (%edx), %cl # copia o primeiro char da string para o registo cl

	cmpb $0, %cl # verifica se é o final da string
	je fim
	
	cmpb $'a', %cl # verifica se o char é a letra a
	je no_replace

	cmpb $' ', %cl # verifica se o char é um espaço
	je no_replace

	subb $2, %cl # subtrai 2 ao valor ASCII do char
	
	movb %cl, (%edx) # insere o novo valor na string
	
	incl %edx # aponta o apontador para o próximo char
	incl %eax
	
	jmp start_loop

no_replace:
	
	incl %edx

	jmp start_loop
	
fim:	
	# epilogue
	
	movl %ebp, %esp
	popl %ebp

	ret
