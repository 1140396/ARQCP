.section .text

	.global join_bits

join_bits:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movl 8(%ebp), %eax # copia o primeiro parâmetro para o eax
	movl 12(%ebp), %edx # copia o segundo parâmetro para o edx
	movl $0, %ecx # limpa o ecx
	movb 16(%ebp), %cl # copia o terceiro parâmetro para o cl

	cmpb $31, %cl # verifica se cl = 32
	je end

	incb %cl
	
	shr %cl, %edx # faz shift do edx para a direita o número de vezes que estiver no registo cl
	shl %cl, %edx # faz shift do edx para a esquerda o número de vezes que estiver no registo cl

	subb $32, %cl # subtrai 32 ao cl
	neg %cl # inverte o sinal de cl

	shl %cl, %eax # faz shift do eax para a esquerda o número de vezes que estiver no registo cl
	shr %cl, %eax # faz shift do eax para a direita o número de vezes que estiver no registo cl

	or %edx, %eax # faz um OR entre edx e eax 

end:	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
