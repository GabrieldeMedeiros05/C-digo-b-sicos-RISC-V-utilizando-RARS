.text			# instrucoes de assembly

	li a7,5
	ecall		# lendo um numero do teclado e salvando em a0
	
	addi a0,a0,1	# o primeiro registrador e onde vai ser salvo o resultado da soma. a soma vai ser segundo registrador + numero
			# a0 = a0+1
			
	li a7,1
	ecall		# imprimir o resultado da soma (a0)
	
	li a7,10
	ecall		# return 0	