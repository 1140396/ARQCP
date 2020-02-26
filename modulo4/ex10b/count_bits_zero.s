.section .text

	.global count_bits_zero

count_bits_zero:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl $32, %ecx # copia o valor 32 para o ecx
	movl 8(%ebp), %edx # copia o primeiro parâmetro da função para o edx
	movl $0, %eax # limpa o eax

start_loop:

	shl %edx # faz shift para a direita do valor de edx em 1 bit

	jc no_count # caso a carry flag tenha sido preenchida não aumenta o contador

	incl %eax
	
no_count:

	loop start_loop # executa o loop até ecx = 0
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
