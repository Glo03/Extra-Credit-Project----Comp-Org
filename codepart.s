.data
    promptL:    .asciiz "Enter the value of L (> 20): "
    promptM:    .asciiz "Enter the value of M (> 20): "
    promptN:    .asciiz "Enter the value of N (> 20): "
    error_msg:      .asciiz "Illegal Number!\n"

.text
.globl main
    # Function to calculate GCD
    gcd:
        # Inputs: $a0 = first number, $a1 = second number
        # Outputs: $v0 = GCD
        # Temp registers: $t0, $t1

        move $t0, $a0         # Copy first number to $t0
        move $t1, $a1         # Copy second number to $t1
