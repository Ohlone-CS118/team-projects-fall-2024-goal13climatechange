.data
Alabama:		.asciiz	"States/Alabama.txt"
Alaska:			.asciiz	"States/Alaska.txt"
Arizona:		.asciiz	"States/Arizona.txt"
Arkansas:		.asciiz	"States/Arkansas.txt"
California:		.asciiz	"States/California.txt"
Colorado:		.asciiz	"States/Colorado.txt" 
Connecticut:		.asciiz	"States/Connecticut.txt"
Delaware:		.asciiz	"States/Delaware.txt"
Florida:		.asciiz	"States/Florida.txt"
Georgia:		.asciiz	"States/Georgia.txt"
Idaho:			.asciiz	"States/Idaho.txt"
Illinois:		.asciiz	"States/Illinois.txt"
Indiana:		.asciiz	"States/Indiana.txt"
Iowa:			.asciiz	"States/Iowa.txt"
Kansas:			.asciiz	"States/Kansas.txt"
Kentucky:		.asciiz	"States/Kentucky.txt"
Louisiana:		.asciiz	"States/Louisiana.txt"
Maine:			.asciiz	"States/Maine.txt"
Maryland:		.asciiz	"States/Maryland.txt"
Massachusetts:		.asciiz	"States/Massachussetts.txt"
Michigan:		.asciiz	"States/Michigan.txt"
Minnesota:		.asciiz	"States/Minnesota.txt"
Mississippi:		.asciiz	"States/Mississippi.txt"
Missouri:		.asciiz	"States/Missouri.txt"
Montana:		.asciiz	"States/Montana.txt"
Nebraska:		.asciiz	"States/Nebraska.txt"
Nevada:			.asciiz	"States/Nevada.txt"
NewHampshire:		.asciiz	"States/New Hampshire.txt"
NewJersey:		.asciiz	"States/New Jersey.txt"
NewMexico:		.asciiz	"States/New Mexico.txt"
NewYork:		.asciiz	"States/New York.txt"
NorthCarolina:		.asciiz	"States/North Carolina.txt"
NorthDakota:		.asciiz	"States/North Dakota.txt"
Ohio:			.asciiz	"States/Ohio.txt"
Oklahoma:		.asciiz	"States/Oklahoma.txt"
Oregon:			.asciiz	"States/Oregon.txt"
Pennsylvania:		.asciiz	"States/Pennsylvania.txt"
RhodeIsland:		.asciiz	"States/Rhode Island.txt"
SouthCarolina:		.asciiz	"States/South Carolina.txt"
SouthDakota:		.asciiz	"States/South Dakota.txt"
Tennessee:		.asciiz	"States/Tennessee.txt"
Texas:			.asciiz	"States/Texas.txt"
Utah:			.asciiz	"States/Utah.txt"
Vermont:		.asciiz	"States/Vermont.txt"
Virginia:		.asciiz	"States/Virginia.txt"
Washington:		.asciiz	"States/Washington.txt"
WestVirginia:		.asciiz	"States/West Virginia.txt"
Wisconsin:		.asciiz	"States/Wisconsin.txt"
Wyoming:		.asciiz	"States/Wyoming.txt"
grad_offset:		.space 3
color_calc_buffer:	.space 4

define:
	.eqv CURRENT_DECADE 2020
	.eqv TEMP_MAX 40
	.eqv TEMP_MIN 10

.text
.globl update_map
main:
	move $fp, $sp	# init stack
	
	#la $a0, Alabama
	#li $a1, 4
	#jal readTemp
	#move $a0, $v0
	#li $v0, 1
	#syscall
	
	li $a0, 1990
	jal update_map

	li $v0, 10	# exit safely
	syscall

# update the map colors to reflect the temperature change at a given year
# precondition: $a0 contains the year to deal with
# postcondition: map colors updated
update_map:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra and $a0 and $a1
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	
	jal get_line_number	# convert year to required line number
	move $s0, $v0		# store line number in $s0
	
	la $a0, Alabama
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_alabama

	la $a0, Alaska
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_alaska

	la $a0, Arizona
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_arizona

	la $a0, Arkansas
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_arkansas

	la $a0, California
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_california

	la $a0, Colorado
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_colorado

	la $a0, Connecticut
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_connecticut

	la $a0, Delaware
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_delaware

	la $a0, Florida
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_florida

	la $a0, Georgia
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_georgia

	la $a0, Idaho
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_idaho

	la $a0, Illinois
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_illinois

	la $a0, Indiana
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_indiana

	la $a0, Iowa
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_iowa

	la $a0, Kansas
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_kansas

	la $a0, Kentucky
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_kentucky

	la $a0, Louisiana
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_louisiana

	la $a0, Maine
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_maine

	la $a0, Maryland
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_maryland

	la $a0, Massachusetts
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_massachusetts

	la $a0, Michigan
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_michigan

	la $a0, Minnesota
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_minnesota

	la $a0, Mississippi
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_mississippi

	la $a0, Missouri
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_missouri

	la $a0, Montana
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_montana

	la $a0, Nebraska
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_nebraska

	la $a0, Nevada
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_nevada

	la $a0, NewHampshire
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_newhampshire

	la $a0, NewJersey
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_newjersey

	la $a0, NewMexico
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_newmexico

	la $a0, NewYork
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_newyork

	la $a0, NorthCarolina
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_northcarolina

	la $a0, NorthDakota
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_northdakota

	la $a0, Ohio
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_ohio

	la $a0, Oklahoma
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_oklahoma

	la $a0, Oregon
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_oregon

	la $a0, Pennsylvania
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_pennsylvania

	la $a0, RhodeIsland
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_rhodeisland

	la $a0, SouthCarolina
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_southcarolina

	la $a0, SouthDakota
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_southdakota

	la $a0, Tennessee
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_tennessee

	la $a0, Texas
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_texas

	la $a0, Utah
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_utah

	la $a0, Vermont
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_vermont

	la $a0, Virginia
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_virginia

	la $a0, Washington
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_washington

	la $a0, WestVirginia
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_westvirginia

	la $a0, Wisconsin
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_wisconsin

	la $a0, Wyoming
	move $a1, $s0
	jal get_gradient
	move $a0, $v0
	jal calculate_color
	move $a0, $v0 
	jal draw_wyoming

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# calculate the color for a given temperature
# precondition:
#	$a0 contains the temperature gradient in degrees*10
# 	TEMP_MAX contains the temperature gradient that results in full red (degrees*10)
#	TEMP_MIN contains the temperature gradient (negative) that results in full blue (degrees*10)
#	color_calc_buffer exists in .data with at least 4 bytes available
# postcondition:
#	$v0 contains the color the state should be colored
calculate_color:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra and $a0 and $a1
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	mtc1 $a0, $f2		# store temp gradient in FPU $f2
	cvt.d.w $f2, $f2	# convert to double precision
	bltz $a0, calculate_color_temp_neg	# if temperature gradient is negative, handle differently

