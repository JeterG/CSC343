.data 
	message: .asciiz "While loop is done"
.text
addi $t0, $zero, 0 #i=0
while: bgt $t0, 10, exit #While the value is less than 10
addi $t0,$t0,1 #increase the value by 1, Equivalent to i++
j while #contine the while loop
exit:
	li $v0,4
	la $a0, message
	syscall #End of program
li $v0, 10
syscall