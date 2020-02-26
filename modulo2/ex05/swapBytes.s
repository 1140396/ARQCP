.section .data

	.global s


.section .text


	.global swapBytes

swapBytes:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl $0, %eax # limpar registo eax
	movl s, %ecx # inserir variavel s no registo ecx
	movb %cl, %ah # insere os bits menos significativos de cx em ax
	movb %ch, %al # insere os bts mais significativos de cx em ax

	# epilogue

	movl %ebp, %esp
	popl %ebp
	
	ret
	
