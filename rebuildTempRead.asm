.data
	Alabama:		.asciiz	"States/Alabama.txt"
	Alaska:			.asciiz	"States/Alaska.txt"
	Arizona:		.asciiz	"States/Arizona.txt"

	temperature_buffer: .space 4	# allocate space for faciltating reading in temperatures

.text
	move $fp, $sp		# initialize frame pointer at start of stack

	la $a0, Alabama
	li $a1, 0
	jal readTemp

	move $t0, $v0		# move result to $t0

	li $v0, 1		# print result
	move $a0, $t0
	syscall

	li $v0, 10		# safe exit
	syscall

# return the desired temperature at the desired line, reads until newline
# precondition:
#	$a0: path to state file
#	$a1: which line to read from (starts at 0, which should be temp at current decade)
# postcondition:
#	$v0 contains temperature at requested location, -1 if temperature does not exist at requested line	
readTemp:
	subi $sp, $sp, 8	# allocate 8 bytes in stack
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup original frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	# USED REGISTERS
	# $s0: requested line to read from text file
	# $s1: file descriptor for requested file
	# $s2: counter to count how many temperatures have been read
	move $s0, $a1		# move requested line to $t1
	
	li $v0, 13	# open file
			# $a0 already contains path to file
	li $a1, 0	# flag read only mode
	syscall

	move $s1, $v0	# move file descriptor into $s1

	li $s2, 0		# reset counter

readTemp_loop:
	bgt $s2, $s0, readTemp_loopEnd	# if requested temp has already been read, stop reading
	jal readTemp_readTemp	# read 1 temperature from the file
	beq $v0, -1, readTemp_loopEnd	# if end of file is reached, stop reading
	addi $s2, $s2, 1	# else, increment counter by 1
	j readTemp_loop		# else loop
readTemp_loopEnd:
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore original frame pointer
	addi $sp, $sp, 8	# pop everything off stack
	jr $ra			# return

# i am reusing the reading engine i wrote for the printer lmao
# read arbitrary number of numbers until a newline is encountered
readTemp_readTemp:		# read into $v0 until a whitespace or new line
	li $t0, 0		# initialize $t0 to hold number being read

readTemp_readLoop:
	li $v0, 14			# read from file
	move $a0, $s1			# load file descriptor
	la $a1, temperature_buffer	# load buffer
	li $a2, 1			# read character
	syscall
	
	beqz $v0, readTemp_readEOF	# throw exception if end of file reached
	lb $t1, temperature_buffer	# load read character into $t1
	li $t2, '\n'			# load newline into t2 for comparison
	li $t3, 13			# load carriage return into $t3 for comparison (to deal with CRLF files)
	beq $t1, $t3, readTemp_readLoop	# if CR detected, reread to catch LF (new line)
						# for newlines, Windows uses both CR and LF, Unix only uses LF.
						# if we only catch LF, CR will be read as part of the number and this is incorrect
	beq $t1, $t2, readTemp_endRead	# if read character is a newline, stop reading
					# else
	mul $t0, $t0, 10		# multiply by ten to prepare for next number
	subi $t1, $t1, 48		# convert from ascii-number to decimal
	add $t0, $t0, $t1		# add read number into $t0
	j readTemp_readLoop		# loop	
	
readTemp_readEOF:
	li $t0, -1		# return -1 if at end of file
readTemp_endRead:
	move $v0, $t0		# move result into $v0
	jr $ra			# return to main printer function
