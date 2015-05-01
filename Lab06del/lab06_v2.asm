
        .data
number:
        .word  10
       
        .globl main

        .text
main:    
	add $t1,$zero,$zero
	lw $t1,0($zero) 
	add $t2,$t1,$zero
	sw $t1,4($zero)
	beq $t1,$t2,equal
	

	
notequal:
	and $t3,$t2,$t1
	andi $t4,$t1,128
	ori $t5,$t2,64
	slti $t6,$t4,32
equal: 
	sub $t2,$t1,$t2
	beq $t2,$t1,exit
	j notequal
exit: 
	or $t4,$t2,$t1
