.section .text

	.global count_bits_zero
	.global vec_count_bits_zero

vec_count_bits_zero:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body


	pushl %esi # guarda os registo anteriores de esi
	pushl %edi # guarda os registo anteriores de edi

	movl 8(%ebp), %esi # copia o primeiro parâmetro da função para o esi
	movl 12(%ebp), %ecx # copia o segundo parâmetro da função para o ecx
	movl $0, %edx # limpa o edx

	cmpl $0, %ecx # verifica se o vetor é nulo (ecx = 0)
	je end
	
start_loop:

	pushl %edx # insere o 3 parâmetro da função a ser chamada na stack
	pushl %ecx # insere o 2 parâmetro da função a ser chamada na stack

	movl (%esi), %edi # copia o valor apontado pelo esi para o edi
	pushl %edi # insere o 1 parâmetro da função a ser chamada na stack

	call count_bits_zero # chama a função count_bits_zero

	addl $4, %esp # limpa o valor de 1 parâmetro da stack

	popl %ecx # recupera o valor de ecx guardado na stack
	popl %edx # recupera o valor de edx guardado na stack

	addl %eax, %edx # adiciona o eax ao edx

	addl $4, %esi # adiciona 4 ao esi(apontador)
	
	loop start_loop # executa o loop até ecx = 0
	
end:
	movl %edx, %eax # copia o valor de edx para eax

	popl %edi # restaura os registos anteriores de edi
	popl %esi # restaura os registos anteriores de esi
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
	
count_bits_zero:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl $32, %ecx
	movl 8(%ebp), %edx
	movl $0, %eax

start_loop1:

	shl %edx

	jc no_count

	incl %eax
	
no_count:

	loop start_loop1
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
