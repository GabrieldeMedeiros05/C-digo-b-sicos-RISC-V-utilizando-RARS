.text			# intrucoes de assembly

	li a0,10	# guardou em a0 o numero 10
	
	
# o comando de "ecall" e aconselhado estar junto do registrador a7
	
	li a7,1
	ecall		# imprime o numero salvo em a0 (10)
	
	li a7,10
	ecall		# return 0