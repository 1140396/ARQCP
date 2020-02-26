.section .data #declarar os dados

op3:
	.int 0

op4:
	.int 0
	
.global op3	
.global op4
		
.section .text

.global sum_v3 # int sum() op4 + op3 - op2 + op1 

sum_v3:
#prologue
	pushl %ebp 
	movl %esp, %ebp
#body

	movl op4, %eax
	addl op3, %eax
	subl op2, %eax
	addl op1, %eax

#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
	
