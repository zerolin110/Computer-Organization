# 数据块复制子程序
# 入口参数：
# a0: 源数据区域首地址
# a1: 目标数据区域首地址
# a2: 复制的数据个数
BankMove:
    add t0, a0, zero   # t0 = 源数据区域首地址
    add t1, a1, zero   # t1 = 目标数据区域首地址
    add t2, a2, zero   # t2 = 数据块长度

L1:
    lw t3, 0(t0)       # 从源地址取出数据
    sw t3, 0(t1)       # 将数据存入目标地址
    addi t0, t0, 4     # 源地址指针+4
    addi t1, t1, 4     # 目标地址指针+4
    addi t2, t2, -1    # 计数器-1
    bne t2, zero, L1   # 如果计数器≠0，继续循环
    jr ra              # 子程序返回

# 主程序
main:
    addi a0, zero, 0x30  # a0 = 0x00000030 (源地址)
    addi a1, zero, 0x60  # a1 = 0x00000060 (目标地址)
    addi a2, zero, 10    # a2 = 10 (复制10个数据)
    jal BankMove         # 调用BankMove子程序