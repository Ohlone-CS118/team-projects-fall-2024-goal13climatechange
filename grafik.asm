# IMAGE CREDITS
# Map of USA https://commons.wikimedia.org/wiki/File:Map_of_USA_with_state_names.svg
# Bald eagle https://commons.wikimedia.org/wiki/File:Bald_eagle_about_to_fly_in_Alaska_(2016).jpg
# Epic truck https://commons.wikimedia.org/wiki/File:Freightliner_M2_106_6x4_2014_(14240376744).jpg
# Explosion https://commons.wikimedia.org/wiki/File:A_detonation_erupts_as_U.S._Marines_with_the_1st_Explosive_Ordnance_Disposal_Company,_Combat_Logistics_Regiment_2_conduct_a_demolition_operation_in_Helmand_province,_Afghanistan,_March_17,_2013_130317-M-KS710-206.jpg
# The DOnald https://commons.wikimedia.org/wiki/File:Donald_Trump_official_portrait.jpg
# Mount Rushmore https://commons.wikimedia.org/wiki/File:Mount_Rushmore_detail_view_(100MP).jpg
# Special Agent Jack Decker (and the other guy) https://www.adultswim.com/videos/decker/
# The flag is my own personal photo

.data
# set display to:
#	Pixels width and height to 2x2
#	Display width and height to 512x256
#	Base address = 0x10010000
# This will make our screen width 256x128 (512/2 = 256)
#	256 x 128 x 4 = 524288 bytes
	display:	.space	131072	# allocate space for 256x128
	boot:		.asciiz "graphics/boot128.ppm"
	map:		.asciiz "graphics/map128.ppm"
	credits: 	.asciiz "graphics/credits.ppm"
	map_alabama:	.asciiz "graphics/alabama.pbm"
	map_alaska:		.asciiz "graphics/alaska.pbm"
	map_arizona:	.asciiz "graphics/arizona.pbm"
	map_arkansas:	.asciiz "graphics/arkansas.pbm"
	map_california:	.asciiz "graphics/california.pbm"
	map_colorado:	.asciiz "graphics/colorado.pbm"
	map_connecticut:	.asciiz "graphics/connecticut.pbm"
	map_delaware:	.asciiz "graphics/delaware.pbm"
	map_darksouls:	.asciiz "graphics/darksouls.ppm"
	map_florida:	.asciiz "graphics/florida.pbm"
	map_georgia:	.asciiz "graphics/georgia.pbm"
	map_hawaii:		.asciiz "graphics/hawaii.pbm"
	map_idaho:		.asciiz "graphics/idaho.pbm"
	map_illinois:	.asciiz "graphics/illinois.pbm"
	map_indiana:	.asciiz "graphics/indiana.pbm"
	map_iowa:		.asciiz "graphics/iowa.pbm"
	map_kansas:		.asciiz "graphics/kansas.pbm"
	map_kentucky:	.asciiz "graphics/kentucky.pbm"
	map_louisiana:	.asciiz "graphics/louisiana.pbm"
	map_maine:		.asciiz "graphics/maine.pbm"
	map_maryland:	.asciiz "graphics/maryland.pbm"
	map_massachusetts:	.asciiz "graphics/massachusetts.pbm"
	map_michigan:	.asciiz "graphics/michigan.pbm"
	map_minnesota:	.asciiz "graphics/minnesota.pbm"
	map_mississippi:	.asciiz "graphics/mississippi.pbm"
	map_missouri:	.asciiz "graphics/missouri.pbm"
	map_montana:	.asciiz "graphics/montana.pbm"
	map_nebraska:	.asciiz "graphics/nebraska.pbm"
	map_nevada:		.asciiz "graphics/nevada.pbm"
	map_newhampshire:	.asciiz "graphics/newhampshire.pbm"
	map_newjersey:	.asciiz "graphics/newjersey.pbm"
	map_newmexico:	.asciiz "graphics/newmexico.pbm"
	map_newyork:	.asciiz "graphics/newyork.pbm"
	map_northcarolina:	.asciiz "graphics/northcarolina.pbm"
	map_northdakota:	.asciiz "graphics/northdakota.pbm"
	map_ohio:		.asciiz "graphics/ohio.pbm"
	map_oklahoma:	.asciiz "graphics/oklahoma.pbm"
	map_oregon:		.asciiz "graphics/oregon.pbm"
	map_pennsylvania:	.asciiz "graphics/pennsylvania.pbm"
	map_rhodeisland:	.asciiz "graphics/rhodeisland.pbm"
	map_southcarolina:	.asciiz "graphics/southcarolina.pbm"
	map_southdakota:	.asciiz "graphics/southdakota.pbm"
	map_tennessee:	.asciiz "graphics/tennessee.pbm"
	map_texas:		.asciiz "graphics/texas.pbm"
	map_utah:		.asciiz "graphics/utah.pbm"
	map_vermont:	.asciiz "graphics/vermont.pbm"
	map_virginia:	.asciiz "graphics/virginia.pbm"
	map_washington:	.asciiz "graphics/washington.pbm"
	map_washingtondc:	.asciiz "graphics/washingtondc.pbm"
	map_westvirginia:	.asciiz "graphics/westvirginia.pbm"
	map_wisconsin:	.asciiz "graphics/wisconsin.pbm"
	map_wyoming:	.asciiz "graphics/wyoming.pbm"
	graphic_offset:		.space 1
	print_buffer:		.space 4 # character buffer, 4 bytes
	print_buffer_char:	.space 4 # character buffer, 4 bytes (to prevent word alignment issues)
	
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
# global declarations
.globl draw_boot
.globl self_test
.globl draw_map
.globl draw_credits

