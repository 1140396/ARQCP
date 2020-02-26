.section .data
	
.global A
.global B
.global C
.global D

.section .text

.global compute # ((A * B) + C) / D

compute:

#prologue
	pushl %ebp
	movl %esp, %ebp
#body

	movl $0,%eax
	movl A, %eax
	movl B, %ebx
	movl C, %edx
	movl D, %ecx

	imull %ebx, %eax
	addl %edx, %eax
	movl $0, %edx
	cdq
	divl %ecx

#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
	
