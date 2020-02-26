.section .data

i:
	int 1
j:
	int 2

.section .text

.global function

function:

#prologue
	pushl %ebp
	movl %esp, %ebp

#body
	movl $0, %eax
	movl i, %eax
	cmpl j, %eax

	je f

	
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
