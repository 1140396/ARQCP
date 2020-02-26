.section .text

	.global cube

cube:

#prologue
	pushl %ebp
	movl %esp, %ebp

	pushl %ebx
	pushl %esi
	
	movl 8(%ebp), %ebx #Passa o valor do parametro guardado na stack para o registo ebx

	movl $3, %ecx
	movl $1, %esi
	
	cmpl $0, %eax
	je end
	
loop_multiplic:
	
	imull %ebx, %esi #Faz o valor passado por parametro ao cubo
	
	loop loop_multiplic

move_value:
	movl %esi, %eax #Coloca o resultado final em eax

end:

	popl %esi
	popl %ebx
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
