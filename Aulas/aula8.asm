.text			# instrucoes de assembly

	li a7,5
	ecall		# le um numero do teclado e salva em a0
	
	li t0,2		# guarda em t0 o numero 2
	
	rem a0,a0,t0	# o primeiro registrador e onde vai ser salvo o resto da divisao
			# o segundo registrador vai ser dividido pelo terceiro registrador
			# a0 = a0%t0
			
	li a7,1
	ecall		# imprimir o resto da divisao (a0)
	
	li a7,10
	ecall		# return 0