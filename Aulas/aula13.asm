.text				# intrucoes assembly

	li a7,5
	ecall			# le um numero e salvar em a0
	
	li t0,2			# t0 = 2
	
	rem a0,a0,t0		# a0 = a0%t0 (salvar em a0 o resto da divisao a0/t0)
	
	li t1,1			# t1 = 1
	
	beq a0,t1,if		# se a0 (resto da divisao) for igual a t1 (1), va para o if (label)	impar
				# se a0 nao for igual a t1, va para a proxima linha			par
	
							
else:

	addi a0,a0,-1		# a0 = a0-1
	
	li a7,1
	ecall			# imprimir -1
	
	j end			# pula para a label (end)	



if:				# (label)				

	li a7,1
	ecall			# imprimir 1



end:				# (label)

	li a7,10
	ecall			# return 0