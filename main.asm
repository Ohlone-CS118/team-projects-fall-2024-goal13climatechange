# DISPLAY INFO
# project natively runs at 256x128
# set display to:
#	Pixels width and height to 2x2
#	Display width and height to 512x256
#	Base address = 0x10010000
# alternatively set display to:
#	Pixels width and height to 4x4
#	Display width and height to 1024x512
#	Base address = 0x10010000

.data
display:	.space	131072	# reserve space for 256x128 display or else everything below gets overwritten and the computer explodes (i am on my 4th laptop in the past hour send help)
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

buffer:	 			.space 200
stateNameAlabama:		.asciiz	"Alabama"
stateNameAlaska:		.asciiz	"Alaska"
stateNameArizona:		.asciiz	"Arizona"
stateNameArkansas:		.asciiz	"Arkansas"
stateNameCalifornia:		.asciiz	"California"
stateNameColorado:		.asciiz	"Colorado"
stateNameConnecticut:		.asciiz	"Connecticut"
stateNameDelaware:		.asciiz	"Delaware"
stateNameFlorida:		.asciiz	"Florida"
stateNameGeorgia:		.asciiz	"Georgia"
stateNameIdaho:			.asciiz	"Idaho\n"
stateNameIllinois:		.asciiz	"Illinois"
stateNameIndiana:		.asciiz	"Indiana"
stateNameIowa:			.asciiz	"Iowa\n"
stateNameKansas:		.asciiz	"Kansas"
stateNameKentucky:		.asciiz	"Kentucky"
stateNameLouisiana:		.asciiz	"Louisiana"
stateNameMaine:			.asciiz	"Maine"
stateNameMaryland:		.asciiz	"Maryland"
stateNameMassachusetts:	.asciiz	"Massachusetts"
stateNameMichigan:		.asciiz	"Michigan"
stateNameMinnesota:		.asciiz	"Minnesota"
stateNameMississippi:		.asciiz	"Mississippi"
stateNameMissouri:		.asciiz	"Missouri"
stateNameMontana:		.asciiz	"Montana"
stateNameNebraska:		.asciiz	"Nebraska"
stateNameNevada:		.asciiz	"Nevada"
stateNameNewHampshire:		.asciiz	"New Hampshire"
stateNameNewJersey:		.asciiz	"New Jersey"
stateNameNewMexico:		.asciiz	"New Mexico"
stateNameNewYork:		.asciiz	"New York"
stateNameNCarolina:		.asciiz	"North Carolina"
stateNameNDakota:		.asciiz	"North Dakota"
stateNameOhio:			.asciiz	"Ohio"
stateNameOklahoma:		.asciiz	"Oklahoma"
stateNameOregon:		.asciiz	"Oregon"
stateNamePennsylvania:		.asciiz	"Pennsylvania"
stateNameRhodeIsland:		.asciiz	"Rhode Island"
stateNameSCarolina:		.asciiz	"South Carolina"
stateNameSDakota:		.asciiz	"South Dakota"
stateNameTennessee:		.asciiz	"Tennessee"
stateNameTexas:			.asciiz	"Texas"
stateNameUtah:			.asciiz	"Utah"
stateNameVermont:		.asciiz	"Vermont"
stateNameVirginia:		.asciiz	"Virginia"
stateNameWashington:		.asciiz	"Washington"
stateNameWVirginia:		.asciiz	"West Virginia"
stateNameWisconsin:		.asciiz	"Wisconsin"
stateNameWyoming:		.asciiz	"Wyoming"
endProgramYes:			.asciiz	"yes"
endProgramNo:			.asciiz	"no\n"

state:			.space 900
stateprompt:		.asciiz "Enter a state(such as North Dakota, Alaska, New Hampshire): "
year:			.space 4
yearprompt:		.asciiz	"Enter a Decade from the following(1990, 2000, 2010, 2020): "
newline:		.asciiz	"\n"
endProgramInput:	.space 5
endProgramString:	.asciiz	"\nWould you like to continue using the program? Please enter yes/no: "
invalidEnd:		.asciiz	"\nIt can't be that hard to type yes or no"

