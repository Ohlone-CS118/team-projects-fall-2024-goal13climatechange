.data
# set display to:
#	Pixels width and height to 2x2
#	Display width and height to 512x256
#	Base address = 0x10010000
# This will make our screen width 256x128 (512/2 = 256)
#	256 x 128 x 4 = 524288 bytes
	display:	.space	131072	# allocate space for 256x128
	print_buffer:		.space 4 # character buffer, 4 bytes
	print_buffer_char:	.space 1 # character buffer, 1 byte
	img:		.asciiz "boot128.ppm"
	map:		.asciiz "map128.ppm"
	texas:		.asciiz "texas.pbm"
	
define:
# screen information
	.eqv PIXEL_SIZE 1
	.eqv WIDTH 256
	.eqv HEIGHT 128
	.eqv DISPLAY 0x10010000

# colors
	.eqv	RED 	0x00FF0000
	.eqv	GREEN 	0x0000FF00
	.eqv	BLUE	0x000000FF
	.eqv	WHITE	0x00FFFFFF

.text
main:
	move $fp, $sp	# initialize stack, move frame pointer to end of stack
	
	la $a0, img	# set image path
	li $a1, 0	# x-offset 0
	li $a2, 0	# y-offset 0
	#jal printer
	#jal key_printer

	la $a0, map	# set image path
	li $a1, 0	# x-offset 0
	li $a2, 0	# y-offset 0
	jal printer

	la $a0, texas	# set image path
	li $a1, 0	# x-offset 0
	li $a2, 0	# y-offset 0
	li $a3, RED	# set color to red
	jal key_printer
	
	li $v0, 10	# exit safely
	syscall

# print a color image to the bitmap display
# precondition: 
#	$a0: file path of P3 (color ASCII) PPM image using 0-255 range
#	$a1: x-coordinate
#	$a2: y-coordinate
#	print_buffer and print_buffer_char are defined in .data
# postcondition:
#	image written to display
printer:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	
	move $s0, $a0		# store file path
	move $s1, $a1		# store x-coordinate
	move $s2, $a2		# store y-coordinate
	
	li $v0, 13	# open file
	move $a0, $s0
	li $a1, 0	# flag read mode
	li $a2, 0	# mode 0
	syscall
	
	move $s3, $v0	# save file descriptor
	
	# REGISTERS OF NOTE
	# $s0: file path
	# $s1: display x offset
	# $s2: display y offset
	# $s3: file descriptor
	# $s4: image width
	# $s5: image height
	# $s6: current pixel x
	# $s7: current pixel y
	# $t0: current read pixel
	# $t1: address to write pixel to
	# $t2: temp for WIDTH calculation
	
	# magic number
	li $v0, 14	# read from file
	move $a0, $s3	# load file descriptor
	la $a1, print_buffer	# load buffer
	li $a2, 3	# read past magic number
	syscall
	
	# width
	jal printer_read	# read the image width from file (read until space)
	move $s4, $v0		# store width into $s4
	
	# height
	jal printer_read	# read the image height from file (read until space)
	move $s5, $v0		# store height into $s4
	
	# levels
	jal printer_read	# read the image levels and ignore them (255 or bust, Who Needs More Than 24 Bits Per Pixel?)
	
	li $s6, 0		# initialize variables	
	li $s7, 0
