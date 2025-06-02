.data				# memoria

hello: .string "\nHello, World!\n"

.text

	la a0,hello		# salvou em a0 o endereco da nossa string
	
	li a7,4
	ecall			# fez a syscall de imprimir uma string
	
	li a7,10
	ecall			# return 0