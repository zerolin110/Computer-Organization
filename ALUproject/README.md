# ALUproject（Vivado）

基于 Verilog 的 32 位 ALU 示例工程，提供板上交互：用拨码开关输入 A/B 与操作码，按键锁存输入并在 LED 上显示运算结果与标志位。

## 目录结构（关键文件）

- [ALUproject.xpr](file:///c:/Users/yyl/Desktop/ALUproject/ALUproject.xpr)：Vivado 工程入口
- [ALU_top.v](file:///c:/Users/yyl/Desktop/ALUproject/ALUproject.srcs/sources_1/new/ALU_top.v)：顶层与 ALU 运算逻辑（模块 `ALU_TOP`）
- [ALU.v](file:///c:/Users/yyl/Desktop/ALUproject/ALUproject.srcs/sim_1/new/ALU.v)：仿真 testbench（模块 `tb_ALU_TOP`）
- [ALU.xdc](file:///c:/Users/yyl/Desktop/ALUproject/ALUproject.srcs/constrs_1/new/ALU.xdc)：约束文件（时钟/按键/拨码/LED 引脚及时序约束）

## 顶层接口

顶层模块为 `ALU_TOP`：

- 时钟与复位
  - `clk_100M`：100MHz 系统时钟
  - `rst`：复位（异步复位，约束中对其设置了 false path）
- 输入控制按键
  - `clk_A`：锁存 A（上升沿触发）
  - `clk_B`：锁存 B（上升沿触发）
  - `clk_F`：锁存操作码并触发显示结果（上升沿触发）
- 拨码开关与 LED
  - `SW[31:0]`：输入数据（用于 A/B）
  - `SW[35:32]`：ALU 操作码
  - `LED[31:0]`：运算结果 `F`
  - `LED[35:32]`：标志寄存器 `FR = {ZF, SF, CF, OF}`

## 操作码（SW[35:32]）

| 操作码 | 指令 | 说明 |
|---|---|---|
| 0000 | ADD  | A + B |
| 1000 | SUB  | A - B |
| 0001 | SLL  | A << B[4:0] |
| 0101 | SRL  | A >> B[4:0]（逻辑右移） |
| 1101 | SRA  | A >>> B[4:0]（算术右移） |
| 0100 | XOR  | A ^ B |
| 0110 | OR   | A \| B |
| 0111 | AND  | A & B |
| 0010 | SLT  | signed(A) < signed(B) ? 1 : 0 |
| 0011 | SLTU | unsigned(A) < unsigned(B) ? 1 : 0 |

## 标志位（LED[35:32]）

`FR = {ZF, SF, CF, OF}`：

- `ZF`：结果为 0
- `SF`：结果符号位（F[31]）
- `CF`：进位/借位（来自 33 位临时结果的最高位）
- `OF`：溢出（仅对 ADD/SUB 按二进制补码规则计算，其余操作为 0）

## 板上使用方式

1. 将 `SW[31:0]` 拨成你要的数值，按一下 `clk_A`：锁存到 `Data_A`
2. 将 `SW[31:0]` 拨成另一个数值，按一下 `clk_B`：锁存到 `Data_B`
3. 将 `SW[35:32]` 拨成操作码，按一下 `clk_F`：锁存操作码并显示结果

显示逻辑：

- 未显示结果时，`LED` 直接镜像 `SW`（便于确认输入）
- 按下 `clk_F` 后进入结果显示：`LED[31:0] = F`，`LED[35:32] = FR`
- 重新按下 `clk_A` 或 `clk_B` 会退出结果显示并清零 LED，等待下一次 `clk_F`

## 在 Vivado 中运行

1. 用 Vivado 打开工程 [ALUproject.xpr](file:///c:/Users/yyl/Desktop/ALUproject/ALUproject.xpr)
2. 确认约束文件为 [ALU.xdc](file:///c:/Users/yyl/Desktop/ALUproject/ALUproject.srcs/constrs_1/new/ALU.xdc)
3. 依次运行 Synthesis → Implementation → Generate Bitstream

## 仿真

仿真 testbench 位于 [ALU.v](file:///c:/Users/yyl/Desktop/ALUproject/ALUproject.srcs/sim_1/new/ALU.v)（模块 `tb_ALU_TOP`），覆盖 ADD/SUB/移位/逻辑/比较等操作码的基本用例。

在 Vivado 中选择 Run Simulation → Run Behavioral Simulation 即可运行。
