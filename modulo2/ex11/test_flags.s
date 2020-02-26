.section .data

	.global op1
	.global op2

.section .text

	.global test_flags
	
test_flags:
	
	#prologue

	pushl %ebp
	movl %esp, %ebp

	#body

	movl $0, %eax
	movl op1, %ecx
	addl op2, %ecx

	jc output_carry
	jo output_overflow

	jmp fim

output_carry:

	movb $1, %al
	jmp fim

output_overflow:

	movb $1, %al
	jmp fim
fim:
	
	#epilogue

	movl %ebp, %esp
	popl %ebp
	
	ret
