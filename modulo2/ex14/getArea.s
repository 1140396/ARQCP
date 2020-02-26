.section .data

base:
	.int 10 # incia a variavel base com valor de 10

height:
	.int 5 # inciia a variavel altura com valor de 5

	.global base
	.global height

.section .text

	.global getArea

getArea:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl $0, %eax # limpar o registo eax

	cmpl $0, base # verifica se o valor da base é 0 ou negativo
	je end
	jl end
	
	cmpl $0, height # verifica se o valor da altura é 0 ou negativo
	je end
	jl end

	movl base, %eax # insire o valor da base no registo eax
	mull height # multiplica o valor da altura pelo conteudo do registo eax

	movl $2, %ecx # insire o valor 2 no registo ecx

	divl %ecx # divide o conteudo do registo eax pelo conteudo do registo ecx

	# epilogue

end:
	movl %ebp, %esp
	popl %ebp

	ret
