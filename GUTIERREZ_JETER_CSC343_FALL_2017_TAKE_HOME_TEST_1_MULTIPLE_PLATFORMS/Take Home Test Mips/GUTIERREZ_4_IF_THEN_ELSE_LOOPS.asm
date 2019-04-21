.data
	DIFFERENT: .asciiz "DIFFERENT."
	SAME: .asciiz "EQUAL."
.text

main:
	addi $t0, $zero, 100#First number
	addi $t1, $zero, 200#Second Number
if:	beq $t0,$t1 numbersEqual#condition only true if the numbers being compared are equal.
else:	bne $t0,$t1 numbersDifferent #true if the numbers being compared are not equal.
	li $v0, 10
	syscall
	
numbersDifferent:
	li $v0, 4
	la $a0, DIFFERENT #Loads text into register to print
	syscall
	li $v0, 10
	syscall
	
numbersEqual:
	li $v0, 4
	la $a0, SAME #Loads text into register to print.
	syscall
	li $v0, 10
	syscall
