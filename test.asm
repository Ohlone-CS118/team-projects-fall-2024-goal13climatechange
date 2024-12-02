.data

Alabama:		.asciiz	"States/Alabama.txt"
Alaska:			.asciiz	"States/Alaska.txt"
Arizona:		.asciiz	"States/Arizona.txt"
Arkansas:		.asciiz	"States/Arkansas.txt"
California:		.asciiz	"States/California.txt"
Colorado:		.asciiz	"States/Colorodo.txt"
Connecticut:		.asciiz	"States/Connecticut.txt"
Delaware:		.asciiz	"States/Delaware.txt"
Florida:		.asciiz	"States/Florida.txt"
Georgia:		.asciiz	"States/Georgia.txt"
Idaho:			.asciiz	"States/Idaho.txt"
Illanois:		.asciiz	"States/Illanois.txt"
Indiana:		.asciiz	"States/Indiana.txt"
Iowa:			.asciiz	"States/Iowa.txt"
Kansas:			.asciiz	"States/Kansas.txt"
Kentucky:		.asciiz	"States/Kentucky.txt"
Louisianna:		.asciiz	"States/Louisianna.txt"
Maine:			.asciiz	"States/Maine.txt"
Maryland:		.asciiz	"States/Maryland.txt"
Massachusetts:		.asciiz	"States/Massachussets.txt"
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
WestVirginia:		.asciiz	"States/West Virgninia.txt"
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
stateNameIllanois:		.asciiz	"Illanois"
stateNameIndiana:		.asciiz	"Indiana"
stateNameIowa:			.asciiz	"Iowa\n"
stateNameKansas:		.asciiz	"Kansas"
stateNameKentucky:		.asciiz	"Kentucky"
stateNameLouisianna:		.asciiz	"Louisianna"
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

state:			.space 15
stateprompt:		.asciiz "Enter a state(such as North Dakota, Alaska, New Hampshire): "
year:			.space 8
yearprompt:		.asciiz	"Enter a Decade from the following(1990, 2000, 2010, 2020): "
newline:		.asciiz	"\n"

testbuffer:		.space	4
invalidyear:		.asciiz	"The year entered is invalid please try again with 1990, 2000, 2010, or 2020."
invalidstate:		.asciiz	"The state entered is invalid please make sure you capitalised the beginning of each word and included spaces."

.text
main:	
	move $fp, $sp			#initialize the stack
	addi $sp, $sp, -12		#make room for three words
	
	jal getYear			#call the function to get user input for decade
	
	jal getState			#call the function to get user input for state
	
	li $v0, 4			#print the newline
	la $a0, newline
	syscall
	
	lw $a0, -4($fp)			#load the user input for the state into $a0
	
	jal compare			#call the fucntion to compare user input to the state names
	la $a1, buffer			#load the state file address
	jal readFile			#call readFile
	
	sw $a0, -12($fp)		#store the data from the file
	
	jal exactTemp			#call exactTemp function to load the exact line into a seperate buffer to print out
	
	li $v0, 4			#print the exact temperature requested
	la $a0, testbuffer
	syscall

end:
	li $v0, 10			#exit safely
	syscall

getState:
	la $a0, stateprompt		#print state prompt
	li $v0, 4
	syscall

	la $a0, state			#store input in label state
	li $v0, 8
	li $a1, 20			#max input length
	syscall

	sw $a0, -4($fp)			#store on the stack
	jr $ra
	
getYear:
	la $a0, yearprompt		#print the year prompt
	li $v0, 4
	syscall
	
	la $a0, year			#load the address for the year
	li $v0, 5			#read the inpputted integer
	syscall
	
	sw $v0, -8($fp)			#store on the stack
	move $t7, $v0			#move into a register for grafik.asm(?)
	jr $ra				#return

#precondition:	$a0 contains the user inputted string for the state
#		$a1 contains the string of a statename it will be compared to
#postcondition	$a0 will contain the path for the user inputted state
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
	j compareArkansas

stringsEqualArizona:
	la $a0, Arizona		#load the path for Arizona.txt
	jr $ra

compareArkansas:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameArkansas	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopArkansas:
	beq $t4,$t5,stringsEqualArkansas
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopArkansas
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopArkansas	#loop
endloopArkansas:
	j compareCalifornia

