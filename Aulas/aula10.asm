.text 			# instrucoes de assembly

	li a7,5
	ecall		# lendo um primeiro numero do teclado e salvando em a0
	
	mv s0,a0	# copiando para s0 o numero em a0 (s0 = a0)
			# estamos copiando para s0 o valor de a0 para que esse valor nao seja sobrescrito na segunda leitura
	
	li a7,5
	ecall		# lendo um segunndo numero do teclado e salvando em a0
	
	mv s1,a0	# copiando para s1 o numero em a0 (s1 = a0)
	
	
	sub a0,s0,s1 	# o primeiro registrador e onde vai ser salvo o resultado da subtracao
			# segundo registrador menos terceito registrador
			# a0 = s0-s1
	
	li a7,1
	ecall		# imprimir o resultado da subtracao (a0)
	
	li a7,10
	ecall		# return 0