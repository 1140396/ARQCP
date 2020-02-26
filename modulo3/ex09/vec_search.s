.section .data

	.global ptrvec
	.global num
	.global x

.section .text

	.global vec_search

vec_search:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl num, %ecx
	movl ptrvec, %edx
	movl x, %eax

	cmpl $0, num # verifica se o vetor está vazio
	je fim

start_loop:

	cmpw %ax, (%edx) # verifica se o valor na posição atual no vetor é o valor a procurar
	je existe

	addl $2, %edx # aumenta o apontador para o próximo short int no vetor
	
	loop start_loop # efetua o loop ate ecx = 0, sendo retirado 1 valor a ecx cada vez que esta linha é executada

	movl $0, %eax
	jmp fim
	
existe:
	movl %edx, %eax # copia o endereço de memória do valor encontrado no vetor 
	
	# epilogue

fim:	
	movl %ebp, %esp
	popl %ebp

	ret
