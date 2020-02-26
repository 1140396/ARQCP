.section .text

	.global activate_bit

activate_bit:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	pushl %ebx # guarda os registos anteriores do ebx na stack

	# body

	movl $0, %ecx # limpa o ecx
	movl 8(%ebp), %eax # copia o primeiro parâmetro da função para o eax
	movb 12(%ebp), %cl # copia o segundo parâmetro da função para o cl
	movl (%eax), %edx # copia o valor apontado pelo eax para o edx
	movl (%eax), %ebx # copia o valor apontado pelo eax para o ebx

	shr %cl, %edx # faz shift para a direita do valor de edx o número de vezes que tiver no registo cl
	or $1, %dl # faz um OR entre o bit menos significativo de dl e 1
	shl %cl, %edx # faz shift para a esquerda do valor de edx o número de vezes que tiver no registo cl

	movl (%eax), %ecx # copia o valor apontado por eax para ecx

	subb $32, %cl # subtrai 32 ao cl
	neg %cl # inverte o sinal de cl

	shl %cl, %ebx # faz shift para a esquerda do valor de ebx o número de vezes que tiver no registo cl
	shr %cl, %ebx # faz shift para a direita do valor de ebx o número de vezes que tiver no registo cl
	or %ebx, %edx # faz um or entre o valor de ebx e edx

	cmpl %edx, (%eax) # verifica se o número final é igual ao inicial
	je nao_alterou_bit

	movl %edx, (%eax) # copia o número final para o valor apontado por eax
	movl $1, %eax # copia o valor 1 para o eax
	
	jmp end
	
nao_alterou_bit:

	movl $0, %eax # copia o valor 0 para o eax

end:
	popl %ebx # restaura os registos anteriores do ebx
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