stringsEqualArkansas:
	la $a0, Arkansas		#load the path for Arkansas.txt
	jr $ra
	
compareCalifornia:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameCalifornia	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopCalifornia:
	beq $t4,$t5,stringsEqualCalifornia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopCalifornia
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopCalifornia	#loop
endloopCalifornia:
	j compareColorado

stringsEqualCalifornia:
	la $a0, California		#load the path for California.txt
	jr $ra
	
compareColorado:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameColorado	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopColorado:
	beq $t4,$t5,stringsEqualColorado
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopColorado
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopColorado	#loop
endloopColorado:
	j compareConnecticut

stringsEqualColorado:
	la $a0, Colorado		#load the path for Colorado.txt
	jr $ra

compareConnecticut:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameConnecticut	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopConnecticut:
	beq $t4,$t5,stringsEqualConnecticut
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopConnecticut
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopConnecticut	#loop
endloopConnecticut:
	j compareDelaware

stringsEqualConnecticut:
	la $a0, Connecticut		#load the path for Connecticut.txt
	jr $ra

compareDelaware:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameDelaware	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopDelaware:
	beq $t4,$t5,stringsEqualDelaware
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopDelaware
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopDelaware	#loop
endloopDelaware:
	j compareFlorida

stringsEqualDelaware:
	la $a0, Delaware		#load the path for Delaware.txt
	jr $ra

compareFlorida:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameFlorida	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopFlorida:
	beq $t4,$t5,stringsEqualFlorida
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopFlorida
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopFlorida	#loop
endloopFlorida:
	j compareGeorgia

stringsEqualFlorida:
	la $a0, Florida		#load the path for Florida.txt
	jr $ra

compareGeorgia:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameGeorgia	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopGeorgia:
	beq $t4,$t5,stringsEqualGeorgia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopGeorgia
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopGeorgia	#loop
endloopGeorgia:
	j compareIdaho

stringsEqualGeorgia:
	la $a0, Georgia		#load the path for Georgia.txt
	jr $ra

compareIdaho:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameIdaho		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopIdaho:
	beq $t4,$t5,stringsEqualIdaho
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopIdaho
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIdaho	#loop
endloopIdaho:
	j compareIllanois

stringsEqualIdaho:
	la $a0, Idaho			#load the path for Idaho.txt
	jr $ra
	
compareIllanois:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameIllanois		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopIllanois:
	beq $t4,$t5,stringsEqualIllanois
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopIllanois
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIllanois	#loop
endloopIllanois:
	j compareIndiana

stringsEqualIllanois:
	la $a0, Illanois			#load the path for Illanois.txt
	jr $ra

compareIndiana:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameIndiana		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopIndiana:
	beq $t4,$t5,stringsEqualIndiana
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopIndiana
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIndiana	#loop
endloopIndiana:
	j compareIowa
	syscall

stringsEqualIndiana:
	la $a0, Indiana			#load the path for Indiana.txt
	jr $ra
	
compareIowa:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameIowa		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopIowa:
	beq $t4,$t5,stringsEqualIowa
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopIowa
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopIowa	#loop
endloopIowa:
	j compareKansas

stringsEqualIowa:
	la $a0, Iowa			#load the path for Iowa.txt
	jr $ra
	
compareKansas:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameKansas		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopKansas:
	beq $t4,$t5,stringsEqualKansas
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopKansas
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopKansas	#loop
endloopKansas:
	j compareKentucky

stringsEqualKansas:
	la $a0, Kansas			#load the path for Kansas.txt
	jr $ra
	
compareKentucky:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameKentucky		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopKentucky:
	beq $t4,$t5,stringsEqualKentucky
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopKentucky
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopKentucky	#loop
endloopKentucky:
	j compareLouisianna

stringsEqualKentucky:
	la $a0, Kentucky			#load the path for Kentucky.txt
	jr $ra

	
compareLouisianna:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameLouisianna		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopLouisianna:
	beq $t4,$t5,stringsEqualLouisianna
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopLouisianna
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopLouisianna	#loop
endloopLouisianna:
	j compareMaine