testbuffer:		.space	400
tempcurrent:		.space	400
invalidyear:		.asciiz	"The year entered is invalid please try again with 1990, 2000, 2010, or 2020."
invalidstate:		.asciiz	"The state entered is invalid please make sure you capitalised the beginning of each word and included spaces."
stateAverage:		.asciiz	"\nThe average temperature at the requested decade is: "
stateDifference:	.asciiz	"\nThe difference in average temperature from the requested decade with the 2020s is: "
.text
main:	
	move $fp, $sp			#initialize the stack
	
	jal draw_boot			# draw the amazing boot screen
	# sound event here
	jal draw_map

main_loop:

	jal getYear			#call the function to get user input for decade

	move $a0, $s6			# move the year into an argument register
	jal update_map
	
	jal getState			#call the function to get user input for state
	
	li $v0, 4			#print the newline
	la $a0, newline
	syscall
	
	jal compare			#call the fucntion to compare user input to the state names
	la $a1, buffer			#load the state file address
	jal readFile			#call readFile
	
	move $t2, $s6			#move the user inputted year for exactTemp
	jal exactTemp			#call exactTemp function to load the exact line into a seperate buffer to print out

#ASCII to integer conversion so math can be done with the loaded line of the State.txt file
	la $t0, testbuffer		#load address of the string
	li $t3, 0			#initialize result to 0
	li $t4, 10			#multiplier for decimal place
convertLoop:
	lb $t1, 0($t0)			#load the current character
	beq $t1, $zero, loopEnd	#if null terminator, end loop
		sub $t2, $t1, 48	#convert ASCII character to digit
		mul $t3, $t3, $t4	#multiply current result by 10
		add $t3, $t3, $t2	#add the current digit to the result
		addi $t0, $t0, 1	#move to the next character
		j convertLoop		#repeat for the next character
loopEnd:
	mtc1 $t3, $f28			#move the converted integer into the FPU
	cvt.d.w $f12, $f28		#conver into a double
	li $t0, 10			#load 10 into $t0
	mtc1 $t0, $f30			#move into the FPU
	cvt.d.w $f30, $f30		#convert into a double
	div.d $f12, $f12, $f30		#divide the converted double by 10 to get the accurate temp
	
	li $v0, 4			#print string for telling the user what the number is
	la $a0, stateAverage
	syscall
	
	li $v0, 3			#print the average temp at the requested decade
	syscall
	
	mov.d $f2, $f12			#move into $f2 so it doesn't get overwritten
	
#same ASCII to number conversion for the current decade	
	la $t0, tempcurrent		#load address of the string
	li $t3, 0			#initialize result to 0
	li $t4, 10			#multiplier for decimal place
	
convertLoopCurrent:
	lb $t1, 0($t0)				#load the current character
	beq $t1, $zero, loopEndCurrent		#if null terminator, end loop
		sub $t2, $t1, 48		#convert ASCII character to digit
		mul $t3, $t3, $t4		#multiply current result by 10
		add $t3, $t3, $t2		#add the current digit to the result
		addi $t0, $t0, 1		#move to the next character
		j convertLoopCurrent		#repeat for the next character
loopEndCurrent:

	mtc1 $t3, $f28		#same as before but for the 2020 temp of the chosen state
	cvt.d.w $f12, $f28
	li $t0, 10
	mtc1 $t0, $f30
	cvt.d.w $f30, $f30
	div.d $f12, $f12, $f30	
	
	sub.d $f12, $f12, $f2	#subtract the chosen temp from the 2020 temp
	
	li $v0, 4		#print string telling the user what the number means
	la $a0, stateDifference
	syscall
	
	li $v0, 3		#print the difference
	syscall
	
	jal endFunction		#call endFunction to get user input for whether they want to continue using the program
	jal endCompare		#call endCompare function to compare the user input to strings "no" and "yes"
	j main_loop			#loop the program

end:
	jal self_test
	# sound event here
	jal draw_credits

	li $v0, 10			#exit safely
	syscall

#postcondition:	$s7 will contain the user string input 
getState:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack

	la $a0, stateprompt		#print state prompt
	li $v0, 4
	syscall

	la $a0, state			#store input in label state
	li $v0, 8
	li $a1, 20			#max input length(20 because why not)
	syscall
	
	move $s7, $a0		#store in $s7 for compare function
	
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	
	jr $ra
	
#postcondition:	$s6 will contain the user integer input for the decade, which should be 2020, 2010, 2000, 1990
getYear:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	  
	la $a0, yearprompt		#print the year prompt
	li $v0, 4
	syscall
	
	la $a0, year			#load the address for the year
	li $v0, 5			#read the inpputted integer
	syscall

	move $s6, $v0			#move into a register for grafik.asm(?) and compare

