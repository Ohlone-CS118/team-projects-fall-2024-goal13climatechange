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
	boot:		.asciiz "boot128.ppm"
	map:		.asciiz "map128.ppm"
	alabama:	.asciiz "states/alabama.pbm"
	alaska:		.asciiz "states/alaska.pbm"
	arizona:	.asciiz "states/arizona.pbm"
	arkansas:	.asciiz "states/arkansas.pbm"
	california:	.asciiz "states/california.pbm"
	colorado:	.asciiz "states/colorado.pbm"
	connecticut:	.asciiz "states/connecticut.pbm"
	delaware:	.asciiz "states/delaware.pbm"
	darksouls:	.asciiz "states/darksouls.ppm"
	florida:	.asciiz "states/florida.pbm"
	georgia:	.asciiz "states/georgia.pbm"
	hawaii:		.asciiz "states/hawaii.pbm"
	idaho:		.asciiz "states/idaho.pbm"
	illinois:	.asciiz "states/illinois.pbm"
	indiana:	.asciiz "states/indiana.pbm"
	iowa:		.asciiz "states/iowa.pbm"
	kansas:		.asciiz "states/kansas.pbm"
	kentucky:	.asciiz "states/kentucky.pbm"
	louisiana:	.asciiz "states/louisiana.pbm"
	maine:		.asciiz "states/maine.pbm"
	maryland:	.asciiz "states/maryland.pbm"
	massachusetts:	.asciiz "states/massachusetts.pbm"
	michigan:	.asciiz "states/michigan.pbm"
	minnesota:	.asciiz "states/minnesota.pbm"
	mississippi:	.asciiz "states/mississippi.pbm"
	missouri:	.asciiz "states/missouri.pbm"
	montana:	.asciiz "states/montana.pbm"
	nebraska:	.asciiz "states/nebraska.pbm"
	nevada:		.asciiz "states/nevada.pbm"
	newhampshire:	.asciiz "states/newhampshire.pbm"
	newjersey:	.asciiz "states/newjersey.pbm"
	newmexico:	.asciiz "states/newmexico.pbm"
	newyork:	.asciiz "states/newyork.pbm"
	northcarolina:	.asciiz "states/northcarolina.pbm"
	northdakota:	.asciiz "states/northdakota.pbm"
	ohio:		.asciiz "states/ohio.pbm"
	oklahoma:	.asciiz "states/oklahoma.pbm"
	oregon:		.asciiz "states/oregon.pbm"
	pennsylvania:	.asciiz "states/pennsylvania.pbm"
	rhodeisland:	.asciiz "states/rhodeisland.pbm"
	southcarolina:	.asciiz "states/southcarolina.pbm"
	southdakota:	.asciiz "states/southdakota.pbm"
	tennessee:	.asciiz "states/tennessee.pbm"
	texas:		.asciiz "states/texas.pbm"
	utah:		.asciiz "states/utah.pbm"
	vermont:	.asciiz "states/vermont.pbm"
	virginia:	.asciiz "states/virginia.pbm"
	washington:	.asciiz "states/washington.pbm"
	washingtondc:	.asciiz "states/washingtondc.pbm"
	westvirginia:	.asciiz "states/westvirginia.pbm"
	wisconsin:	.asciiz "states/wisconsin.pbm"
	wyoming:	.asciiz "states/wyoming.pbm"
	
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
	
	#jal draw_boot

	jal draw_map

	li $a0, RED
	jal draw_alabama
	li $a0, RED
	jal draw_alaska
	li $a0, RED
	jal draw_arizona
	li $a0, RED
	jal draw_arkansas
	li $a0, RED
	jal draw_california
	li $a0, RED
	jal draw_colorado
	li $a0, RED
	jal draw_connecticut
	li $a0, RED
	jal draw_delaware
	li $a0, RED
	jal draw_florida
	li $a0, RED
	jal draw_georgia
	li $a0, RED
	jal draw_hawaii
	li $a0, RED
	jal draw_idaho
	li $a0, RED
	jal draw_illinois
	li $a0, RED
	jal draw_indiana
	li $a0, RED
	jal draw_iowa
	li $a0, RED
	jal draw_kansas
	li $a0, RED
	jal draw_kentucky
	li $a0, RED
	jal draw_louisiana
	li $a0, RED
	jal draw_maine
	li $a0, RED
	jal draw_maryland
	li $a0, RED
	jal draw_massachusetts
	li $a0, RED
	jal draw_michigan
	li $a0, RED
	jal draw_minnesota
	li $a0, RED
	jal draw_mississippi
	li $a0, RED
	jal draw_missouri
	li $a0, RED
	jal draw_montana
	li $a0, RED
	jal draw_nebraska
	li $a0, RED
	jal draw_nevada
	li $a0, RED
	jal draw_newhampshire
	li $a0, RED
	jal draw_newjersey
	li $a0, RED
	jal draw_newmexico
	li $a0, RED
	jal draw_vermont
	li $a0, RED
	jal draw_newyork
	li $a0, RED
	jal draw_northcarolina
	li $a0, RED
	jal draw_northdakota
	li $a0, RED
	jal draw_ohio
	li $a0, RED
	jal draw_oklahoma
	li $a0, RED
	jal draw_oregon
	li $a0, RED
	jal draw_pennsylvania
	li $a0, RED
	jal draw_rhodeisland
	li $a0, RED
	jal draw_southcarolina
	li $a0, RED
	jal draw_southdakota
	li $a0, RED
	jal draw_tennessee
	li $a0, RED
	jal draw_texas
	li $a0, RED
	jal draw_utah
	li $a0, RED
	jal draw_vermont
	li $a0, RED
	jal draw_virginia
	li $a0, RED
	jal draw_washington
	li $a0, RED
	jal draw_washingtondc
	li $a0, RED
	jal draw_westvirginia
	li $a0, RED
	jal draw_wisconsin
	li $a0, RED
	jal draw_wyoming
	jal draw_darksouls
	
	li $v0, 10	# exit safely
	syscall

