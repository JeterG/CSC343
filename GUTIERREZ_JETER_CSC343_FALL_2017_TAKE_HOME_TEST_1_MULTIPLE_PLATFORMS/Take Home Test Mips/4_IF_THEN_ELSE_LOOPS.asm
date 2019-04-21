.data
	message: .asciiz "The numbers are different."
	message2: .asciiz "Nothing happened."
	message3: .asciiz "The numbers are equal."
.text

main:
	addi $t0, $zero, 20#change these numbers to fall into each of the different conditions
	addi $t1, $zero, 20#can also change this number
if:	beq $t0,$t1 numbersEqual#if the two numbers are equal it will print the numbers are equal

else:	bne $t0,$t1 numbersDifferent #else if the numbers are not equal it will print that the numbers are different.
	li $v0, 10
	syscall
	
numbersDifferent:
	li $v0, 4
	la $a0, message 
	syscall
	li $v0, 10
	syscall
	
numbersEqual:
	li $v0, 4
	la $a0, message3
	syscall
	li $v0, 10
	syscall