.section .data
	
.global ptr1

.section .text

.global encrypt

encrypt:
#prologue
	pushl %ebp
	movl %esp, %ebp
#body

	pushl %ebx # insere o valor de ebx na stack
	
	movl $0, %eax # limpa o registo eax
	movl $0, %ecx # limpa o registo ecx
	
	movl ptr1, %ebx # copia o endereço do para qual o apontador aponta para o ebx

loop_verificacao:

	movb (%ebx), %cl # copia o primeiro char da string para o registo cl

	cmpb $0, %cl # verifica se é o final da string
	je end
	
	cmpb $'a', %cl # verifica se o char é a letra a
	je no_replace_dig

	cmpb $' ', %cl # verifica se o char é um espaço
	je no_replace_dig

	addb $2, %cl # soma 2 ao valor ASCII do char
	
	movb %cl, (%ebx) # insere o novo valor na string
	
	incl %ebx # aponta o apontador para o próximo char
	incl %eax
	
	jmp loop_verificacao

no_replace_dig:
	
	incl %ebx

	jmp loop_verificacao
end:
	popl %ebx
	
#epilogue
	movl %ebp, %esp
	popl %ebp
	ret
