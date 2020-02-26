.section .data

	.global ptrvec
	.global x
	.global num
	
.section .text

	.global exists
	.global vec_diff

exists:
	
	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %ebx

	movl ptrvec, %ebx # copia o apontador para o registo ebx
	movl num, %ecx
	movl $0, %edx # limpa o registo edx
	movl x, %eax # copia o valor do número a procurar para o registo eax

	cmpl $0, num # verifica se o vetor está vazio
	je duplicates_not_found
	
start_loop:
	
	cmpw %ax, (%ebx) # verifica se o número na posição atual é igual ao número a procurar
	jne not_equal

	incl %edx

not_equal:
	
	addl $2, %ebx # aponta o apontador para o próximo valor do vetor
	
	loop start_loop # executa o loop ate ecx = 0, o ecx é diminuido em 1 cada cez que esta linha é executada

	cmp $1, %edx
	jle duplicates_not_found

	movl $1, %eax
	jmp fim
	
duplicates_not_found:

	movl $0, %eax

fim:
	popl %ebx

	# epilogue
		
	movl %ebp, %esp
	popl %ebp

	ret

vec_diff:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %esi

	movl num, %ecx
	movl ptrvec, %edx
	movl $0, %eax

	cmpl $0, num
	je fim2
	
start_loop2:

	movl (%edx), %esi
	movl %esi, x

	pushl %eax
	pushl %edx
	pushl %ecx

	call exists

	movl %eax, %esi
	
	popl %ecx
	popl %edx
	popl %eax

	cmpl $0, %esi
	jne duplicated

	incl %eax

duplicated:

	addl $2, %edx

	loop start_loop2

fim2:
	popl %esi

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
