.data

Alabama:		.asciiz	"C:/Users/thega/Downloads/School/CS118/Project/States/Alabama.txt"
Alaska:			.asciiz	"C:/Users/thega/Downloads/School/CS118/Project/States/Alaska.txt"
Arizona:		.asciiz	"C:/Users/thega/Downloads/School/CS118/Project/States/Arizona.txt"
buffer:	 		.space 200
stateNameAlabama:	.asciiz	"Alabama"
stateNameAlaska:	.asciiz	"Alaska"
stateNameArizona:	.asciiz	"Arizona"

state:		.space 15
stateprompt:	.asciiz "Enter a state: "
year:		.space 8
yearprompt:	.asciiz	"Enter a Decade from the following(1990, 2000, 2010, 2020): "
newline:	.asciiz	"\n"
year1990:		.asciiz	"1990"
year2000:		.asciiz	"2000"
year2010:		.asciiz	"2010"
year2020:		.asciiz	"2020"

testbuffer:		.space	4

.text
main:	
	move $fp, $sp
	addi $sp, $sp, -12
	
	jal getInput
	
	li $v0, 4
	la $a0, newline
	syscall
	
	#li $v0, 4
	lw $a0, -4($fp)
	#syscall
	
	jal compare
	la $a1, buffer
	jal readFile
	
	sw $a0, -12($fp)
	
	jal exactTemp
	
	#li $v0, 11
	li $v0, 4
	#la $a0, buffer
	la $a0, testbuffer
	#addi $a0, $a0, 5
	syscall

	li $v0, 10
	syscall

getInput:
	la $a0, stateprompt		#print state prompt
	li $v0, 4
	syscall

	la $a0, state			#store input in label state
	li $v0, 8
	li $a1, 20			#max input length
	syscall
	
	sw $a0, -4($fp)
	
	la $a0, yearprompt
	li $v0, 4
	syscall
	
	la $a0, year
	li $v0, 5
	syscall
	
	sw $v0, -8($fp)
	
	jr $ra

#precondition:	$a0 contains the user inputted string for the state
#		$a1 contains the string of a statename it will be compared to
#postcondition
compare:
	
compareAlabama:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameAlabama	#string to compare to
	move $t1, $a1

	li $t4, 0	#initialize counter
	li $t5, 6
    
compareloopAlabama:
	beq $t4,$t5,stringsEqualAlabama
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		#if characters don't match then exit loop
		bne $t2, $t3, endloopAlabama

			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopAlabama	#loop

endloopAlabama:
	j compareAlaska
    
stringsEqualAlabama:
	la $a0, Alabama		#load the path of Alabama
	jr $ra			#return
    
compareAlaska:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameAlaska	#string to compare to
	move $t1, $a1

	li $t4, 0		#reset counter
	li $t5, 6

compareloopAlaska:
	beq $t4,$t5,stringsEqualAlaska
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopAlaska

			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopAlaska	#loop

endloopAlaska:
	j compareArizona	#move to next state comparison

stringsEqualAlaska:
	la $a0, Alaska		#load path for Alaska
	jr $ra
    
compareArizona:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameArizona	#string to compare to
	move $t1, $a1

	li $t4, 0			#initialize counter
	li $t5, 6			
    
compareloopArizona:
	beq $t4,$t5,stringsEqualArizona
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
    
#if characters don't match then exit loop
		bne $t2, $t3, endloopArizona
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopArizona	#loop
#temporary stopping point
endloopArizona:
	li $v0, 10
	syscall
	#jr $ra

stringsEqualArizona:
	la $a0, Arizona		#load the path for Arizona.txt
	jr $ra

#
#postcondition:	$a0 will contain the temperature for the requested decade
exactTemp:	
    
compare1990:
	lw $t2, -8($fp)
	li $t3, 1990
	beq $t2,$t3,stringsEqual1990
	bne $t2, $t3, not1990

#temporary stopping point
not1990:
	j compare2000
	li $v0, 10
	syscall

stringsEqual1990:
	la $a0, buffer
	addi $a0, $a0, 15
	jr $ra

compare2000:
	lw $t2, -8($fp)
	li $t3, 2000
	beq $t2,$t3,stringsEqual2000
	bne $t2, $t3, not2000

#temporary stopping point
not2000:
	#j compare2010
	li $v0, 10
	syscall

stringsEqual2000:

	la $a0, buffer
	lb $a0, 5($a0)
	move $t0, $a0
	sb $t0, testbuffer
	la $a0, buffer
	lb $a0, 6($a0)
	move $t0, $a0
	sb $t0, testbuffer+1
	la $a0, buffer
	lb $a0, 7($a0)
	move $t0, $a0
	sb $t0, testbuffer+2	
	
	jr $ra
	

	
	


#precondition:	$a0 is equal to the file path
#		$a1 is equal to the buffer
#postcondition:	The buffer address holds the file text
readFile:
	move $s0, $a0		#stash the file path
	move $s1, $a1		#stash the buffer
	
	li $v0, 13		#open the file
	move $a0, $s0		#set the file path
	li $a1, 0		#
	li $a2, 0		#
	syscall
	
	move $s2, $v0		#save the file handler
	
	li $v0, 14		#read the file
	move $a0, $s2		#set the file handler
	move $a1, $s1		#set the buffer
	li $a2, 199		#set the maximum length to 199	(space for null terminator)
	syscall
	
	move $s3, $v0		#save the number of chars read
	
	add $s4, $s3, $s1	#insert the terminating null character (\0)
	sb $zero, 0($s4)	
	
	li $v0, 16		#close file
	move $a0, $s2		#set the file handler
	
	jr $ra
