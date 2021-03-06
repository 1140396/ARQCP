.section .data

.global ptr1
.global ptr2
.global ptr3

.section .text

.global str_cat

str_cat:
	
#prologue
	pushl %ebp
	movl %esp, %ebp
#body
	pushl %ebx

	movl $0, %edx
	
	movl ptr1, %eax
	movl ptr2, %ebx
	movl ptr3, %ecx

concatenate_str1:
	
	movb (%eax), %dl #Copia a string de str1 para o registo dl
	cmpb $0, %dl
	je concatenate_str2
	
	movb %dl, (%ecx) #Copia do registo dl para a nova string
	
	incl %eax
	incl %ecx
	
	jmp concatenate_str1

concatenate_str2:

	movb (%ebx), %dl #Copia a string de str2 para o resgisto dl
	cmpb $0, %dl
	je end
	
	movb %dl, (%ecx) #Copia do registo dl para a nova string
	
	incl %ebx
	incl %ecx

	jmp concatenate_str2
end:
	movb $0, (%ecx) #Adiciona 0 ao fim da nova string
	
	popl %ebx
	
#epilogue

	movl %ebp, %esp
	popl %ebp
	
	ret
	