check1990:
	move $t2, $s6			#load the user inputted integer for the decade
	li $t3, 1990			#load the decade to compare to
	beq $t2, $t3, validYear	#if they are equal then branch to validYear
	j check2000			#jump to next comparison

check2000:
	li $t3, 2000
	beq $t2, $t3,validYear
	j check2010

check2010:
	li $t3, 2010
	beq $t2,$t3,validYear
	j check2020
	
check2020:
	li $t3, 2020
	beq $t2,$t3,validYear
	j invalidYear	

invalidYear:
	li $v0, 4		#print string telling the user they inputted an invalid year
	la $a0, invalidyear
	syscall
	
	j end			#ends the program
	
validYear:
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	
	jr $ra			#return
	
#postcondition:	the user input will be stored in $s7
endFunction:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	
	li $v0, 4		#print the prompt to end or continue the program
	la $a0, endProgramString
	syscall
	
	li $v0, 8		#read the input
	la $a0, endProgramInput
	li $a1, 5		#max length of input
	syscall
	
	move $s7, $a0		#move the input into $s7 for comparison later
	
	li $v0, 4		#newline to make the text neater
	la $a0, newline
	syscall
	
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra
	
#precondition:	$s7 contains a user inputted string
#postcondition:	the program will end if the inputted string is "no" or anything other than "yes"
endCompare:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack		

yesCompare:			
	move $t0, $s7			#move the user input into $t0 for string comparison
	la $a1, endProgramYes		#string to compare to
	move $t1, $a1
	li $t4, 0			#initialize counter
	li $t5, 3			#initialize counter limit
    
compareloopYes:
	beq $t4,$t5,stringsEqualYes
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopYes
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopYes	#loop

endloopYes:
	j compareNo		#jump to compare input to "no"
    
stringsEqualYes:
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return as the user inputted yes
	
compareNo:
	la $a1, endProgramNo		#string to compare to
	move $t1, $a1
	li $t4, 0			#initialize counter
	li $t5, 2			#initialize counter limit
    
compareloopNo:
	beq $t4,$t5,stringsEqualNo
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNo
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNo		#loop

endloopNo:
	li $v0, 4		#print string telling the user they did not enter no or yes
	la $a0, invalidEnd
	syscall
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	j end			#jump to the end to kill the program			

stringsEqualNo:
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	j end			#jump to the end as the user entered no
	

#	The compare function takes the user inputted string and compares it with each of the 49 available states
#	until it matches the user input with a state name by comparing character by character until the counter
#	limit is reached(this limit depends on the state being compared to and SHOULD BE one less than the amount
#	of characters of the state including the space unless the name is short)
#	
#	The path to the file for said state is then loaded into $a0 if it is found to be a match
#
#	If it is determined that there is no match then it will print out a string saying so
#
#precondition:	$s7 contains the user inputted string for the state
#postcondition	$a0 will contain the path for the user inputted state
compare:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	
compareAlabama:
	move $t0, $s7			#move the user input into $t0 for string comparison
	la $a1, stateNameAlabama	#string to compare to
	move $t1, $a1
	li $t4, 0			#initialize counter
	li $t5, 6			#initialize counter limit
    
compareloopAlabama:
	beq $t4,$t5,stringsEqualAlabama
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopAlabama
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopAlabama	#loop

endloopAlabama:
	j compareAlaska		#jump to next comparison
    
stringsEqualAlabama:
	la $a0, Alabama		#load the path of Alabama
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
    
compareAlaska:
	move $t0, $s7			#move the user input into $t0 for string comparison
	la $a1, stateNameAlaska	#string to compare to
	move $t1, $a1			
	li $t4, 0			#reset counter
	li $t5, 5			#change counter limit

compareloopAlaska:
	beq $t4,$t5,stringsEqualAlaska
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopAlaska
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopAlaska	#loop

endloopAlaska:
	j compareArizona	#move to next state comparison

stringsEqualAlaska:
	la $a0, Alaska		#load path for Alaska
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra
    
compareArizona:
	move $t0, $s7			#string entered by user
	la $a1, stateNameArizona	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit
    
compareloopArizona:
	beq $t4,$t5,stringsEqualArizona
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopArizona
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopArizona	#loop

endloopArizona:
	j compareArkansas	#jump to next comparison

