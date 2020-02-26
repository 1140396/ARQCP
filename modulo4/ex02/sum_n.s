.section .text

	.global sum_n

sum_n:

	# prologue

	pushl %ebp
	movl %esp, %ebp
	
	# body

	movl 8(%ebp), %ecx # copia o primeiro parâmetro da função para o ecx
	movl $0, %eax # limpa o eax

	cmpl $0, %ecx # verifica se ecx é 0
	jle end
	
start_loop:

	addl %ecx, %eax # adiciona o valor do ecx ao eax

	loop start_loop

end:
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
	
