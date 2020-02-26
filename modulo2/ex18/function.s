.section .data

A:
	.int 1

B:
	.int 1

.global i
	
.section .text

.global function

function:

#prologue

	pushl %ebp
	movl %esp, %ebp
#body
	movl i, %ebx  
	movl $0, %edi

my_loop:
	cmpl %ebx, %edi
	je end_loop

	movl $0, %esi
	movl %ebx, %esi
	imull %esi, %esi
	movl $0, %ecx
	movl A, %eax
	imull %eax, %eax
	imull %esi, %eax
	movl B, %ecx
	cdq
	
	divl %ecx 
	
	
	decl %ebx
	jmp my_loop
	
end_loop:

#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
