.section .data

	.global op1
	.global op2

.section .text

	.global sum2ints

sum2ints:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl op1, %eax # insire a variavel op1 no registo eax
	addl op2, %eax # soma a variavel op2 ao registo eax
	cdq # extende o sinal

	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