# draw boot img
# precondition: no
# postcondition: boot drawn
draw_boot:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	la $a0, boot	# set image path
	li $a1, 0	# x-offset 0
	li $a2, 0	# y-offset 0
	jal printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw the map
# precondition: no
# postcondition: map drawn
draw_map:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	la $a0, map	# set image path
	li $a1, 0	# x-offset 0
	li $a2, 0	# y-offset 0
	jal printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_washington:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, washington	# set image path
	li $a1, 62	# x-offset 0
	li $a2, 6	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_oregon:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, oregon	# set image path
	li $a1, 55	# x-offset 0
	li $a2, 17	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_idaho:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, idaho	# set image path
	li $a1, 79	# x-offset 0
	li $a2, 10	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_montana:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, montana	# set image path
	li $a1, 88	# x-offset 0
	li $a2, 11	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_wyoming:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, wyoming	# set image path
	li $a1, 98	# x-offset 0
	li $a2, 32	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_northdakota:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, northdakota	# set image path
	li $a1, 124	# x-offset 0
	li $a2, 16	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_southdakota:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, southdakota	# set image path
	li $a1, 123	# x-offset 0
	li $a2, 30	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_minnesota:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, minnesota	# set image path
	li $a1, 146	# x-offset 0
	li $a2, 16	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_michigan:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, michigan	# set image path
	li $a1, 168	# x-offset 0
	li $a2, 25	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_wisconsin:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, wisconsin	# set image path
	li $a1, 160	# x-offset 0
	li $a2, 27	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_newyork:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, newyork	# set image path
	li $a1, 207	# x-offset 0
	li $a2, 27	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_vermont:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, vermont	# set image path
	li $a1, 223	# x-offset 0
	li $a2, 26	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_newhampshire:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, newhampshire	# set image path
	li $a1, 228	# x-offset 0
	li $a2, 24	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_maine:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, maine	# set image path
	li $a1, 230	# x-offset 0
	li $a2, 12	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_massachusetts:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, massachusetts	# set image path
	li $a1, 226	# x-offset 0
	li $a2, 34	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_rhodeisland:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, rhodeisland	# set image path
	li $a1, 230	# x-offset 0
	li $a2, 39	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_connecticut:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, connecticut	# set image path
	li $a1, 226	# x-offset 0
	li $a2, 40	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_nebraska:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, nebraska	# set image path
	li $a1, 122	# x-offset 0
	li $a2, 44	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_iowa:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, iowa	# set image path
	li $a1, 148	# x-offset 0
	li $a2, 42	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_illinois:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, illinois	# set image path
	li $a1, 166	# x-offset 0
	li $a2, 46	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_indiana:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, indiana	# set image path
	li $a1, 179	# x-offset 0
	li $a2, 49	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_ohio:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, ohio	# set image path
	li $a1, 188	# x-offset 0
	li $a2, 46	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_pennsylvania:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, pennsylvania	# set image path
	li $a1, 203	# x-offset 0
	li $a2, 42	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_newjersey:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, newjersey	# set image path
	li $a1, 221	# x-offset 0
	li $a2, 45	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_delaware:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, delaware	# set image path
	li $a1, 219	# x-offset 0
	li $a2, 52	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_maryland:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, maryland	# set image path
	li $a1, 214	# x-offset 0
	li $a2, 53	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_washingtondc:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, washingtondc	# set image path
	li $a1, 216	# x-offset 0
	li $a2, 56	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_california:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, california	# set image path
	li $a1, 52	# x-offset 0
	li $a2, 36	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_nevada:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, nevada	# set image path
	li $a1, 65	# x-offset 0
	li $a2, 40	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_utah:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, utah	# set image path
	li $a1, 84	# x-offset 0
	li $a2, 44	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_colorado:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, colorado	# set image path
	li $a1, 103	# x-offset 0
	li $a2, 51	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_kansas:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, kansas	# set image path
	li $a1, 128	# x-offset 0
	li $a2, 58	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_missouri:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, missouri	# set image path
	li $a1, 151	# x-offset 0
	li $a2, 56	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_kentucky:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, kentucky	# set image path
	li $a1, 175	# x-offset 0
	li $a2, 60	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_westvirginia:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, westvirginia	# set image path
	li $a1, 198	# x-offset 0
	li $a2, 54	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_virginia:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, virginia	# set image path
	li $a1, 198	# x-offset 0
	li $a2, 56	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_arizona:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, arizona	# set image path
	li $a1, 78	# x-offset 0
	li $a2, 67	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_newmexico:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, newmexico	# set image path
	li $a1, 99	# x-offset 0
	li $a2, 70	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_texas:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, texas	# set image path
	li $a1, 109	# x-offset 0
	li $a2, 74	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_oklahoma:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, oklahoma	# set image path
	li $a1, 124	# x-offset 0
	li $a2, 72	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_arkansas:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, arkansas	# set image path
	li $a1, 155	# x-offset 0
	li $a2, 74	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_louisiana:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, louisiana	# set image path
	li $a1, 157	# x-offset 0
	li $a2, 91	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_tennessee:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, tennessee	# set image path
	li $a1, 172	# x-offset 0
	li $a2, 71	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_mississippi:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, mississippi	# set image path
	li $a1, 168	# x-offset 0
	li $a2, 81	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_alabama:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, alabama	# set image path
	li $a1, 179	# x-offset 0
	li $a2, 80	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_georgia:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, georgia	# set image path
	li $a1, 189	# x-offset 0
	li $a2, 79	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_northcarolina:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, northcarolina	# set image path
	li $a1, 193	# x-offset 0
	li $a2, 67	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_southcarolina:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, southcarolina	# set image path
	li $a1, 198	# x-offset 0
	li $a2, 77	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_florida:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, florida	# set image path
	li $a1, 184	# x-offset 0
	li $a2, 98	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_hawaii:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, hawaii	# set image path
	li $a1, 26	# x-offset 0
	li $a2, 58	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# draw state