stringsEqualLouisianna:
	la $a0, Louisianna			#load the path for Louisianna.txt
	jr $ra
	
compareMaine:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameMaine		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopMaine:
	beq $t4,$t5,stringsEqualMaine
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopMaine
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMaine	#loop
endloopMaine:
	j compareMassachusetts

stringsEqualMaine:
	la $a0, Maine			#load the path for Kentucky.txt
	jr $ra
	
compareMassachusetts:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameMassachusetts		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopMassachusetts:
	beq $t4,$t5,stringsEqualMassachusetts
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopMassachusetts
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMassachusetts	#loop
endloopMassachusetts:
	j compareMichigan

stringsEqualMassachusetts:
	la $a0, Massachusetts			#load the path for Massachusetts.txt
	jr $ra
	
compareMichigan:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameMichigan		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopMichigan:
	beq $t4,$t5,stringsEqualMichigan
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopMichigan
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMichigan	#loop
endloopMichigan:
	j compareMinnesota

stringsEqualMichigan:
	la $a0, Michigan			#load the path for Michigan.txt
	jr $ra
	
compareMinnesota:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameMinnesota		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopMinnesota:
	beq $t4,$t5,stringsEqualMinnesota
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopMinnesota
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMinnesota	#loop
endloopMinnesota:
	j compareMississippi

stringsEqualMinnesota:
	la $a0, Minnesota			#load the path for Minnesota.txt
	jr $ra
	
compareMississippi:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameMississippi		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopMississippi:
	beq $t4,$t5,stringsEqualMississippi
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopMississippi
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMississippi	#loop
endloopMississippi:
	j compareMissouri

stringsEqualMississippi:
	la $a0, Mississippi			#load the path for Mississippi.txt
	jr $ra
	
compareMissouri:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameMissouri		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopMissouri:
	beq $t4,$t5,stringsEqualMissouri
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopMissouri
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMissouri	#loop
endloopMissouri:
	j compareMontana

stringsEqualMissouri:
	la $a0, Missouri			#load the path for Missouri.txt
	jr $ra
	
compareMontana:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameMontana		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopMontana:
	beq $t4,$t5,stringsEqualMontana
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopMontana
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopMontana	#loop
endloopMontana:
	j compareNebraska

stringsEqualMontana:
	la $a0, Montana			#load the path for Montana.txt
	jr $ra
	
compareNebraska:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNebraska	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopNebraska:
	beq $t4,$t5,stringsEqualNebraska
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNebraska
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNebraska	#loop
endloopNebraska:
	j compareNevada

stringsEqualNebraska:
	la $a0, Nebraska			#load the path for Nebraska.txt
	jr $ra
	
compareNevada:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNevada		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopNevada:
	beq $t4,$t5,stringsEqualNevada
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNevada
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNevada	#loop
endloopNevada:
	j compareNewHampshire

stringsEqualNevada:
	la $a0, Nevada			#load the path for Kentucky.txt
	jr $ra
	
compareNewHampshire:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNewHampshire		#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopNewHampshire:
	beq $t4,$t5,stringsEqualNewHampshire
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNewHampshire
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNewHampshire	#loop
endloopNewHampshire:
	j compareNewJersey

stringsEqualNewHampshire:
	la $a0, NewHampshire			#load the path for New Hampshire.txt
	jr $ra

compareNewJersey:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNewJersey	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6

compareloopNewJersey:
	beq $t4,$t5,stringsEqualNewJersey
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNewJersey
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNewJersey	#loop
endloopNewJersey:
	j compareNewMexico

stringsEqualNewJersey:
	la $a0, NewJersey			#load the path for New Jersey.txt
	jr $ra

compareNewMexico:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNewMexico	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6

compareloopNewMexico:
	beq $t4,$t5,stringsEqualNewMexico
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNewMexico
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNewMexico	#loop
endloopNewMexico:
	j compareNewYork

stringsEqualNewMexico:
	la $a0, NewMexico			#load the path for New Mexico.txt
	jr $ra

compareNewYork:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNewYork	#string to compare to
	move $t1, $a1
	li $t4, 0		#reset counter
	li $t5, 6