stringsEqualArizona:
	la $a0, Arizona		#load the path for Arizona.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra

compareArkansas:
	move $t0, $s7			#string entered by user
	la $a1, stateNameArkansas	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#reset counter limit

compareloopArkansas:
	beq $t4,$t5,stringsEqualArkansas
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopArkansas	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopArkansas	#loop
endloopArkansas:
	j compareCalifornia		#jump to next comparison

stringsEqualArkansas:
	la $a0, Arkansas	#load the path for Arkansas.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra
	
compareCalifornia:
	move $t0, $s7			#string entered by user
	la $a1, stateNameCalifornia	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 9			#change counter limit

compareloopCalifornia:
	beq $t4,$t5,stringsEqualCalifornia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopCalifornia	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopCalifornia	#loop
endloopCalifornia:
	j compareColorado	#jump to next comparison

stringsEqualCalifornia:
	la $a0, California	#load the path for California.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra
	
compareColorado:
	move $t0, $s7			#string entered by user
	la $a1, stateNameColorado	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopColorado:
	beq $t4,$t5,stringsEqualColorado
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopColorado	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopColorado	#loop
endloopColorado:
	j compareConnecticut	#jump to next comparison

stringsEqualColorado:
	la $a0, Colorado	#load the path for Colorado.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra				#return

compareConnecticut:
	move $t0, $s7			#string entered by user
	la $a1, stateNameConnecticut	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopConnecticut:
	beq $t4,$t5,stringsEqualConnecticut
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopConnecticut	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopConnecticut	#loop
endloopConnecticut:
	j compareDelaware	#jump to next comparison

stringsEqualConnecticut:
	la $a0, Connecticut	#load the path for Connecticut.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra				#return

compareDelaware:
	move $t0, $s7			#string entered by user
	la $a1, stateNameDelaware	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopDelaware:
	beq $t4,$t5,stringsEqualDelaware
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopDelaware	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopDelaware	#loop
endloopDelaware:
	j compareFlorida		#jump to next comparison

stringsEqualDelaware:
	la $a0, Delaware	#load the path for Delaware.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareFlorida:
	move $t0, $s7			#string entered by user
	la $a1, stateNameFlorida	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopFlorida:
	beq $t4,$t5,stringsEqualFlorida
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopFlorida	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopFlorida	#loop
endloopFlorida:
	j compareGeorgia	#jump to next comparison

stringsEqualFlorida:
	la $a0, Florida		#load the path for Florida.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareGeorgia:
	move $t0, $s7			#string entered by user
	la $a1, stateNameGeorgia	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopGeorgia:
	beq $t4,$t5,stringsEqualGeorgia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopGeorgia	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopGeorgia	#loop
endloopGeorgia:
	j compareIdaho		#jump to next comparison

stringsEqualGeorgia:
	la $a0, Georgia		#load the path for Georgia.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareIdaho:
	move $t0, $s7			#string entered by user
	la $a1, stateNameIdaho		#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 4			#change counter limit

compareloopIdaho:
	beq $t4,$t5,stringsEqualIdaho
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopIdaho	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIdaho	#loop
endloopIdaho:
	j compareIllinois	#jump to next comparison

stringsEqualIdaho:
	la $a0, Idaho		#load the path for Idaho.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareIllinois:
	move $t0, $s7			#string entered by user
	la $a1, stateNameIllinois	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopIllinois:
	beq $t4,$t5,stringsEqualIllinois
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopIllinois	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIllinois	#loop
endloopIllinois:
	j compareIndiana	#jump to next comparison

stringsEqualIllinois:
	la $a0, Illinois	#load the path for Illinois.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareIndiana:
	move $t0, $s7			#string entered by user
	la $a1, stateNameIndiana	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopIndiana:
	beq $t4,$t5,stringsEqualIndiana
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopIndiana	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIndiana	#loop
endloopIndiana:
	j compareIowa		#jump to next comparison
	syscall

stringsEqualIndiana:
	la $a0, Indiana		#load the path for Indiana.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareIowa:
	move $t0, $s7			#string entered by user
	la $a1, stateNameIowa		#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 4			#change counter limit

compareloopIowa:
	beq $t4,$t5,stringsEqualIowa
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopIowa	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIowa	#loop
endloopIowa:
	j compareKansas		#jump to next comparison

