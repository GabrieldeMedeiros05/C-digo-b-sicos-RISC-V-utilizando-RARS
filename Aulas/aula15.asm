.text				# instrucoes assembly

	li a7,5
	ecall
	mv s0,a0		# leu um primeiro numero e moveu para s0
	
	li a7,5
	ecall
	mv s1,a0		# leu um segundo numero e moveu para s1
	
	# o segundo numero vai ser sempre maior ou igual ao primeiro
	
	add t0,s0,zero 		# coloca em t0 o valor de s0
	
	# add t0,s0,zero == mv t0,s0 (ambas instrucoes fazem a mesma coisa)
	
	
	li t1,1			# t1 = 1			
	li t2,2			# t2 = 2


loop:

	bgt t0,s1,out		# se t0 for maior que s1, va para out
				# se t0 nao for maior que s1, va para a proxima linha
				
	rem t3,t0,t2		# salvar em t3 o resto da divisao de t0 (indice/numero que aumenta) com o t2 (2)
				# t3 = t0%t2
				
	beq t3,t1,imprime 	# selecionar os numeros impares
	
	#bne t3,t1,imprime	selecionar os numeros pares
	
	j fimimprime
				
imprime:
				
	mv a0,t0		# copiou o que estava em t0 para a0 (a0 = t0)
	
	li a7,1
	ecall			# imprimiu o numero que estava em t0


fimimprime:
		
		
	addi t0,t0,1		# t0 = t0+1
	
	j loop			# voltar para o inicio do loop
	
	
out:

	li a7,10
	ecall			# retunr 0