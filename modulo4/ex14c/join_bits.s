.section .text

	.global join_bits

join_bits:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl 8(%ebp), %eax
	movl 12(%ebp), %edx
	movl $0, %ecx
	movb 16(%ebp), %cl

	cmpb $31, %cl
	je end

	incb %cl
	
	shr %cl, %edx
	shl %cl, %edx

	subb $32, %cl
	neg %cl

	shl %cl, %eax
	shr %cl, %eax

	or %edx, %eax

end:	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
	
