.section .data

	.global ptr1
	.global ptr2
	.global num

.section .text

	.global swap

swap:

	# prologue

	pushl %ebp
	movl %esp, %ebp
	
	# body

	pushl %ebx

	movl ptr1, %eax # copia o apontador 1 para o registo eax
	movl ptr2, %edx # copia o apontador 2 para o registo edx
	movl num, %ecx # copia o número de elementos no vetor para o registo ecx
	movl $0, %ebx # limpa o registo ebx

	cmpl $0, num # verifica se o vetor é nulo
	je fim

start_loop:

	movb (%eax), %bl # copia o char do primeiro vetor para o registo bl
	movb (%edx), %bh # copia o char do segundo vetor para o registo bh
	movb %bl, (%edx) # copia o char do registo bl para o segundo vetor
	movb %bh, (%eax) # copia o char do registo bh para o primeiro vetor

	incl %eax # incrementa a posição dos apontadores nos vetores
	incl %edx

	loop start_loop # executa o loop ate ecx = 0, o ecx é diminuido cada vez que esta linha é executada

fim:
	popl %ebx
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
