.data 
a: .word 100 
b: .word 200  
c: .word 300  
d: .word 400  
e: .word 500  

.text  
lw $s0, a  
lw $s1, b  
lw $s2, c  
lw $s3, d  
lw $s4, e  

# a = b + c  
add $s0, $s1, $s2 
sw $s0, a  

# d = a - e  
sub $s3, $s0, $s4  
sw $s3, d  
 