stringsEqualIowa:
	la $a0, Iowa		#load the path for Iowa.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra				#return
	
compareKansas:
	move $t0, $s7			#string entered by user
	la $a1, stateNameKansas	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5			#change counter limit

compareloopKansas:
	beq $t4,$t5,stringsEqualKansas
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopKansas	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopKansas	#loop
endloopKansas:
	j compareKentucky

stringsEqualKansas:
	la $a0, Kansas		#load the path for Kansas.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareKentucky:
	move $t0, $s7			#string entered by user
	la $a1, stateNameKentucky	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopKentucky:
	beq $t4,$t5,stringsEqualKentucky
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopKentucky	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopKentucky	#loop
endloopKentucky:
	j compareLouisiana	#jump to next comparison

stringsEqualKentucky:
	la $a0, Kentucky	#load the path for Kentucky.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareLouisiana:
	move $t0, $s7			#string entered by user
	la $a1, stateNameLouisiana	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopLouisiana:
	beq $t4,$t5,stringsEqualLouisiana
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopLouisiana	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopLouisiana	#loop
endloopLouisiana:
	j compareMaine		#jump to next comparison

stringsEqualLouisiana:
	la $a0, Louisiana	#load the path for Louisiana.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareMaine:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMaine		#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 4			#change counter limit

compareloopMaine:
	beq $t4,$t5,stringsEqualMaine
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMaine	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMaine	#loop
endloopMaine:
	j compareMaryland	#jump to next comparison
	
stringsEqualMaine:
	la $a0, Maine		#load the path for Maine.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareMaryland:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMaryland	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopMaryland:
	beq $t4,$t5,stringsEqualMaryland
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMaryland	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMaryland	#loop
endloopMaryland:
	j compareMassachusetts	#jump to next comparison

stringsEqualMaryland:
	la $a0, Maryland	#load the path for Maryland.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareMassachusetts:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMassachusetts	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopMassachusetts:
	beq $t4,$t5,stringsEqualMassachusetts
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMassachusetts	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopMassachusetts	#loop
endloopMassachusetts:
	j compareMichigan	#jump to next comparison

stringsEqualMassachusetts:
	la $a0, Massachusetts	#load the path for Massachusetts.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareMichigan:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMichigan	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopMichigan:
	beq $t4,$t5,stringsEqualMichigan
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMichigan	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMichigan	#loop
endloopMichigan:
	j compareMinnesota	#jump to next comparison

stringsEqualMichigan:
	la $a0, Michigan	#load the path for Michigan.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareMinnesota:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMinnesota	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 8			#change counter limit

compareloopMinnesota:
	beq $t4,$t5,stringsEqualMinnesota
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMinnesota		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopMinnesota		#loop
endloopMinnesota:
	j compareMississippi	#jump to next comparison

stringsEqualMinnesota:
	la $a0, Minnesota	#load the path for Minnesota.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareMississippi:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMississippi	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopMississippi:
	beq $t4,$t5,stringsEqualMississippi
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMississippi	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopMississippi	#loop
endloopMississippi:
	j compareMissouri	#jump to next comparison

stringsEqualMississippi:
	la $a0, Mississippi	#load the path for Mississippi.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareMissouri:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMissouri	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopMissouri:
	beq $t4,$t5,stringsEqualMissouri
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMissouri	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMissouri	#loop
endloopMissouri:
	j compareMontana	#jump to next comparison

stringsEqualMissouri:
	la $a0, Missouri	#load the path for Missouri.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareMontana:
	move $t0, $s7			#string entered by user
	la $a1, stateNameMontana	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopMontana:
	beq $t4,$t5,stringsEqualMontana
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopMontana	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMontana	#loop
endloopMontana:
	j compareNebraska	#jump to next comparison

stringsEqualMontana:
	la $a0, Montana		#load the path for Montana.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareNebraska:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNebraska	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopNebraska:
	beq $t4,$t5,stringsEqualNebraska
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNebraska	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNebraska	#loop
endloopNebraska:
	j compareNevada		#jump to next comparison

stringsEqualNebraska:
	la $a0, Nebraska	#load the path for Nebraska.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareNevada:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNevada	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5			#change counter limit

compareloopNevada:
	beq $t4,$t5,stringsEqualNevada
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNevada	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNevada	#loop
endloopNevada:
	j compareNewHampshire	#jump to next comparison

