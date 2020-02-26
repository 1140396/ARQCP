.section .text

	.global activate_bit

activate_bit:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	pushl %ebx

	# body

	movl $0, %ecx
	movl 8(%ebp), %eax
	movb 12(%ebp), %cl
	movl (%eax), %edx
	movl (%eax), %ebx

	shr %cl, %edx
	or $1, %dl
	shl %cl, %edx

	movl (%eax), %ecx

	subb $32, %cl
	neg %cl

	shl %cl, %ebx
	shr %cl, %ebx
	or %ebx, %edx

	cmpl %edx, (%eax)
	je nao_alterou_bit

	movl %edx, (%eax)
	movl $1, %eax
	
	jmp end
	
nao_alterou_bit:

	movl $0, %eax

end:
	popl %ebx
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
