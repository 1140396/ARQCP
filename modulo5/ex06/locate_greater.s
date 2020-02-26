.section .text

	.equ DATA_SIZE, 246
	.equ AGE_OFFSET, 0
	.equ NUMBER_OFFSET, 1
	.equ GRADES_OFFSET, 3
	.equ NAME_OFFSET, 44
	.equ ADDRESS_OFFSET, 165  

	.global locate_greater

locate_greater:

#prologue

	pushl %ebp
	movl %esp, %ebp

	pushl %esi
	pushl %edi
	pushl %ebx
#body

	movl 16(%ebp),%edi # pointer das melhores notas 
	movl 12(%ebp),%esi # valor limite
	movl 8(%ebp),%ebx # pointer estrutura

	movl $0, %ecx # tamanho do vetor greater_grades
	movl $0, %edx

compare:

	cmpl %esi, GRADES_OFFSET(%ebx, %ecx, 4) # Verificar Offset
	jg adiciona_valor

	incl %edx
	
	cmpl $10, %edx # Inc. ecx ate que chega a 10
	je end
	
	jmp compare
	
adiciona_valor:

	movl GRADES_OFFSET(%ebx), %edi

	incl %eax
	
	jmp compare
end:

	popl %ebx
	popl %edi
	popl %esi
	
#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
	
