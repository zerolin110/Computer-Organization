    .text
    .align  2
    .globl  main
main:
    add t0, x0, x0    # t0 = 0 (累加和)
    add t1, x0, x0    # t1 = 0 (地址偏移)
    addi t2, x0, 10   # t2 = 10 (循环计数器)

L1:
    lw t3, 0x40(t1)   # 从地址0x40+t1加载数据到t3
    add t0, t0, t3    # 累加：t0 += t3
    addi t1, t1, 4    # 地址偏移+4（下一个字）
    addi t2, t2, -1   # 计数器-1
    beq t2, x0, L2    # 如果计数器为0，跳转到L2
    j L1              # 否则跳回L1继续循环

L2:
    sw t0, 0x80(x0)   # 将最终累加和存入地址0x80
