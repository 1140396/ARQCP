.section .data

.global code
.global current_salary

.section .text

.global salary

salary:
#prologue
	
	pushl %ebp
	movl %esp, %ebp

#body
	movl $0, %eax
	movl code, %eax

	cmpl $10,%eax
	je cod10

	cmpl $11, %eax
	je cod11

	cmpl $12, %eax
	je cod12

	jmp cod_all

cod10:
	movl $0,%eax
	movl current_salary, %eax
	addl $300, %eax

	jmp fim

cod11:
	movl $0, %eax
	movl current_salary, %eax
	addl $250, %eax

	jmp fim

cod12:
	movl $0, %eax
	movl current_salary, %eax
	addl $150, %eax

	jmp fim

cod_all:
	movl $0, %eax
	movl current_salary, %eax
	addl $1000, %eax

	jmp fim

fim:	
#epilogue

	movl %ebp, %esp
	popl %ebp
	ret
