.text 			# instrucoes de assembly

	li a7,5
	ecall		# lendo um numero do teclado e salvando em a0
	
	li t0,2		# guardar em t0 o numero 2
	
	div a0,a0,t0	# o primeiro registrador e onde vai ser salvo o resultado da divisao
			# o segundo registrador vai ser dividido pelo terceito registrador
			# a0 = a0/t0
	
	li a7,1
	ecall		# imprimir o resultado da divisao (a0)
	
	li a7,10
	ecall		# return 0