.text
main:
	#jal draw_boot
	#jal draw_map
	#jal self_test
	
	li $v0, 10	# exit safely
	syscall
