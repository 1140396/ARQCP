.section .data

.global byte1
.global byte2

.section .text

.global concatBytes #short concatBytes()
	
concatBytes:

#prologue
	pushl %ebp
	movl %esp, %ebp

#body

	movl $0, %eax
	movb byte1, %al
	movb byte2, %ah
	
#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
