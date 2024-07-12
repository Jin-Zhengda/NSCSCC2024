# 为什么选择用状态机实现？
- 最开始觉得状态机走状态会慢，故采用许多变量作为控制器，看似没用状态机很厉害，实则极大提高了代码的复杂程度，为代码的迭代带来极大的困难。最终使我放弃旧代码，选择使用状态机的问题是pause信号的实现。当需要暂停时，我很难再在原代码的基础上再做修改，使他能保持状态不变，同时，也想彻底推翻屎山代码，利用之前积累的经验写一份好基础的代码，或许能极大地方便后续的迭代开发。所以在需要改成双发射icache的时候，我选择使用状态机，明确每个状态下的工作，也能使思路更清晰。

# 关于状态机：
- IDLE，ASKMEM1，ASKMEM2，RETURN，UNCACHE_RETURN共 5 个状态
- 会有以下情形：
  - ### 读取两个都命中：
    - P1:任意状态，正在处理上一个命令，持续传入pc=a
    - P2:IDLE状态，从tagv的BRAM读取到结果，判断两个都命中，则从cache的BRAM返回读取到的指令(a),(a+4)。同时接收下一个pc=b
  - ### 读取a命中，a+4不命中：
    - P1:任意状态，正在处理上一个命令，持续传入pc=a
    - P2:IDLE状态，从tagv的BRAM读取到结果，判断a命中，a+4未命中，则next_state=ASKMEM2
    - P3:ASKMEM2状态，向主存发起读请求，维持
    - Pn:ASKMEM2状态，接收到ret_valid，向BRAM给写信号，next_state=RETURN
    - Pn+1:RETURN状态，返回取到的inst
  - ### 读取a不命中，a+4命中：
    - P1:任意状态，正在处理上一个命令，持续传入pc=a
    - P2:IDLE状态，从tagv的BRAM读取到结果，判断a未命中，a+4命中，则next_state=ASKMEM1
    - P3:ASKMEM1状态，向主存发起读请求，维持
    - Pn:ASKMEM1状态，接收到ret_valid,向BRAM给写信号，由于record_b_hit_result为命中，故next_state=RETURN
    - Pn+1:RETURN状态，返回取到的inst
  - ### 读取两个都不命中：
    - P1:任意状态，正在处理上一个命令，持续传入pc=a
    - P2:IDLE状态，从tagv的BRAM读取到结果，判断两个都不命中，则next_state=ASKMEM1
    - P3:ASKMEM1状态，向主存发起读请求，读pc=a，维持
    - Pn:ASKMEM1状态，接收到ret_valid,向BRAM给写信号，由于record_b_hit_result为未命中，故next_state=ASKMEM2
    - Pn+1:ASKMEM2状态，向主存发起读请求，读pc=a+4,维持
    - Pm:ASKMEM2状态，接收到ret_valid,向BRAM给写信号，next_state=RETURN
    - Pm+1:RETURN状态，返回取到的inst
  - ### uncache读操作
    - P1:任意状态，正在处理上一个命令，持续传入uncache_en,pc=a
    - P2:IDLE状态，由于pre_uncache_en，故next_state=UNCACHE_RETURN
    - P3:UNCACHE_RETURN状态，给出uncache_read的信号找主存读，维持
    - Pn:UNCACHE_RETURN状态，主存返回，同时返回inst，next_state=IDLE

# 关于对外接口信号：
  - 与前端：
    - 核心接口信号：
      - 输入：pc,inst_en,uncache_en
      - 输出：inst,stall
    - 控制逻辑：
      - 当stall为高电平时，阻塞。pc在每个时钟上升沿检测到stall=1就不该变成下一个pc
      - 当stall为低电平时，非阻塞。pc在在每个时钟上升沿检测到stall=0就变成下一个pc
    - 特殊控制信号：flush,pause

# 关于cache内部实现：
  - 两级流水：由于BRAM为时序读，必须要花一个周期去读，为了避免命中情况下也要两周期才取出一个指令，故选择了将cache加一级流水线，故cache应具有同时处理两个读请求的能力。代码中pre开头的为上一个命令，也就是当前cache正在处理的命令的信号，而不带pre的addr等信号为当前前端正在给cache输入命令的信号。比如，如果持续命中，也就是状态一直为IDLE，那么每个周期会返回上个周期给的pc对应的指令，也就是pre_addr对应的指令，同时也会接受新的pc，赋值给virtual_addr，并用virtual_addr去给BRAM读取，用来判断是否命中，获得命中结果是在下个周期。
  - 双发射：
    - 利用BRAM两个读写端口，实现每次读取pc和pc+4两条指令。a端口对应pc,b端口对应pc+4。本来BRAM想用IP核实现，但是没能将IP核迁移去跑chiplab，故用自己写的BRAM来做，需注意充分考虑BRAM的时序。
    - 考虑到情况：当pc和pc+4位于cache中的同一路时，虽然两个都命中缺失，但不需要找主存读两次，故引入信号same_way来进行控制。



# 特殊问题的解决：
  - pause信号的实现：改next_state实现状态保持，对几乎所有时序逻辑赋值的reg型变量添加pause的控制，来保证所有对外信号保持不变
  - flush信号的实现：由于可能flush时向主存读的请求已经发出，故实现为这种情况下忽略主存的一次返回。引入real_ret_valid等信号作为经过忽略选择之后真实有效的主存返回信号