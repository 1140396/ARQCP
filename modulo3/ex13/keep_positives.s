.section .data

	.global num
	.global ptrvec

.section .text

	.global keep_positives

keep_positives:
#prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx
	
	movl num, %ecx
	movl ptrvec, %ebx
	movl $0, %eax

	cmpl $0, %ecx
	je end
	
verification_loop:

	cmpl $0, (%ebx)
	jl add_index

	addl $4, %ebx #Adiciona 4 ao registo ebx para ir para a posicao seguinte

	jmp end_loop

add_index:

	movl %eax, (%ebx) #Move o valor do registo eax para ebx

	addl $4, %ebx

end_loop:

	incl %eax #Incrementa 1 ao registo eax

	loop verification_loop

end:
	popl %ebx
	
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
