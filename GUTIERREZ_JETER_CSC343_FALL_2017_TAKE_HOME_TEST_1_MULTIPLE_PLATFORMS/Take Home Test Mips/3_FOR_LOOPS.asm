li $t0, 15 # t0 is a constant ending value to exit the for loop
li $t1, 0 # t1 is our counter (i)
loop:
beq $t1, $t0, end # for int i=0, i<10 i++
addi $t2, $t2, 5 #the body of the loop, what else is happening besides checking the condition on the following line. 
addi $t1, $t1, 1 # add 1 to t1 increments the counter.
j loop # jump back to the top goes back to the top of the loop until condition is met
end: