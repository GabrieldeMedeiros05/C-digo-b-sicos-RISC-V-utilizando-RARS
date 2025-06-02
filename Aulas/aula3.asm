.text			# instrucoes de assembly

	li a7,5
	ecall		# ler um numero que o usuario digitar e salva-lo em a0
	
	li a7,1
	ecall		# imprimir o numero em a0 (numero digitado)
	
	li a7,10
	ecall		# return 0