compareloopNewYork:
	beq $t4,$t5,stringsEqualNewYork
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNewYork
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNewYork	#loop
endloopNewYork:
	j compareNCarolina

stringsEqualNewYork:
	la $a0, NewYork			#load the path for New York.txt
	jr $ra
	
compareNCarolina:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNCarolina	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7

compareloopNCarolina:
	beq $t4,$t5,stringsEqualNCarolina
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNCarolina
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNCarolina	#loop
endloopNCarolina:
	j compareNDakota

stringsEqualNCarolina:
	la $a0, NorthCarolina			#load the path for North Carolina.txt
	jr $ra

compareNDakota:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameNDakota	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7

compareloopNDakota:
	beq $t4,$t5,stringsEqualNDakota
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopNDakota
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopNDakota	#loop
endloopNDakota:
	j compareOhio

stringsEqualNDakota:
	la $a0, NorthDakota			#load the path for North Dakota.txt
	jr $ra
	
compareOhio:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameOhio	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 4

compareloopOhio:
	beq $t4,$t5,stringsEqualOhio
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopOhio
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopOhio	#loop
endloopOhio:
	j compareOklahoma

stringsEqualOhio:
	la $a0, Ohio			#load the path for Ohio.txt
	jr $ra
	
compareOklahoma:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameOklahoma	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5

compareloopOklahoma:
	beq $t4,$t5,stringsEqualOklahoma
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopOklahoma
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopOklahoma	#loop
endloopOklahoma:
	j compareOregon

stringsEqualOklahoma:
	la $a0, Oklahoma			#load the path for Oklahoma.txt
	jr $ra
	
compareOregon:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameOregon	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5

compareloopOregon:
	beq $t4,$t5,stringsEqualOregon
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopOregon
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopOregon	#loop
endloopOregon:
	j comparePennsylvania

stringsEqualOregon:
	la $a0, Oregon			#load the path for Oregon.txt
	jr $ra
	
comparePennsylvania:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNamePennsylvania	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6

compareloopPennsylvania:
	beq $t4,$t5,stringsEqualPennsylvania
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopPennsylvania
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopPennsylvania	#loop
endloopPennsylvania:
	j compareRhodeIsland

stringsEqualPennsylvania:
	la $a0, Pennsylvania			#load the path for Pennsylvania.txt
	jr $ra	

compareRhodeIsland:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameRhodeIsland	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5

compareloopRhodeIsland:
	beq $t4,$t5,stringsEqualRhodeIsland
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopRhodeIsland
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopRhodeIsland	#loop
endloopRhodeIsland:
	j compareSCarolina

stringsEqualRhodeIsland:
	la $a0, RhodeIsland			#load the path for Rhode Island.txt
	jr $ra
	
compareSCarolina:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameSCarolina	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7

compareloopSCarolina:
	beq $t4,$t5,stringsEqualSCarolina
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopSCarolina
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopSCarolina	#loop
endloopSCarolina:
	j compareSDakota

stringsEqualSCarolina:
	la $a0, SouthCarolina			#load the path for South Carolina.txt
	jr $ra
	
compareSDakota:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameSDakota	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6

compareloopSDakota:
	beq $t4,$t5,stringsEqualSDakota
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopSDakota
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopSDakota	#loop
endloopSDakota:
	j compareTennessee

stringsEqualSDakota:
	la $a0, SouthDakota			#load the path for South Dakota.txt
	jr $ra
	
	
compareTennessee:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameTennessee	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7

compareloopTennessee:
	beq $t4,$t5,stringsEqualTennessee
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopTennessee
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopTennessee	#loop
endloopTennessee:
	j compareTexas

stringsEqualTennessee:
	la $a0, Tennessee			#load the path for Tennessee.txt
	jr $ra
	
compareTexas:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameTexas	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 5

compareloopTexas:
	beq $t4,$t5,stringsEqualTexas
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopTexas
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopTexas	#loop
endloopTexas:
	j compareUtah

stringsEqualTexas:
	la $a0, Texas			#load the path for Texas.txt
	jr $ra
	
compareUtah:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameUtah	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 4

compareloopUtah:
	beq $t4,$t5,stringsEqualUtah
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopUtah
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopUtah	#loop
endloopUtah:
	j compareVermont

