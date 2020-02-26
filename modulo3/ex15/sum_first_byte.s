.section .data

	.global ptrvec
	.global num
	
.section .text

	.global sum_first_byte

sum_first_byte:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %ebx

	movl ptrvec, %ebx # copia o apontador para o registo ebx
	movl num, %ecx # copia o número de elementos do vetor para o registo ecx
	movl $0, %eax # limpa os registos eax e edx
	movl $0, %edx 

	cmpl $0, %ecx # verifica se o vetor é nulo
	je fim

start_loop:

	movsbl (%ebx), %edx # copia o primeiro byte do valor do número no vetor para o registo edx

	addl %edx, %eax # soma o regito edx com o registo eax

	addl $4, %ebx # aponta para o próximo valor inteiro do vetor
	
	loop start_loop # executa o loop até ecx = 0, o ecx é diminuido por 1 cada vez que esta linha é executada

fim:
	popl %ebx
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
