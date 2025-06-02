.text			# instrucoes de assembly

	li a7,10	# guardamos o numero 10 no registrador a7
			# o registrador a7 e especial. nele, vamos guardar os codicos das chamadas de sistema operacional
	
	
	ecall		# chama o sistema operacional
			# return 0

