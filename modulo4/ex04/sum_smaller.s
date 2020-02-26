.section .text

	.global sum_smaller

sum_smaller:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl 8(%ebp), %eax # copia o primeiro parâmetro da função para o eax
	movl 12(%ebp), %edx # copia o segundo parâmetro da função para o edx
	movl 16(%ebp), %ecx # copia o terceiro parâmetro da função para o ecx

	cmpl %eax, %edx # verifica se eax é menor que edx
	jl num2smaller

	movl %eax, (%ecx) # copia o valor de eax para o valor apontado pelo ecx

	jmp end
	
num2smaller:

	movl %edx, (%ecx) # copia o valor de edx para o valor apontado por ecx

end:
	addl %edx, %eax # adicionado o valor do edx ao eax
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
