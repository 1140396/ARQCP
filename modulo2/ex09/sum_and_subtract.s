.section .data

	.global A # 8 bits
	.global B # 16 bits
	.global C # 32 bits
	.global D # 32 bits

.section .text

	.global sum_and_subtract

sum_and_subtract:

	# prologue

	pushl %ebp
	movl %esp, %ebp
	
	# body

	movl $0, %edx # limpar edx

	movl C, %eax # insire a variavel C no registo eax
	movsbl A, %ecx # insire a variavel A no registo ecx

	addl %ecx, %eax # soma o registo ecx com o registo eax e insire o resultado no eax

	subl D, %eax # subtrai a variavel D com o registo eax e insire o resultado no eax

	movswl B, %ecx # insire a variavel B no registo ecx

	addl %ecx, %eax # soma o registo ecx com o registo eax e insire o resultado no eax # soma o registo ecx com o registo eax e insire o resultado no eax

	cdq # extende o sinal
	
	# epilogue

end:	
	movl %ebp, %esp
	popl %ebp
	
	ret
