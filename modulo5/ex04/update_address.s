.section .text

	.equ DATA_SIZE, 243
	.equ AGE_OFFSET, 0
	.equ NUMBER_OFFSET, 2
	.equ GRADES_OFFSET, 4
	.equ NAME_OFFSET, 14
	.equ ADDRESS_OFFSET, 84
	
	.global update_address 

update_address:

#prologue

	pushl %ebp
	movl %esp, %ebp

	pushl %esi

	movl 12(%ebp), %ebx #pointer de grades
	movl 8(%ebp), %esi #estrutura 
	
copy_values:

	cmpl $0, %esi
	je end
	
	movl %ebx, GRADES_OFFSET(%esi)

	incl %ebx
	addl $4,%esi

	jmp copy_values

end:

#epilogue

	movl %ebp,%esp
	popl %ebp
	ret
