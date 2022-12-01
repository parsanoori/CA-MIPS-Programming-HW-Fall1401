    .data
sep:    .asciiz "\n"
    .text
    .globl main
main:

    li $v0, 5
    syscall                 # get n
    move $s7, $v0           # store it in s7
    sll $s6, $v0, 2         # store array length 
    move $a0, $s6           # to allocate the memory
    li $v0, 9               # sbrk syscall code
    syscall
    move $s5,$v0            # store the pointer of the array
    li $v0, 9
    syscall
    move $s4, $v0           # another array for merging

    move $t0, $s5           # pointer of the array
    addu $t1, $s5, $s6      # latest element + 1
    
for:
    bgeu $t0, $t1, endfor   # if reached end stop the loop
    li $v0, 5               # for reading integer
    syscall
    sw $v0, 0($t0)          # store the word
    addi $t0, $t0, 4        # add to the pointer
    b for
endfor:

    move $a0, $s5           # pass the pointer of the first of the
                            # array to the first argument of bubblesort
                            # function
    addu $a1, $s5, $s6      # pass the pointer of the element after the last
                            # part of the array as the second argument to
                            # the mergesrot function
    jal bubblesort          # call the mergesrot function

    ## print the output
    move $t0, $s5           # pointer
    addu $t1, $s5, $s6      # latest home + 1
printfor:
    bgeu $t0, $t1, endprintfor # if reached end stop the loop
    lw $a0, 0($t0)
    li $v0, 1               # for printing integer
    syscall
    #for printing sep
    li $v0, 4
    la $a0, sep
    syscall
    addi $t0, $t0, 4 # add to the pointer
    b printfor
endprintfor:
    li $v0, 10
    syscall # exit


bubblesort:
    # $t0 is the outer loop iterator but technically a pointer
    # $t1 is the inner loop pointer
    addi $t7, $a1, -4           # since the outer loop must go n-1 times
                                # and since the inner loop must not access
                                # the arr[n+1]
    move $t0, $a0
outerloop:
    beq $t0, $t7, endouterloop  # if the times to execute is reached
    move $t1, $a0               # create the poiner
innerloop:
    beq $t1, $t7, endinnerloop  # check if the pointer is at the end
    
    lw $t2, ($t1)               # load arr[j]
    lw $t3, 4($t1)              # load arr[j+1]
    subu $t4, $t2, $t3          # subtract them
    blez $t4, donothing         # check if swap is needed
    # let's swap here
    sw $t3, ($t1)               # store arr[j+1] in arr[j]
    sw $t2, 4($t1)              # store arr[j] in arr[j+1]
donothing:
    addi $t1, $t1, 4            # increment the pointer
    j innerloop                 # go run the inner loop again
endinnerloop:
    addi $t0, $t0, 4            # increment the iterator
    j outerloop                 # go run the outer loop 
endouterloop:    
    jr $ra                      # finally return :))))
