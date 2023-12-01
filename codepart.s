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

    gcd_loop:
        beq $t1, $zero, gcd_done   # If $t1 is 0, GCD is in $t0, exit loop
        rem $t2, $t0, $t1          # $t2 = remainder of $t0 divided by $t1
        move $t0, $t1              # $t0 = $t1
        move $t1, $t2
        j gcd_loop

    gcd_done:
        move $v0, $t0              # GCD is in $v0
        jr $ra
