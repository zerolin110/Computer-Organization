    .text
    .align  2

    .globl  su
su:
    sub     a0, a0, a1
    jalr    zero, 0(ra)

    .globl  main
main:
    addi    a0, zero, 20
    addi    a1, zero, 7
    jal     ra, su
Loop:
    j       Loop