printer_loop:
	# read pixel
	jal printer_read	# read red color component
	beq $v0, -1, printer_end	# end print at End Of File, else continue
	beq $t5, 1, printer_loop	# if new line encountered, re-read red color
	sb $v0, print_buffer+2	# store in buffer
	jal printer_read	# read green color component
	sb $v0, print_buffer+1	# store in buffer
	jal printer_read	# read blue color component
	sb $v0, print_buffer		# store in buffer
	lw $t0, print_buffer		# move read pixel into $t0
	
	# write to display
	# REGISTERS OF NOTE
	# $s1: display x offset
	# $s2: display y offset
	# $s4: image width
	# $s5: image height
	# $s6: current pixel x
	# $s7: current pixel y
	# $t0: current read pixel
	# $t1: address to write pixel to
	# $t2: temp for WIDTH
	# address of pixel: DISPLAY + 4((offsetX + pixelX) + WIDTH[offsetY + pixelY])

	# FIRST, handle if current read x surpasses image width
	bne $s6, $s4, printer_xOK	# if x within bounds, do not bother, else:
	addi $s7, $s7, 1		# add 1 to y coordinate of pixel that's being read
	li $s6, 0			# reset x coordinate of pixel being read back to zero
	printer_xOK:
	# NEXT, handle if image is fully printed
	bge $s7, $s5, printer_end	# if y coordinate is higher than image height, printing is done
	#FINALLY, print out pixel
	li $t1, 0			# reset $t1
	li $t2, WIDTH			# store display width in $t2
	add $t1, $s2, $s7		# add display offset Y coordinate to y coordinate of current pixel
	mul $t1, $t1, $t2		# multiply result by width
	add $t1, $t1, $s1		# add display offset x coordinate
	add $t1, $t1, $s6		# add current pixel x coordinate
	mul $t1, $t1, 4			# multiply result by 4
	sw $t0, DISPLAY($t1)		# write to display
	addi $s6, $s6, 1		# advance to next pixel
	j printer_loop
	
printer_end:
	li $v0, 16	# close file
	move $a0, $s3	# load file descriptor
	syscall

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return
	
printer_read:	# read into $v0 until a whitespace or new line
	li $t4, 0		# initialize $t4 to hold number being read
	li $t5, 0		# clear newline flag
	
printer_readLoop:
	li $v0, 14		# read from file
	move $a0, $s3		# load file descriptor
	la $a1, print_buffer_char	# load buffer
	li $a2, 1		# read character
	syscall
	
	beqz $v0, printer_readEOF	# exception if end of file reached
	lb $t1, print_buffer_char		# load read character into $t1
	li $t2, ' '			# load space into t2 for comparison
	li $t3, '\n'			# load newline into t3 for comparison
	beq $t1, $t2, printer_readEnd	# end read if at space
	beq $t1, $t3, printer_readNewLine	# end read if at newline
					# else
	mul $t4, $t4, 10		# multiply by ten to prepare for next number
	subi $t1, $t1, 48		# convert from ascii-number to decimal
	add $t4, $t4, $t1		# add read number into $t4
	j printer_readLoop		# loop
	
printer_readNewLine:
	li $t5, 1			# flag in $t5 if newline reached	
printer_readEnd:
	move $v0, $t4		# move result into $v0

	jr $ra			# return
	
printer_readEOF:
	li $v0, -1		# return -1 if at end of file
	
	jr $ra			# return

# print a monochrome image as an overlay (0 = overlay color, 1 = alpha [not printed])
# precondition: 
#	$a0: file path of P1 (BW ASCII) PBM
#	$a1: x-coordinate
#	$a2: y-coordinate
#	$a3: overlay color
#	print_buffer and print_buffer_char are defined in .data
# postcondition:
#	image written to display
key_printer:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	
	move $s0, $a0		# store file path
	move $s1, $a1		# store x-coordinate
	move $s2, $a2		# store y-coordinate
	
	li $v0, 13	# open file
	move $a0, $s0
	li $a1, 0	# flag read mode
	li $a2, 0	# mode 0
	syscall
	
	move $s3, $v0	# save file descriptor
	
	# REGISTERS OF NOTE
	# $s0: file path
	# $s1: display x offset
	# $s2: display y offset
	# $s3: file descriptor
	# $s4: image width
	# $s5: image height
	# $s6: current pixel x
	# $s7: current pixel y
	# $t0: current read pixel
	# $t1: address to write pixel to
	# $t2: temp for WIDTH calculation
	
	# magic number
	li $v0, 14	# read from file
	move $a0, $s3	# load file descriptor
	la $a1, print_buffer	# load buffer
	li $a2, 3	# read past magic number
	syscall
	
	# width
	jal key_printer_read	# read the image width from file (read until space)
	move $s4, $v0		# store width into $s4
	
	# height
	jal key_printer_read	# read the image height from file (read until space)
	move $s5, $v0		# store height into $s4
	
	# levels
	jal key_printer_read	# read the image levels and ignore them (255 or bust, Who Needs More Than 24 Bits Per Pixel?)
	
	li $s6, 0		# initialize variables	
	li $s7, 0
