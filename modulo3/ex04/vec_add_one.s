.section .data
	
.global ptrvec	

.global num
	
.section .text

.global vec_add_one

vec_add_one:

#epilogue

	pushl %ebp
	movl %esp,%ebp
#body
	movl num, %ecx #Coloca o num declarado em C no registo ecx
	movl ptrvec, %edx #Coloca edx com o valor do endereco ptrvec

	cmpl $0, %ecx
	je end

add_loop:
	
	addl $1, (%edx) #Adiciona 1 ao ao valor guardado por edx
	addl $4, %edx #Adiciona 4 ao valor do resgisto edx
	
	loop add_loop
	
end:
#epilogue
	movl %ebp, %esp
	popl %ebp	
	ret
