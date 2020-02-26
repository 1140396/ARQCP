.section .data
	
	.global ptrvec	
	.global num
	
.section .text

	.global vec_sum
	.global vec_avg
	
vec_sum:	
#prologue
	pushl %ebp
	movl %esp, %ebp
#body

	movl num, %ecx #Coloca a variavel num declarada em C no registo ecx
	movl ptrvec, %edx #Coloca o valor apontado por ptrvec no registo edx
	movl $0, %eax #Limpa o registo eax
	
	cmpl $0, num #Verifica se o numero de elementos é 0
	je end
	
sum:	
	addl (%edx), %eax #Coloca o valor de edx no resgisto eax

	addl $4, %edx #Adiciona 4 ao registo edx para ir para o elemento seguinte do vetor
	
	loop sum	
end:
	
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret

vec_avg:

#epilogue
	pushl %ebp
	movl %esp, %ebp

#body
	movl $0, %eax
	
	cmpl $0, num
	jle end1
	
	call vec_sum #Chama funcao para fazer a soma total do elementos

	movl $0, %edx

	cdq
	
	movl num, %ecx
	idivl %ecx

end1:
	
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
