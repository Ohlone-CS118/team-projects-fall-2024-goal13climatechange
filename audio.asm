# Description:
# This file simulates a user interaction
# where different musical notes from the song "Auld Lang Syne"
# are played at various events such as the boot screen, 
# year prompt, state prompt, success message, and end program.
# Each event plays three notes from the song, providing
# auditory feedback for the user.
.text

main:
.globl play_intro_2
.globl play_year_prompt_music
.globl play_state_prompt_music
.globl play_success_music
.globl play_end_music
	jal play_intro_2

	li $v0, 10	# exit safely
	syscall

play_intro_2:
	li $a2, 0    # Piano instrument
	li $a3, 80    # Medium volume
	li $v0, 33
	
	li $a0, 66	# F#
	li $a1, 600
	syscall

	li $a0, 64	# E
	li $a1, 600
	syscall

	li $a0, 61	# C
	li $a1, 200
	syscall

	li $a0, 61	# C
	li $a1, 400
	syscall

	li $a0, 57	# A
	li $a1, 400
	syscall

	li $a0, 59	# B
	li $a1, 600
	syscall

	li $a0, 57	# A
	li $a1, 200
	syscall

	li $a0, 59	# B
	li $a1, 400
	syscall

	li $a0, 61	# C#
	li $a1, 200
	syscall
	
	li $a0, 59	# B
	li $a1, 200
	syscall

	li $a0, 57	# A
	li $a1, 600
	syscall

	li $a0, 54	# F#
	li $a1, 200
	syscall

	li $a0, 54	# F#
	li $a1, 400
	syscall

	li $a0, 52	# E
	li $a1, 400
	syscall

	li $a0, 57	# A
	li $a1, 1200
	syscall

	jr $ra

# Function: play_intro_music
# "Auld Lang Syne"
play_intro_music:
    li $a2, 64    # Reed instrument
    li $a3, 80    # Medium volume

    # Measure 1
    li $a0, 69    # A4
    li $a1, 500   # 500ms
    li $v0, 33
    syscall

    li $a0, 71    # B4
    li $a1, 500
    li $v0, 33
    syscall

    li $a0, 72    # C5
    li $a1, 700
    li $v0, 33
    syscall

    li $a0, 71    # B4
    li $a1, 300
    li $v0, 33
    syscall

    # Measure 2
    li $a0, 69    # A4
    li $a1, 500
    li $v0, 33
    syscall

    li $a0, 67    # G4
    li $a1, 700
    li $v0, 33
    syscall

    li $a0, 69    # A4
    li $a1, 1000
    li $v0, 33
    syscall

    jr $ra

# Function: play_year_prompt_music
play_year_prompt_music:
    li $a2, 64
    li $a3, 80

    li $a0, 72    # C5
    li $a1, 500
    li $v0, 33
    syscall

    li $a0, 71    # B4
    li $a1, 500
    li $v0, 33
    syscall

    jr $ra

# Function: play_state_prompt_music
play_state_prompt_music:
    li $a2, 64
    li $a3, 80

    li $a0, 65    # F4
    li $a1, 500
    li $v0, 33
    syscall

    li $a0, 67    # G4
    li $a1, 1000
    li $v0, 33
    syscall

    jr $ra

# Function: play_success_music
play_success_music:
    li $a2, 64
    li $a3, 80

    li $a0, 67    # G4
    li $a1, 1000
    li $v0, 33
    syscall

    li $a0, 69    # A4
    li $a1, 1000
    li $v0, 33
    syscall

    jr $ra

# Function: play_end_music
# Signal program exit
play_end_music:
    li $a2, 64
    li $a3, 80

    li $a0, 67    # G4
    li $a1, 2000  # 2000ms
    li $v0, 33
    syscall

    jr $ra
