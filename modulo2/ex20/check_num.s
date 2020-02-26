.section .data

	.global num

res:
	.asciz "0"

.section .text

	.global check_num

check_num:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body
	
	movl num, %eax # insere o valor da variavel num no registo eax 
	cdq # extende o sinal

	cmpl $0, %eax # verifica se o número é menor que 0
	je igual
	jg par_impar

	movl $-1, %ecx # insere o valor -1 no registo ecx

	imull %ecx # faz uma multiplicação com sinal do registo ecx com o registo eax
	
par_impar:
	movl $0, %edx # limpa o registo edx
	movl $2, %ecx # insere o valor 2 no registo ecx

	divl %ecx # divide o registo eax pelo registo ecx
	
	cmpl $0, %edx # verifica se o número é par ou impar
	je par
	jl impar
	jg impar
	

par:
	movl $1, %ecx # insere o valor 1 no registo ecx
	jmp sinal # salta para a verificação de sinal

impar:
	movl $2, %ecx # insere o valor 2 no registo ecx

sinal:
	movl num, %eax # insere o valor da variavel num no registo eax
	cdq # extende o sinal
	
	cmpl $0, %eax # verifica se o número é positivo ou negativo
	je igual
	jg positivo
	jl end

igual:
	movl $3, %ecx # insere o valor 3 no registo ecx
	jmp end # salta para o fim da função

positivo:
	addl $2, %ecx # adiciona 2 ao valor do registo ecx

end:
	movl %ecx, %eax # insere o valor do registo ecx no registo eax

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
