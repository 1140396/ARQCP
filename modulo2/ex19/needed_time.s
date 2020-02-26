.section .data

	.global current
	.global desired

.section .text

	.global needed_time

needed_time:

	# prologue

	pushl %ebp
	movl %esp, %ebp

	# body

	movsbl current, %eax # insere a variavel current no registo eax
	movsbl desired, %ecx # insere a variavel desired no registo ecx

	cmpl %eax, %ecx # verifica se a temperatura atual é maior que a desejada
	je igual
	jl atual_maior
	jg atual_menor

atual_menor:
	movsbl desired, %eax # insere a variavel de 16 bits no registo eax (32 btis)
	movsbl current, %ecx # insere a variavel de 16 bits no registo ecx (32 btis)
	subl %ecx, %eax # subtrai o registo ecx ao registo eax
	movl $120, %ecx # insere o valor 120 no registo ecx
	mull %ecx # multiplica o registo ecx pelo registo eax
	jmp end # salta para o fim da função

atual_maior:
	subl %ecx, %eax # subtrai o registo ecx ao registo eax
	movl $180, %ecx # insere o valor 180 no registo ecx
	mull %ecx # multiplica o registo ecx pelo registo eax
	jmp end # salta pra o fim da função
igual:
	movl $0, %eax # insere o valor 0 no registo eax
	
	# epilogue

end:	
	movl %ebp, %esp
	popl %ebp

	ret
