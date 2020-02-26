.section .data #declarar os dados

CONST:
	.int 15
	
.global op1
.global op2
	
.section .text

.global sum_v2 # int sum()

sum_v2:
#prologue
	pushl %ebp 
	movl %esp, %ebp
#body
	movl CONST, %eax
	subl op1, %eax
	movl CONST, %ecx
	subl op2, %ecx
	subl %ecx,%eax

#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
	
