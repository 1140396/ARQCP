.section .data
	
.global ptr1

.section .text

.global zero_count
		
zero_count:

#prologue
	pushl %ebp
	movl %esp, %ebp
	
#body
	
	pushl %ebx

	movl $0, %eax
	movl $0, %ebx
	
	movl ptr1, %edx #Coloca o edx com o endereço do poiter 1 declarado em C
	
count_loop:

	movb (%edx), %bl #Move valor apontado por edx para bl
	
	cmpb $0, %bl
	je end

	cmpb $'0', %bl #Compara o valor de bl com 0
	jne not_equals

	incl %eax # Incrementa ao registo eax
	incl %edx #Incrementa ao registo edx

	jmp count_loop
	
not_equals:	
	
	incb %edx #Incrementa ao registo edx
	
	jmp count_loop
	
end:
	popl %ebx
	
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
