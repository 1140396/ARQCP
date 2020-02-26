.section .text

	.global add_byte

add_byte:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	pushl %esi # guarda o valor anterior do esi na stack
	pushl %ebx # guarda o valor anterior do ebx na stack
	pushl %edi # guarda o valor anterior do edi na stack

	movl $0, %edx # limpa o edx
	movl $0, %eax # limpa o eax
	movb 8(%ebp), %al # copia o primeiro parâmetro da função para o al
	movl 12(%ebp), %esi # copia o segundo parâmetro da função para o esi
	movl 16(%ebp), %ebx # copia o terceiro parâmetro da função para o ebx

	movl (%esi), %ecx # copia o valor apontado por esi para o ecx

	cmpl $0, %ecx # verifica se o vetor é nulo
	je end
	
	movl %ecx, (%ebx) # copia o tamanho do vetor para o segudo vetor

	addl $4, %esi # incrementa o apontador
	addl $4, %ebx # ""

start_loop:
	
	movb (%esi), %dl # copia o primeiro byte do número para o dl

	addb %al, %dl # adiciona o byte al ao byte dl

	movb %dl, (%esi) # insere o novo byte de volta no número

	movl (%esi), %edi # copia o novo número para o edi
 
	movl %edi, (%ebx) # copia o novo número para o segundo vetor

	addl $4, %esi # incrementa o apontador
	addl $4, %ebx # ""

	loop start_loop # executa o loop ate ecx = 0

end:	
	popl %edi # restaura o antigo valor de edi
	popl %ebx # restaura o antigo valor de ebx
	popl %esi # restaura o antigo valor de esi
	
	# epilogue

	movl %ebp, %esp
	popl %ebp

	ret