.globl draw_alabama
.globl draw_alaska
.globl draw_arizona
.globl draw_arkansas
.globl draw_california
.globl draw_colorado
.globl draw_connecticut
.globl draw_delaware
.globl draw_florida
.globl draw_georgia
.globl draw_hawaii
.globl draw_idaho
.globl draw_illinois
.globl draw_indiana
.globl draw_iowa
.globl draw_kansas
.globl draw_kentucky
.globl draw_louisiana
.globl draw_maine
.globl draw_maryland
.globl draw_massachusetts
.globl draw_michigan
.globl draw_minnesota
.globl draw_mississippi
.globl draw_missouri
.globl draw_montana
.globl draw_nebraska
.globl draw_nevada
.globl draw_newhampshire
.globl draw_newjersey
.globl draw_newmexico
.globl draw_vermont
.globl draw_newyork
.globl draw_northcarolina
.globl draw_northdakota
.globl draw_ohio
.globl draw_oklahoma
.globl draw_oregon
.globl draw_pennsylvania
.globl draw_rhodeisland
.globl draw_southcarolina
.globl draw_southdakota
.globl draw_tennessee
.globl draw_texas
.globl draw_utah
.globl draw_virginia
.globl draw_washington
.globl draw_washingtondc
.globl draw_westvirginia
.globl draw_wisconsin
.globl draw_wyoming

main:
	move $fp, $sp	# initialize stack, move frame pointer to end of stack
	
	jal draw_boot
	jal draw_map
	jal self_test
	jal draw_credits
	
	li $v0, 10	# exit safely
	syscall

self_test:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

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

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

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

