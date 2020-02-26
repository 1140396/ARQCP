.section .text

	.global inc_square

inc_square:

#prologue
	
	pushl %ebp
	movl %esp, %ebp

#body

	pushl %ebx

	movl 12(%ebp), %ecx
	movl 8(%ebp), %ebx
inc:
	incl (%ebx)
	
square:
	movl %ecx, %eax
	imull %ecx, %eax
end:
	
#epilogue

	popl %ebx
	
	movl %ebp, %esp
	popl %ebp
	ret
	
