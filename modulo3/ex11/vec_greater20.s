.section .data

	.global ptrvec
	.global num

.section .text

	.global vec_greater20

vec_greater20:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body
	
	pushl %esi
	
	movl ptrvec, %esi # copia o apontador para o registo esi
	movl num, %ecx
	movl $0, %eax # limpa os registos eax e edx
	movl $0, %edx
	
	cmpl $0, num
	je fim

start_loop:

	cmpl $0, 4(%esi) # verifica se existe algum conteudo no segundo registo de 32 bits, caso exista o número é maior que 20
	jg inc
	
	cmpl $20, (%esi) # verifica se o valor no primeiro registo de 32 bits é maior que 20
	jg inc

	addl $8, %esi # aponta para o proximo valor long long do vetor
	jmp end_loop
	
inc:
	incl %eax
	addl $8, %esi

end_loop:
	
	loop start_loop # efetua o loop ate ecx = 0, sendo retirado 1 valor a ecx cada vez que esta linha é executada

fim:

	popl %esi
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