stringsEqualNevada:
	la $a0, Nevada		#load the path for Kentucky.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra				#return
	
compareNewHampshire:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNewHampshire	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopNewHampshire:
	beq $t4,$t5,stringsEqualNewHampshire
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNewHampshire	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopNewHampshire	#loop
endloopNewHampshire:
	j compareNewJersey	#jump to next comparison

stringsEqualNewHampshire:
	la $a0, NewHampshire	#load the path for New Hampshire.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareNewJersey:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNewJersey	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopNewJersey:
	beq $t4,$t5,stringsEqualNewJersey
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNewJersey		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopNewJersey		#loop
endloopNewJersey:
	j compareNewMexico	#jump to next comparison

stringsEqualNewJersey:
	la $a0, NewJersey	#load the path for New Jersey.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareNewMexico:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNewMexico	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 9			#change counter limit

compareloopNewMexico:
	beq $t4,$t5,stringsEqualNewMexico
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNewMexico		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopNewMexico		#loop
endloopNewMexico:
	j compareNewYork	#jump to next comparison

stringsEqualNewMexico:
	la $a0, NewMexico	#load the path for New Mexico.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareNewYork:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNewYork	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopNewYork:
	beq $t4,$t5,stringsEqualNewYork
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNewYork	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNewYork	#loop
endloopNewYork:
	j compareNCarolina	#jump to next comparison

stringsEqualNewYork:
	la $a0, NewYork		#load the path for New York.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareNCarolina:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNCarolina	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopNCarolina:
	beq $t4,$t5,stringsEqualNCarolina
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNCarolina		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopNCarolina		#loop
endloopNCarolina:
	j compareNDakota	#jump to next comparison

stringsEqualNCarolina:
	la $a0, NorthCarolina	#load the path for North Carolina.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareNDakota:
	move $t0, $s7			#string entered by user
	la $a1, stateNameNDakota	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopNDakota:
	beq $t4,$t5,stringsEqualNDakota
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopNDakota	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNDakota	#loop
endloopNDakota:
	j compareOhio		#jump to next comparison

stringsEqualNDakota:
	la $a0, NorthDakota	#load the path for North Dakota.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareOhio:
	move $t0, $s7		#string entered by user
	la $a1, stateNameOhio	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 4		#change counter limit

compareloopOhio:
	beq $t4,$t5,stringsEqualOhio
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopOhio	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopOhio	#loop
endloopOhio:
	j compareOklahoma	#jump to next comparison

stringsEqualOhio:
	la $a0, Ohio		#load the path for Ohio.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareOklahoma:
	move $t0, $s7			#string entered by user
	la $a1, stateNameOklahoma	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopOklahoma:
	beq $t4,$t5,stringsEqualOklahoma
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopOklahoma	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopOklahoma	#loop
endloopOklahoma:
	j compareOregon		#jump to next comparison

stringsEqualOklahoma:
	la $a0, Oklahoma	#load the path for Oklahoma.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareOregon:
	move $t0, $s7			#string entered by user
	la $a1, stateNameOregon	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5			#change counter limit

compareloopOregon:
	beq $t4,$t5,stringsEqualOregon
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopOregon	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopOregon	#loop
endloopOregon:
	j comparePennsylvania	#jump to next comparison

stringsEqualOregon:
	la $a0, Oregon		#load the path for Oregon.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
comparePennsylvania:
	move $t0, $s7			#string entered by user
	la $a1, stateNamePennsylvania	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 12			#change counter limit

compareloopPennsylvania:
	beq $t4,$t5,stringsEqualPennsylvania
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopPennsylvania	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopPennsylvania	#loop
endloopPennsylvania:
	j compareRhodeIsland	#jump to next comparison

stringsEqualPennsylvania:
	la $a0, Pennsylvania	#load the path for Pennsylvania.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareRhodeIsland:
	move $t0, $s7			#string entered by user
	la $a1, stateNameRhodeIsland	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopRhodeIsland:
	beq $t4,$t5,stringsEqualRhodeIsland
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopRhodeIsland	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopRhodeIsland	#loop
endloopRhodeIsland:
	j compareSCarolina	#jump to next comparison

stringsEqualRhodeIsland:
	la $a0, RhodeIsland	#load the path for Rhode Island.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareSCarolina:
	move $t0, $s7			#string entered by user
	la $a1, stateNameSCarolina	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 11			#change counter limit