# precondition: $a0 contains color to print the state
# postcondition: map drawn
draw_alaska:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	move $a3, $a0		# move specified color to argument for key_printer

	la $a0, alaska	# set image path
	li $a1, 18	# x-offset 0
	li $a2, 87	# y-offset 0
	jal key_printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

draw_darksouls:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	la $a0, darksouls	# set image path
	li $a1, 0	# x-offset
	li $a2, 48	# y-offset
	jal printer

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

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
	blt $s6, $s4, printer_xOK	# if x within bounds, do not bother, else:
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

	jr $ra			# return to main printer function
	
printer_readEOF:
	li $v0, -1		# return -1 if at end of file
	
	jr $ra			# return to main printer function

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
	
	li $s6, 0		# initialize variables	
	li $s7, 0
key_printer_loop:
	# read pixel
	jal key_printer_read	# read pixel
	beq $v0, -1, key_printer_end	# end print at End Of File, else continue
	beq $t5, 1, key_printer_loop	# if new line encountered, re-read pixel
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
	blt $s6, $s4, key_printer_xOK	# if x within bounds, do not bother, else:
	addi $s7, $s7, 1		# add 1 to y coordinate of pixel that's being read
	li $s6, 0			# reset x coordinate of pixel being read back to zero
	key_printer_xOK:
	# NEXT, handle if image is fully printed
	bge $s7, $s5, key_printer_end	# if y coordinate is higher than image height, printing is done
	# THEN, handle if the pixel should be transparent
	beq $t0, 1, key_printer_noprint	# if pixel is transparent, do not print pixel
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

	jr $ra			# return to main printer function
	
key_printer_readEOF:
	li $v0, -1		# return -1 if at end of file
	
	jr $ra			# return to main printer function
