.text

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