compareloopSCarolina:
	beq $t4,$t5,stringsEqualSCarolina
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopSCarolina		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopSCarolina		#loop
endloopSCarolina:
	j compareSDakota	#jump to next comparison

stringsEqualSCarolina:
	la $a0, SouthCarolina	#load the path for South Carolina.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareSDakota:
	move $t0, $s7			#string entered by user
	la $a1, stateNameSDakota	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10			#change counter limit

compareloopSDakota:
	beq $t4,$t5,stringsEqualSDakota
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopSDakota	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopSDakota	#loop
endloopSDakota:
	j compareTennessee	#jump to next comparison

stringsEqualSDakota:
	la $a0, SouthDakota	#load the path for South Dakota.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
	
compareTennessee:
	move $t0, $s7			#string entered by user
	la $a1, stateNameTennessee	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopTennessee:
	beq $t4,$t5,stringsEqualTennessee
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopTennessee		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopTennessee		#loop
endloopTennessee:
	j compareTexas		#jump to next comparison

stringsEqualTennessee:
	la $a0, Tennessee	#load the path for Tennessee.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareTexas:
	move $t0, $s7			#string entered by user
	la $a1, stateNameTexas		#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5			#change counter limit

compareloopTexas:
	beq $t4,$t5,stringsEqualTexas
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopTexas	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopTexas	#loop
endloopTexas:
	j compareUtah		#jump to next comparison

stringsEqualTexas:
	la $a0, Texas		#load the path for Texas.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareUtah:
	move $t0, $s7		#string entered by user
	la $a1, stateNameUtah	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 4		#change counter limit
		
compareloopUtah:
	beq $t4,$t5,stringsEqualUtah
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopUtah	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopUtah	#loop
endloopUtah:
	j compareVermont	#jump to next comparison

stringsEqualUtah:
	la $a0, Utah		#load the path for Utah.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareVermont:
	move $t0, $s7			#string entered by user
	la $a1, stateNameVermont	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopVermont:
	beq $t4,$t5,stringsEqualVermont
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopVermont	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopVermont	#loop
endloopVermont:
	j compareVirginia	#jump to next comparison

stringsEqualVermont:
	la $a0, Vermont		#load the path for Vermont.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareVirginia:
	move $t0, $s7			#string entered by user
	la $a1, stateNameVirginia	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7			#change counter limit

compareloopVirginia:
	beq $t4,$t5,stringsEqualVirginia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopVirginia	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopVirginia	#loop
endloopVirginia:
	j compareWashington	#jump to next comparison

stringsEqualVirginia:
	la $a0, Virginia	#load the path for Virginia.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareWashington:
	move $t0, $s7			#string entered by user
	la $a1, stateNameWashington	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 9			#change counter limit

compareloopWashington:
	beq $t4,$t5,stringsEqualWashington
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopWashington	#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopWashington	#loop
endloopWashington:
	j compareWVirginia	#jump to next comparison

stringsEqualWashington:
	la $a0, Washington	#load the path for Washington.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareWVirginia:
	move $t0, $s7			#string entered by user
	la $a1, stateNameWVirginia	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 12			#change counter limit

compareloopWVirginia:
	beq $t4,$t5,stringsEqualWVirginia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopWVirginia		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopWVirginia		#loop
endloopWVirginia:
	j compareWisconsin	#jump to next comparison

stringsEqualWVirginia:
	la $a0, WestVirginia	#load the path for West Virginia.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return

compareWisconsin:
	move $t0, $s7			#string entered by user
	la $a1, stateNameWisconsin	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 8			#change counter limit

compareloopWisconsin:
	beq $t4,$t5,stringsEqualWisconsin
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopWisconsin		#branch off loop if characters aren't equal
			addi $t0, $t0, 1		#move to next letter in user input
			addi $t1, $t1, 1		#move to next letter in base string
			addi $t4, $t4, 1		#i++
			j compareloopWisconsin		#loop
endloopWisconsin:
	j compareWyoming	#jump to last state comparison

stringsEqualWisconsin:
	la $a0, Wisconsin	#load the path for Wisconsin.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
compareWyoming:
	move $t0, $s7			#string entered by user
	la $a1, stateNameWyoming	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6			#change counter limit

compareloopWyoming:
	beq $t4,$t5,stringsEqualWyoming
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
		bne $t2, $t3, endloopWyoming	#branch off loop if characters aren't equal
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopWyoming	#loop
endloopWyoming:
	j invalidState		#jump to invalidState as the user input did not match with any of the stateName strings

