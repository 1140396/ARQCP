.section .data
	
.global op1
.global op2
.global choice

.section .text

.global calculator

calculator:	
#prologue
	pushl %ebp
	movl %ebp, %esp

	movl $0, %eax
	movl choice, %eax
	
	cmpl $1, %eax
	je addition

	cmpl $2, %eax
	je subtraction

	cmpl $3, %eax
	je multiplication

	cmpl $4, %eax
	je division

	cmpl $5, %eax
	je modulus

	cmpl $6, %eax
	je power_of_2

	cmpl $7, %eax
	je power_of_3

	cmpl $8,%eax
	
	je done

addition:

	movl $0, %eax
	movl op1, %eax
	movl op2, %ebx
	addl %ebx,%eax

	jmp done
	
subtraction:

	movl $0, %eax
	movl op1, %eax
	movl op2, %ebx
	subl %ebx, %eax

	jmp done

multiplication:

	movl $0, %eax
	movl op1, %eax
	movl op2, %ebx
	imull %ebx

	jmp done

division:

	movl $0, %eax
	movl op1, %eax
	movl op2, %ebx
	movl $0, %edx
	cdq
	divl %ebx

	jmp done
	
modulus:

	movl $0, %eax
	movl op1, %eax
	imull $-1, %eax

	jmp done

power_of_2:

	movl $0, %eax
	xorl %edx, %edx
	movl $2, %eax
	movl op1, %ecx
x1:
	decl %ecx
	jz done

	shl $1, %eax
	rcl $1, %edx
	jmp x1

power_of_3:

	movl $0, %eax
	xorl %edx, %edx
	movl $3, %eax
	movl op1, %ecx

x2:
	decl %ecx
	jz done

	shl $1, %eax
	rcl $1, %edx
	jmp x2

done:

#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
