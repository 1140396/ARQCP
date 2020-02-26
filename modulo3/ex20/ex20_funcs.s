.section .data

	.global ptrvec
	.global num

.section .text

	.global count_seq
	.global verify_seq

count_seq:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %esi

	movl ptrvec, %edx # copia o apontador para o registo edx
	movl num, %ecx # copia o número de elementos do vetor para o registo ecx
	movl $0, %esi # limpa o registo esi

	cmpl $2, num # verifica se o número de elementos do vetor é menor ou igual a 2
	jle fim
	
	subl $2, %ecx # subtrai 2 ao número de elementos no registo ecx para não haver haver acessos a zonas de memória fora do vetor

start_loop:

	pushl %ecx # guarda o valor do registo ecx

	call verify_seq # chama a função verify_seq para verificar a sequência de 3 números (posição atual, posição atual + 1, posição atual + 2)

	popl %ecx # retorna o valor do registo ecx

	cmpl $0, %eax # verifica se a sequência era valida ou não
	je no_count

	incl %esi

no_count:

	addl $4, %edx # aumenta o registo para apontar para o próximo número do vetor

	loop start_loop # executa o loop até ecx = 0, o ecx é diminuido por 1 sempre que esta linha for executada

fim:	
	movl %esi, %eax # copia o valor do registo esi para o registo eax para retornar o número de sequências válidas

	popl %esi

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret

verify_seq:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %ebx
	pushl %esi
	
	movl (%edx), %ecx # copia a o valor da posição atual do vetor para o registo ecx
	movl 4(%edx), %ebx # copia a o valor da posição seguinte à atual para o registo ebx
	movl 8(%edx), %eax # copia a o valor 2 posições à frente da atual para o registo eax 

	cmpl %ecx, %ebx # verifica se a posição atual é maior que a posição atual + 1
	jle no_count2

	cmpl %ebx, %eax # verifica se a posição atual + 1 é maior que a posição atual + 2
	jle no_count2

count:
	movl $1, %eax
	jmp fim2
	
no_count2:
	movl $0, %eax

fim2:
	popl %esi
	popl %ebx
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
