.section .data

	.global ptrvec
	.global num

.section .text

	.global array_sort

array_sort:

#prologue

	pushl %ebp
	movl %esp, %ebp

#body
	pushl %ebx
	pushl %esi

	movl num, %ecx
	subl $1, %ecx # n-1 iterações para fazer a comparação dos digitos
	
	movl ptrvec, %eax
	movl $0, %esi
	
	cmpl $0, %ecx
	jle end

loop_vec:

	cmpl num, %esi
	jg end
	
verification:

	movl (%eax), %ebx #Move o valor de eax para o registo ebx 
	cmpl %ebx, 4(%eax) #Compara o valor do registo ebx com o 2 valor de eax
	jg swap #Se for maior salta para o metodo swap
	
	jmp end_loop
	
swap:

	movl 4(%eax), %edx # Troca o valor seguinte de eax para o registo edx 
	movl %edx, (%eax) # Coloca o valor guardado temporariamento por edx em eax
	movl %ebx, 4(%eax) # Coloca o valor do registo ebx no valor seguinte de eax

end_loop:
	
	addl $4, %eax # Adiciona 4 ao registo eax para ir para a posição seguinte

	loop verification

	incl %esi #Incrementa 1 ao registo esi
	
	movl ptrvec, %eax
	movl num, %ecx

	loop loop_vec
	
end:
	popl %esi
	popl %ebx
	
#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
	
