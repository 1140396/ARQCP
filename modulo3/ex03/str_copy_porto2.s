.section .data

	.global ptr1
	.global ptr2

.section .text

	.global str_copy_porto2

str_copy_porto2:

	# prologue
	
	pushl %ebp
	movl %esp, %ebp
	
	# body

	pushl %ebx

	movl $0, %ebx # limpa o registo ebx
	movl ptr1, %eax # copia o apontador 1 para o registo eax
	movl ptr2, %ecx # copia o apontador 2 para o registo ecx

inicio_loop:

	movb (%eax), %bl # copia o char da string para o registo bl
	
	cmpb $0, %bl # verifica se a string já chegou ao fim
	je fim

	cmpb $'v', %bl # verifica se o char é a letra v
	je mudar_para_b 

	cmpb $'V', %bl # verifica se o char é a letra V
	je mudar_para_B

	movb %bl, (%ecx) # insere a letra na nova string
	jmp incrementar_apontadores

mudar_para_b:
	movb $'b', (%ecx) # insere a letra b na nova string
	jmp incrementar_apontadores

mudar_para_B:
	movb $'B', (%ecx) # insere a letra B na nova string

incrementar_apontadores: # adiciona um a cada um dos registos de apontadores para apontarem para o próximo char na string
	incl %eax
	incl %ecx

	jmp inicio_loop # volta para o inicio do loop
	
fim:
	movb $0, (%ecx) # insere o carater de terminação na nova string
	
	popl %ebx
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
