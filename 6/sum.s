    .text
    .align  2
    .globl  sum
    .globl  main

# 计算1到n的累加和
# 入口参数：a0 = n
# 返回值：a0 = 累加和
sum:
    addi sp, sp, -8    # 分配栈空间
    sw ra, 4(sp)       # 保存返回地址
    sw s0, 0(sp)       # 保存s0寄存器

    li s0, 0           # s0 = 0 (累加和)
    li t0, 1           # t0 = 1 (计数器i)

loop:
    bgt t0, a0, end    # 如果i > n，结束循环
    add s0, s0, t0     # s0 += i
    addi t0, t0, 1     # i++
    j loop             # 继续循环

end:
    mv a0, s0          # 将结果存入a0
    lw s0, 0(sp)       # 恢复s0寄存器
    lw ra, 4(sp)       # 恢复返回地址
    addi sp, sp, 8     # 释放栈空间
    ret                # 返回

# 主程序
main:
    li a0, 100         # 参数n=100
    jal sum            # 调用sum函数
    mv a1, a0          # 保存结果到a1
    li a7, 93          # 系统调用exit
    ecall              # 执行系统调用
