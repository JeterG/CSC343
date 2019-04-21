.data 
	message: .asciiz "Finished with the While Loop"
.text
	addi $t0, $zero, 0 #Initializes the initial value to 0.
	
while: bgt $t0, 10, exit #Compares the values and runs until the value is equal to 10 or less than 10.

	addi $t0,$t0,1 #increases the iterators value by 1 stored in register $t0
	j while #contine the while loop
exit:
	li $v0,4
	la $a0, message
	syscall #End of program
	li $v0, 10
	syscall