# draw the credits
# precondition: no
# postcondition: credits drawn
draw_credits:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	la $a0, credits	# set image path
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

	la $a0, map_washington	# set image path
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

	la $a0, map_oregon	# set image path
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

	la $a0, map_idaho	# set image path
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

	la $a0, map_montana	# set image path
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

	la $a0, map_wyoming	# set image path
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

	la $a0, map_northdakota	# set image path
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

	la $a0, map_southdakota	# set image path
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

	la $a0, map_minnesota	# set image path
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

	la $a0, map_michigan	# set image path
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

	la $a0, map_wisconsin	# set image path
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

	la $a0, map_newyork	# set image path
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

	la $a0, map_vermont	# set image path
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

	la $a0, map_newhampshire	# set image path
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

	la $a0, map_maine	# set image path
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

	la $a0, map_massachusetts	# set image path
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

	la $a0, map_rhodeisland	# set image path
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

	la $a0, map_connecticut	# set image path
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

	la $a0, map_nebraska	# set image path
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

	la $a0, map_iowa	# set image path
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

	la $a0, map_illinois	# set image path
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

	la $a0, map_indiana	# set image path
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

	la $a0, map_ohio	# set image path
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

	la $a0, map_pennsylvania	# set image path
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

	la $a0, map_newjersey	# set image path
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

	la $a0, map_delaware	# set image path
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

	la $a0, map_maryland	# set image path
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

	la $a0, map_washingtondc	# set image path
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

	la $a0, map_california	# set image path
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

	la $a0, map_nevada	# set image path
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

	la $a0, map_utah	# set image path
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

	la $a0, map_colorado	# set image path
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

	la $a0, map_kansas	# set image path
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

	la $a0, map_missouri	# set image path
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

	la $a0, map_kentucky	# set image path
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

	la $a0, map_westvirginia	# set image path
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

	la $a0, map_virginia	# set image path
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

	la $a0, map_arizona	# set image path
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

	la $a0, map_newmexico	# set image path
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

	la $a0, map_texas	# set image path
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

	la $a0, map_oklahoma	# set image path
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

	la $a0, map_arkansas	# set image path
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

	la $a0, map_louisiana	# set image path
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

	la $a0, map_tennessee	# set image path
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

	la $a0, map_mississippi	# set image path
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

	la $a0, map_alabama	# set image path
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

	la $a0, map_georgia	# set image path
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

	la $a0, map_northcarolina	# set image path
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

	la $a0, map_southcarolina	# set image path
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

	la $a0, map_florida	# set image path
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

	la $a0, map_hawaii	# set image path
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

	la $a0, map_alaska	# set image path
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

	la $a0, map_darksouls	# set image path
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
	subi $sp, $sp, 40	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	sw $s0, 8($sp)		# backup saved registers
	sw $s1, 12($sp)
	sw $s2, 16($sp)
	sw $s3, 20($sp)
	sw $s4, 24($sp)
	sw $s5, 28($sp)
	sw $s6, 32($sp)
	sw $s7, 36($sp)
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

	lw $s0, 8($fp)		# restore saved registers
	lw $s1, 12($fp)
	lw $s2, 16($fp)
	lw $s3, 20($fp)
	lw $s4, 24($fp)
	lw $s5, 28($fp)
	lw $s6, 32($fp)
	lw $s7, 36($fp)
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 40	# deallocate space in stack
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
	subi $sp, $sp, 40	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	sw $s0, 8($sp)		# backup saved registers
	sw $s1, 12($sp)
	sw $s2, 16($sp)
	sw $s3, 20($sp)
	sw $s4, 24($sp)
	sw $s5, 28($sp)
	sw $s6, 32($sp)
	sw $s7, 36($sp)
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

	lw $s0, 8($fp)		# restore saved registers
	lw $s1, 12($fp)
	lw $s2, 16($fp)
	lw $s3, 20($fp)
	lw $s4, 24($fp)
	lw $s5, 28($fp)
	lw $s6, 32($fp)
	lw $s7, 36($fp)
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 40	# deallocate space in stack
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
	li $t6, 13			# load carriage return into $t6 for comparison (to deal with CRLF files)
	beq $t1, $t6, key_printer_readLoop	# if CR detected, reread to catch LF (new line)
							# for newlines, Windows uses both CR and LF, Unix only uses LF.
							# if we only catch LF, CR will be read as part of the number and this is incorrect
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
