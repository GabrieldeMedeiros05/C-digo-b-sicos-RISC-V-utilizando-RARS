.data				# memoria

espaco: .string " "

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

loop:

	bgt t0,s1,out		# se t0 for maior que s1, va para out
				# se t0 nao for maior que s1, va para a proxima linha
				
	mv a0,t0		# copiou o que estava em t0 para a0 (a0 = t0)
	
	li a7,1
	ecall			# imprimiu o numero que estava em t0
	
	la a0,espaco		# salvou o endeco de espaco em a0
	li a7,4
	ecall			# imprimiu o espaco
	
	addi t0,t0,1		# t0 = t0+1
	
	j loop			# voltar para o inicio do loop
	
	
out:

	li a7,10
	ecall			# retunr 0