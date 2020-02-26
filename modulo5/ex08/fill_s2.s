.section .text

	#a estrutura tem tamanho multiplo do maior tipo de dados nela presente 

	.equ DATA_SIZE, 16
	.equ VW_OFFSET,0
	.equ VJ_OFFSET, 6
	.equ VC_OFFSET, 10
	
	.global fill_s2

fill_s2:
	
#prologue

	pushl %ebp
	movl %ebp, %esp

#body

	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl 20(%ebp), %edi # Vetor vc
	movl 16(%ebp), %esi # Vetor vj
	movl 12(%ebp), %ecx # Vetor vw
	movl 8(%ebp), %ebx # pointer para estrutura
	
moveVW:

	movl VW_OFFSET(%ebx, %ecx, 2),%ebx # verificar offset

	
	
	
