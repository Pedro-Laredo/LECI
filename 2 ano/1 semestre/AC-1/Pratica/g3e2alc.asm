    .data
    .eqv print_string, 4
    .eqv read_int10, 5
    .eqv print_char, 11
    
str1:   .asciiz "Introduza um numero: "
str2:   .asciiz "\nO valor em binario e: "

    .text
    .globl main

main:
    # Prompt the user to input a number
    li $v0, print_string
    la $a0, str1
    syscall

    # Read integer input from user
    li $v0, read_int10
    syscall
    move $t0, $v0  # Store the input value in $t0

    # Display the binary output message
    li $v0, print_string
    la $a0, str2
    syscall

    # Initialize loop variables
    li $t3, 0x80000000  # Set $t3 to mask the MSB
    li $t2, 0           # Initialize loop counter to 0
    
for:
    # Loop until all 32 bits are processed
    bge $t2, 32, endfor

    # Isolate the current bit of $t0 using $t3 mask
    and $t1, $t0, $t3     # Isolate the bit using the mask
    srl $t1, $t1, 31      # Shift the isolated bit to the LSB position (either 0 or 1)

    # Convert bit to ASCII ('0' or '1') by adding 0x30
    addi $a0, $t1, 0x30
    li $v0, print_char
    syscall

    # Shift the mask right to check the next bit
    srl $t3, $t3, 1
    addi $t2, $t2, 1      # Increment loop counter
    j for                 # Repeat the loop

endfor:
    jr $ra                # Return from main
