.data
a: .word 1
b: .word 2
c: .word 0

.text
lw $s0, a
lw $s1, b
lw $s2, c

main:
  jal myadd #call myadd
  sw $t0, -4($sp)
li $v0, 10
syscall

myadd:
    # a = b + c
    add $t0, $s0, $s1
    sw $t0, c
    jr $ra #return
