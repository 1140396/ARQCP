.section .text

	.global count_even

count_even:

#prologue

	pushl %ebp
	movl %esp, %ebp

#body
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl $0, %edx
	movl $0, %esi
	movl $0, %eax
	movl $0, %ebx
	
	movw $2, %bx
	
	movl 12(%ebp), %ecx #guarda valor de n
	movl 8(%ebp), %edi #guarda valor do vec

	cmpl $0, %ecx
	je end
	
verify:

	movw (%edi), %ax
	
	divw %bx
	
	cmpw $0, %dx
	je inc
	
	jmp loop_verify
	
inc:
	incl %esi
	
loop_verify:

	addl $2, %edi
	
	loop verify
end:
	
	movl %esi, %eax

	popl %edi
	popl %esi
	popl %ebx
	
#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