stringsEqualWyoming:
	la $a0, Wyoming		#load the path for Wyoming.txt
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
	
invalidState:
	li $v0, 4			#print the string telling the user it is an invalid input
	la $a0, invalidstate
	syscall
	j end				#jump to the end

#	The exactTemp function works by loading user inputted year (located at $s6) and comparing it to each
#	of the available decades(2020,2010,2000,1990). Starting with 1990, if the user input matches,
#	then the "stringsEqual(year)" segment will load the state file determined by the previous function "compare",
#	and load the needed bytes(numbers of the temperature requested) into a new address called(for now) "tempbuffer"
#	If the user input does not match any of the predetermined decades exactly, then a string will be printed 
#	telling the user that they have inputted an invalid year and to chose from exactly 1990, 2000, 2010, 2020.
#	
#precondition:	the decade entered is stored in register $s6 and is of the following: 1990, 2000, 2010, 2020
#postcondition:	the label testbuffer will contain the temperature at the specified decade
exactTemp:	
   	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	
compare1990:
	move $t2, $s6			#load the user inputted integer for the decade
	li $t3, 1990			#load the decade to compare to
	beq $t2, $t3, stringsEqual1990	#if they are equal then branch to stringsEqual1990
	j compare2000			#jump to next comparison

stringsEqual1990:	
	la $a0, buffer			#load the state file
	lb $a0, 15($a0)			#load the first byte of the last line
	move $t0, $a0			#move to $t0
	sb $t0, testbuffer		#store in the new label
	la $a0, buffer			#load the state file
	lb $a0, 16($a0)			#load the next byte
	move $t0, $a0			#move into $t0
	sb $t0, testbuffer+1		#store into new label at the next byte
	la $a0, buffer			#load the state file
	lb $a0, 17($a0)			#load the next byte
	move $t0, $a0			#move into $t0
	sb $t0, testbuffer+2		#store into the new label at the next byte
	
	j compareToMax

compare2000:
	li $t3, 2000
	beq $t2, $t3, stringsEqual2000
	j compare2010

stringsEqual2000:
	la $a0, buffer
	lb $a0, 10($a0)
	move $t0, $a0
	sb $t0, testbuffer
	la $a0, buffer
	lb $a0, 11($a0)
	move $t0, $a0
	sb $t0, testbuffer+1
	la $a0, buffer
	lb $a0, 12($a0)
	move $t0, $a0
	sb $t0, testbuffer+2	
	
	j compareToMax
compare2010:
	li $t3, 2010
	beq $t2,$t3,stringsEqual2010
	j compare2020

stringsEqual2010:
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
	
	#lw $ra, 0($fp)		# restore return address
	#lw $fp, 4($fp)		# restore frame pointer
	#addi $sp, $sp, 	8	# deallocate space in stack
	#jr $ra			#return
	j compareToMax
compare2020:
	li $t3, 2020
	beq $t2,$t3,stringsEqual2020
	j end

stringsEqual2020:
	la $a0, buffer
	lb $a0, 0($a0)
	move $t0, $a0
	sb $t0, testbuffer
	la $a0, buffer
	lb $a0, 1($a0)
	move $t0, $a0
	sb $t0, testbuffer+1
	la $a0, buffer
	lb $a0, 2($a0)
	move $t0, $a0
	sb $t0, testbuffer+2	
	
	j compareToMax
	
compareToMax:
	la $a0, buffer
	lb $a0, 0($a0)
	move $t0, $a0
	sb $t0, tempcurrent
	la $a0, buffer
	lb $a0, 1($a0)
	move $t0, $a0
	sb $t0, tempcurrent+1
	la $a0, buffer
	lb $a0, 2($a0)
	move $t0, $a0
	sb $t0, tempcurrent+2	
	
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return	
	
readFile:
	subi $sp, $sp, 8	# allocate space in stack to store $fp and $ra
	sw $ra, 0($sp)		# backup return address
	sw $fp, 4($sp)		# backup frame pointer
	move $fp, $sp		# move frame pointer to point at current top of stack
	
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
	syscall			#execute
	
	lw $ra, 0($fp)		# restore return address
	lw $fp, 4($fp)		# restore frame pointer
	addi $sp, $sp, 	8	# deallocate space in stack
	jr $ra			#return
