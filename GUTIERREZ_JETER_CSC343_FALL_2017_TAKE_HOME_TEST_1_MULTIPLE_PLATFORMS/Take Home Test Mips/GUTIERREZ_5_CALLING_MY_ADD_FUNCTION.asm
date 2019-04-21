.data
a: .word 100
b: .word 200
c: .word 0

.text
lw $s0, a
lw $s1, b
lw $s2, c

main:
  jal myadd #Calls My add function to add two of the words
  sw $t0, -4($sp)
li $v0, 10
syscall

myadd:
    # a = b + c
    add $t0, $s0, $s1 # adds the two words
    sw $t0, c
    jr $ra #returns to the main function until reaching the end of the functions body.
