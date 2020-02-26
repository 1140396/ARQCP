.section .data

	.global s1
	.global s2

.section .text

	.global crossSumBytes

crossSumBytes:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl $0, %eax # limpar eax

	movw s1, %ax # mover s1 para a parte ax do registo eax
	movw s2, %cx # mover s2 para a parte cx do registo ecx

	addb %ch, %al # somar o bit menos signifcativo de s1 com o mais significativo de s2
	addb %cl, %ah # somar o bit menos signifcativo de s2 com o mais significativo de s1
	
	# epilogue
	
	movl %ebp, %esp
	popl %ebp
	
	ret
