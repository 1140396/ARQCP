.section .data

	.global ptrsrc
	.global ptrdest
	.global num

.section .text


	.global verification_reps

	.global copy_array_without_reps

	.global sort_without_reps
	

copy_array_without_reps:

#prologue
	pushl %ebp
	movl %esp, %ebp

#body
	
	pushl %ebx
	pushl %esi

	movl ptrsrc, %ebx
	movl num, %ecx
	movl ptrdest, %edx

	movl $0, %eax

	cmpl $0, num
	je end

validation_copy_array_wr:

		
	pushl %eax
	pushl %ecx
	pushl %edx
	
	call verification_reps #Chama a funcao

	movl %eax, %esi #Guarda o retorno da funcao em esi

	popl %edx
	popl %ecx
	popl %eax
	
	cmpl $1, %esi
	je copy_array

	jmp end_loop
	
copy_array:

	movl (%ebx), %edi #Coloca o valor guardado na posicao ebx no registo edi
	movl %edi, (%edx) #Coloca o valor do registo edi na posicao de edx

	addl $4, %edx #Adiciona 4 ao registo para ir para a posicao seguinte
	
	incl %eax #Guarda o numero de valores que copia

end_loop:

	addl $4, %ebx #Adiciona 4 ao ebx para vancar na posicao 

	loop validation_copy_array_wr
	
end:

#epilogue
	movl %ebp, %esp
	popl %ebp
	ret	

verification_reps:
#prologue
	pushl %ebp
	movl %esp, %ebp

#body
	pushl %ebx
	pushl %esi
	
	movl %eax, %ecx # Move o valor do registo eax para o registo ecx
	movl ptrdest, %edx #Move o ptrdest declarado em C para o registo edx
	movl $1, %eax #Move o valor 1 para eax
	
	cmpl $0, %ecx
	je end1
	
verification:

	movl (%ebx),  %esi #Move o valor de ebx para o registo esi
	cmpl %esi, (%edx) #Compara o valor de esi com o de edx
	je flag #Salta para a flag no caso dos valores anteriores serem iguais

	jmp end_loop1
flag:
	movl $0, %eax

	jmp end
	
end_loop1:
	
	addl $4, %edx #Adiciona 4 ao registo edx para avancar
	
	loop verification
end1:
	popl %esi
	popl %ebx

#epilogue
	movl %ebp, %esp
	popl %ebp
	ret 

sort_without_reps:

#prologue

	pushl %ebp
	movl %esp, %ebp

#body
	pushl %ebx
	pushl %esi
	pushl %edi

	movl num, %ecx
	subl $1, %ecx # n-1 iterações para fazer a comparação dos digitos
	
	movl $0, %esi
	movl $0, %eax
	
	cmpl $0, %ecx
	jle end2

loop_vec:

	cmpl num, %esi
	jg end2

	movl ptrsrc, %edi
	
verification1:

	movl (%edi), %ebx #Move o valor de edi para o registo ebx
	
	cmpl %ebx, 4(%edi) #Adiciona o valor de ebx a posicao seguinte em edi
	jl swap #Valor de edi for menor entao salta para swap
	
	jmp end_loop2
	
swap:

	movl 4(%edi), %edx #Move a posicao seguinte do valor de edi para edx
	movl %edx, (%edi) #Move o valor do registo edx para edi 
	movl %ebx, 4(%edi) #Move o valor do registo ebx para a posicao de edi

	incl %eax

end_loop2:
	
	addl $4, %edi #Adiciona 4 a edi para avncar

	loop verification1

	incl %esi #Incrementa 1 a esi

	movl num, %ecx

	loop loop_vec
	
end2:

	call copy_array_without_reps #Chama a funcao 
	
	popl %edi
	popl %esi
	popl %ebx
	
#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