calculate_color_temp_pos:	# return a color that's more red the closer it is to TEMP_MAX
	li $v0, 255		# force red to 100%
	sb $v0, color_calc_buffer+2 # store value in red
	
	li $t0, TEMP_MAX	# store max temp in $t0
	mtc1 $t0, $f4		# move to FPU $f2
	cvt.d.w $f4, $f4	# convert to single precision
	sub.d $f0, $f4, $f2	# subtract TEMP_MAX from temp gradient
	div.d $f0, $f0, $f4	# divide result by TEMP_MAX to get decimal percentage of Green Blue colors
	li $t0, 255		# full color value
	mtc1 $t0, $f4		# move to FPU $f2
	cvt.d.w $f4, $f4	# convert to single precision
	mul.d $f0, $f0, $f4	# multiply result from earlier by 255 to determine what value should be used for Green Blue colors
	cvt.w.d $f0, $f0	# convert result to integer
	mfc1 $v0, $f0		# move result to $v0
	sb $v0, color_calc_buffer+1	# store value in Green
	sb $v0, color_calc_buffer+0	# store value in Blue
	lw $v0, color_calc_buffer	# move completed color to $v0
	j calculate_color_end	# prepare to return

calculate_color_temp_neg:	# return a color that's more blue the closer it is to TEMP_MIN
	li $v0, 255		# force red to 100%
	sb $v0, color_calc_buffer+0 # store value in blue
	
	li $t0, TEMP_MIN	# store min temp in $t0
	mtc1 $t0, $f4		# move to FPU $f2
	cvt.d.w $f4, $f4	# convert to single precision
	add.d $f0, $f4, $f2	# add TEMP_MIN to temp gradient (which is negative, which is basically subtraction)
	div.d $f0, $f0, $f4	# divide result by TEMP_MIN to get decimal percentage of Green Blue colors
	li $t0, 255		# full color value
	mtc1 $t0, $f4		# move to FPU $f2
	cvt.d.w $f4, $f4	# convert to single precision
	mul.d $f0, $f0, $f4	# multiply result from earlier by 255 to determine what value should be used for Green Blue colors
	cvt.w.d $f0, $f0	# convert result to integer
	mfc1 $v0, $f0		# move result to $v0
	sb $v0, color_calc_buffer+2	# store value in Red
	sb $v0, color_calc_buffer+1	# store value in Green
	lw $v0, color_calc_buffer	# move completed color to $v0

calculate_color_end:
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return

# get the temperature gradient for a state
# precondition:
#	$a0 contains path to state
#	$a1 contains line to read from 
# postcondition: 
#	$v0 contains temperature gradient, 0 if invalid
get_gradient:
	subi $sp, $sp, 20	# allocate space in stack to store $fp and $ra and $a0 and $a1
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	sw $a0, 8($sp)		# backup $a0
	sw $a1, 12($sp)		# backup $a1
	#sw $s0, 20($sp)	#DEBUG
	move $fp, $sp		# move frame pointer to point at current top of stack

	# get current temp
	li $a1, 0	# read from line 0
	jal readTemp
	sw $v0, 16($fp)	# backup current temp in stack
	
	# get historic temp
	lw $a0, 8($fp)		# restore $a0
	lw $a1, 12($fp)		# restore $a1
	jal readTemp
	move $t1, $v0	# save historic temp in $t1
	lw $t0, 16($fp)	# retrieve current temp

	sub $v0, $t0, $t1	# calc gradient, store in $v0

	#move $s0, $v0	#DEBUG
	#move $a0, $v0
	#li $v0, 1
	#syscall
	#li $v0, 11
	#li $a0, '\n'
	#syscall
	#move $v0, $s0

get_gradient_end:
	#lw $s0, 20($fp)	# DEBUG
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 20	# deallocate space in stack
	jr $ra			# return

# determine the line number to read from
# precondition:
#	$a0 contains the requested decade
# postcondition:
#	$v0 contains the line number you need to read from
get_line_number:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	li $t1, CURRENT_DECADE	# load current decade into $t1
	sub $t0, $t1, $a0	# subtract the current decade from the requested decade
	divu $t0, $t0, 10		# divide by 10 to get the line number
	move $v0, $t0		# move to $v0

	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 8	# deallocate space in stack
	jr $ra			# return
