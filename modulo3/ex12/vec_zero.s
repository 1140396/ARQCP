.section .data

	.global ptrvec
	.global num
	
.section .text

.global vec_zero

vec_zero:
#prologue
	pushl %ebp
	movl %esp, %ebp

#body

	pushl %ebx
	
	movl $0, %eax
	movl num, %ecx
	movl $0, %edx

	cmpl $0, %ecx
	je end
	
	movl ptrvec, %ebx
	
verification_loop:
	
	cmpw $100, (%ebx) #Compara o valor de ebx com 100
	jge zero
	
	addl $2, %ebx #Adiciona 2 ao registo ebx para ir para o elemento seguinte

	jmp end_loop
	
zero:
	movw $0, (%ebx) #Move 0 para o valor de ebx na posicao indicada
	
	addl $2, %ebx #Adiciona 2 ao registo ebx para ir para a posicao seguinte

	incl %eax

end_loop:
	
	loop verification_loop

end:
	popl %ebx
	
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