key_printer_loop:
	# read pixel
	jal key_printer_read	# read pixel
	beq $v0, -1, key_printer_end	# end print at End Of File, else continue
	beq $t5, 1, key_printer_loop	# if new line encountered, re-read red color
	move $t0, $v0			# store result in $t0
	
	# write to display
	# REGISTERS OF NOTE
	# $s1: display x offset
	# $s2: display y offset
	# $s4: image width
	# $s5: image height
	# $s6: current pixel x
	# $s7: current pixel y
	# $t0: current read pixel
	# $t1: address to write pixel to
	# $t2: temp for WIDTH
	# address of pixel: DISPLAY + 4((offsetX + pixelX) + WIDTH[offsetY + pixelY])

	# FIRST, handle if current read x surpasses image width
	bne $s6, $s4, key_printer_xOK	# if x within bounds, do not bother, else:
	addi $s7, $s7, 1		# add 1 to y coordinate of pixel that's being read
	li $s6, 0			# reset x coordinate of pixel being read back to zero
	key_printer_xOK:
	# NEXT, handle if image is fully printed
	bge $s7, $s5, key_printer_end	# if y coordinate is higher than image height, printing is done
	# THEN, handle if the pixel should be transparent
	bnez $t0, key_printer_noprint	# if pixel is transparent, do not print pixel
	#FINALLY, print out pixel
	li $t1, 0			# reset $t1
	li $t2, WIDTH			# store display width in $t2
	add $t1, $s2, $s7		# add display offset Y coordinate to y coordinate of current pixel
	mul $t1, $t1, $t2		# multiply result by width
	add $t1, $t1, $s1		# add display offset x coordinate
	add $t1, $t1, $s6		# add current pixel x coordinate
	mul $t1, $t1, 4			# multiply result by 4
	sw $a3, DISPLAY($t1)		# write specified color to display
key_printer_noprint:
	addi $s6, $s6, 1		# advance to next pixel
	j key_printer_loop
	
key_printer_end:
	li $v0, 16	# close file
	move $a0, $s3	# load file descriptor
	syscall

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return
	
key_printer_read:	# read into $v0 until a whitespace or new line
	li $t4, 0		# initialize $t4 to hold number being read
	li $t5, 0		# clear newline flag
	
key_printer_readLoop:
	li $v0, 14		# read from file
	move $a0, $s3		# load file descriptor
	la $a1, print_buffer_char	# load buffer
	li $a2, 1		# read character
	syscall
	
	beqz $v0, key_printer_readEOF	# exception if end of file reached
	lb $t1, print_buffer_char		# load read character into $t1
	li $t2, ' '			# load space into t2 for comparison
	li $t3, '\n'			# load newline into t3 for comparison
	beq $t1, $t2, key_printer_readEnd	# end read if at space
	beq $t1, $t3, key_printer_readNewLine	# end read if at newline
					# else
	mul $t4, $t4, 10		# multiply by ten to prepare for next number
	subi $t1, $t1, 48		# convert from ascii-number to decimal
	add $t4, $t4, $t1		# add read number into $t4
	j key_printer_readLoop		# loop
	
key_printer_readNewLine:
	li $t5, 1			# flag in $t5 if newline reached	
key_printer_readEnd:
	move $v0, $t4		# move result into $v0

	jr $ra			# return
	
key_printer_readEOF:
	li $v0, -1		# return -1 if at end of file
	
	jr $ra			# return
