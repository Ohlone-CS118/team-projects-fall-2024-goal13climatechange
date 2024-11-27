.data

greeting: 	.asciiz "Our program shows a map temerature increase in the US\n"
promptYear:	.asciiz "Please enter the year you want to see the data: "
promptState:	.asciiz "Please enter the state you want to see: "
maxLength: 	.space 50
filePath: 	.asciiz ""



.text


main:

	li $v0, 4
	la $a0, greeting
	syscall
	
	jal promptDetails
	

	
	
	
	li $v0, 10
	syscall
	
	
	
promptDetails:

	li $v0, 4
	la $a0, promptYear
	syscall
	
	li $v0, 5
	syscall
	
	
	li $v0, 4
	la $a0, promptState
	syscall
	
	li $v0, 8
	la $a0, maxLength
	li $a1, 50
	syscall
	
	jr $ra
