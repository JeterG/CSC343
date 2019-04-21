.data 
	message: .asciiz "After while loop is done"
	space:	.asciiz ","
.text
addi $t0, $zero, 0 #i=0
while: bgt $t0, 10, exit #While the value is less than 10
jal printNumber #Call print the number to console
addi $t0,$t0,1 #increase the value by 1, Equivalent to i++
j while #contine the while loop
exit:
	li $v0,4
	la $a0, message
	syscall #End of program
li $v0, 10
syscall
printNumber: 
	li $v0, 1
	add $a0, $t0, $zero
	syscall
	li $v0,4
	la $a0, space
	syscall
	jr $ra