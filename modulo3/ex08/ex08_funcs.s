.section .data

	.global even
	.global ptrvec
	.global num

.section .text

	.global test_even
	.global vec_sum_even

test_even:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl $0, %edx # limpa o registo edx
	movl even, %eax
	movl $2, %ecx

	divl %ecx # divide o valor do registo eax pelo valor do registo ecx (2)

	cmpl $0, %edx # verifica se o edx tem algum conteudo, caso seja 0 o numero que foi dividido é par
	je num_even

	movl $0, %eax
	jmp fim

num_even:
	movl $1, %eax
	
	# epilogue

fim:	
	movl %ebp, %esp
	popl %ebp

	ret

vec_sum_even:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %ebx
	pushl %esi

	movl ptrvec, %ebx
	movl num, %ecx
	movl $0, %edx

	cmpl $0, num
	je fim2

vec_loop:

	movl (%ebx), %eax # copia o valor do array para o eax e consequentemente para a variavel even
	movl %eax, even

	pushl %edx # guarda o conteudo dos registos edx, ecx e eax na stack
	pushl %ecx
	pushl %eax
	
	call test_even # chama a função test_even

	movl %eax, %esi # copia o valor de retorno da função chamada para o registo esi

	popl %eax # retira o conteudo da stack de volta para os registos
	popl %ecx
	popl %edx
	
	cmpl $0, %esi # verifica se o número verificado é par
	je not_even

	addl %eax, %edx
	
not_even:

	addl $4, %ebx # aumenta o apontador para apontar para o próximo valor do vetor de inteiros
	
	loop vec_loop

fim2:

	movl %edx, %eax

	popl %esi
	popl %ebx

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
