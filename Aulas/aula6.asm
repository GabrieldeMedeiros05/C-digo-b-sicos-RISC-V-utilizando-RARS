.text 			# instrucoes de assembly

	li a7,5
	ecall		# lendo um numero do teclado e salvando em a0
	
	li t0,2		# guardar em t0 o numero 2
	
	mul a0,a0,t0 	# o primeiro registrador e onde vai ser salvo o resultado da multiplicacao
			# o segundo e o terceito registrador vao ser multiplicados
			# a0 = a0*t0
	
	li a7,1
	ecall		# imprimir o resultado da multiplicacao (a0)
	
	li a7,10
	ecall		# return 0