.global greatest

greatest:

#prologe
	pushl %ebp
	movl %esp, %ebp
#body
	pushl %ebx
	pushl %esi
	
	movl 16(%ebp), %esi #c
	movl 12(%ebp), %ecx #b
	movl 8(%ebp), %ebx #a

compareAB:

	cmpl %ecx, %ebx
	jg compareAC

	jmp compareBC
	
compareAC:	

	cmpl %esi, %ebx
	jmp moveA

compareBC:

	cmpl %esi, %ecx
	jg moveB

	jmp moveC

moveA:
	movl %ebx, %eax
	jmp end

moveB:
	movl %ecx, %eax
	jmp end
	
moveC:
	movl %esi, %eax
	
end:

	popl %esi
	popl %ebx
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