stringsEqualUtah:
	la $a0, Utah			#load the path for Utah.txt
	jr $ra
	
compareVermont:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameVermont	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6

compareloopVermont:
	beq $t4,$t5,stringsEqualVermont
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopVermont
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopVermont	#loop
endloopVermont:
	j compareVirginia

stringsEqualVermont:
	la $a0, Vermont			#load the path for Vermont.txt
	jr $ra
	
compareVirginia:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameVirginia	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7

compareloopVirginia:
	beq $t4,$t5,stringsEqualVirginia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopVirginia
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopVirginia	#loop
endloopVirginia:
	j compareWashington

stringsEqualVirginia:
	la $a0, Virginia			#load the path for Texas.txt
	jr $ra

compareWashington:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameWashington	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 7

compareloopWashington:
	beq $t4,$t5,stringsEqualWashington
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopWashington
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopWashington	#loop
endloopWashington:
	j compareWVirginia

stringsEqualWashington:
	la $a0, Washington			#load the path for Washington.txt
	jr $ra
	
compareWVirginia:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameWVirginia	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 10

compareloopWVirginia:
	beq $t4,$t5,stringsEqualWVirginia
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopWVirginia
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopWVirginia	#loop
endloopWVirginia:
	j compareWisconsin

stringsEqualWVirginia:
	la $a0, WestVirginia			#load the path for West Virginia.txt
	jr $ra

compareWisconsin:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameWisconsin	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 8

compareloopWisconsin:
	beq $t4,$t5,stringsEqualWisconsin
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopWisconsin
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopWisconsin	#loop
endloopWisconsin:
	j compareWyoming

stringsEqualWisconsin:
	la $a0, Wisconsin			#load the path for Wisconsin.txt
	jr $ra
	
compareWyoming:
	lw $t0, -4($fp)			#string entered by user
	la $a1, stateNameWyoming	#string to compare to
	move $t1, $a1
	li $t4, 0			#reset counter
	li $t5, 6

compareloopWyoming:
	beq $t4,$t5,stringsEqualWyoming
		lb $t2, 0($t0)	#load byte(character) for the user input string
		lb $t3, 0($t1)	#load byte(character) for the base string
#if characters don't match then exit loop
		bne $t2, $t3, endloopWyoming
			addi $t0, $t0, 1	#move to next letter in user input
			addi $t1, $t1, 1	#move to next letter in base string
			addi $t4, $t4, 1	#i++
			j compareloopWyoming	#loop
endloopWyoming:
	j invalidState

stringsEqualWyoming:
	la $a0, Wyoming			#load the path for Wyoming.txt
	jr $ra
	
invalidState:
	li $v0, 4			#print the string telling the user it is an invalid input
	la $a0, invalidstate
	syscall
	j end				#jump to the end

#precondition:	the decade entered is stored in memory and is of the following, 1990, 2000, 2010, 2020
#postcondition:	the label testbuffer will contain the temperature at the specified decade
exactTemp:	
    
compare1990:
	lw $t2, -8($fp)			#load the user inputted integer for the decade
	li $t3, 1990			#load the decade to compare to
	beq $t2,$t3,stringsEqual1990	#if they are equal then branch to stringsEqual1990
	bne $t2, $t3, not1990		#if not then branch to not1990

not1990:
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
	
	jr $ra				#return

compare2000:
	lw $t2, -8($fp)
	li $t3, 2000
	beq $t2,$t3,stringsEqual2000
	bne $t2, $t3, not2000

not2000:
	j compare2010
	syscall

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
	
	jr $ra
	
compare2010:
	lw $t2, -8($fp)
	li $t3, 2010
	beq $t2,$t3,stringsEqual2010
	bne $t2, $t3, not2010

not2010:
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
	
	jr $ra
	
compare2020:
	lw $t2, -8($fp)
	li $t3, 2020
	beq $t2,$t3,stringsEqual2020
	bne $t2, $t3, not2020

not2020:
	j invalidYear

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
	
	jr $ra
	
invalidYear:
	li $v0, 4
	la $a0, invalidyear
	syscall
	j end
	
	


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
