 .section .text

	.global activate_2bits

activate_2bits:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	pushl %ebx # guarda o valor anterior de ebx na stack
	
	# body

	movl 8(%ebp), %edx # copia o primeiro parâmetro para o edx
	movl (%edx), %eax # copia o valor apontado por edx para eax
	movl 12(%ebp), %ecx # copia o segundo parâmetro para o ecx

	pushl %eax # insere os parâmetros da função na stack
	pushl %ecx # ""
	pushl %edx # ""

	call activate_bit

	popl %edx # recupera o valor de edx
	popl %ecx # recupera o valor de ecx
	popl %eax # recupera o valor de eax

	subl $31, %ecx # subtrai 31 ao ecx
	neg %ecx # inverte o sinal de ecx

	pushl %eax # insere os parâmetros da função na stack
	pushl %ecx # ""
	pushl %edx # ""

	call activate_bit # chama a função
	
	popl %edx # recupera o valor de edx

	addl $4, %esp # retira o valor passado para a função da stack

	popl %eax # recupera o valor de eax

	cmpl (%edx), %eax # verifica se o número foi alterado
	je nao_alterou_bits

	movl $1, %eax
	
	jmp end

nao_alterou_bits:

	movl $0, %eax
	
end:	
	popl %ebx # restaura o valor anterior de ebx
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
