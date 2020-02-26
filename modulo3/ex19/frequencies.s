.section .data

	.global ptrgrades
	.global num
	.global ptrfreq

.section .text

	.global frequencies
	
frequencies:

#prologue
	pushl %ebp
	movl %esp, %ebp

#body

	pushl %ebx
	pushl %esi
	pushl %edi

	movl ptrfreq, %ebx
	movl $0, %edx
	movl $0, %esi
	movl num, %ecx
	
start_loop:

	cmpl $20, %edx #Verifica se edx tem 20 elementos
	jg end

	movl ptrgrades, %eax 
	movl num, %ecx
	movl $0, %esi

	cmpl $0, %ecx
	je end_loop1

start_loop2:

	movsbl (%eax), %edi #Move o valor de eax para o registo edi
	cmpl %edi, %edx #Compara o valor de edx com edi
	jne no_inc #Salata para a funcao no caso de não serem iguais
	
	incl %esi 
	
no_inc:

	incl %eax #Incrementa 1 a eax

	loop start_loop2

end_loop1:
	
	movl %esi, (%ebx) #Move o valor do registo esi para ebx

	addl $4, %ebx #Adiciona 4 a ebx para avancar
	incl %edx #Incrementa 1 a edx
	
	jmp start_loop
end:
	popl %edi
	popl %esi
	popl %ebx

#epilogue

	movl %ebp,%esp
	popl %ebp
	ret
