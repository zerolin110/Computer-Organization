    .text
    .align  2
    .globl  test_entry
test_entry:
    addi    t0, zero, 123
    lui     t1, 0x1
    add     t2, t0, t1
    beq     t2, zero, L1
    jal     ra, L2
L1:
    addi    t2, t2, -1
L2:
    jalr    zero, 0(ra)
