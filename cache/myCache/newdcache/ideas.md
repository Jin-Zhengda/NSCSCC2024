# dcache 状态机

`define IDLE 5'b00001
`define ASKMEM 5'b00010
`define RETURN 5'b00100
`define UCACHE_RETURN 5'b01000

WRITE_DIRTY

- 读写命中
  P1：IDLE状态，将信号处理后传送给BRAM进行读出，TLB同时进行地址翻译
  P2：IDLE状态，根据读取结果判断命中
  P3：IDLE状态，继续处理
- 读写不命中且不脏
  P1：IDLE状态，将信号处理后传送给BRAM进行读出，TLB同时进行地址翻译
  P2：IDLE状态，根据读取结果判断不命中，获取是否脏的信息
  P3：ASKMEM状态：找主存读，持续保持直到主存返回
- 读写不命中且脏
  P1：IDLE状态，将信号处理后传送给BRAM进行读出，TLB同时进行地址翻译
  P2：IDLE状态，根据读取结果判断命中，判断是否脏
  P3：WRITE_DIRTY状态，向主存写，持续保持直到主存返回
  P4：ASKMEM状态，向主存读，持续保持直到主存返回
- uncache读
- uncache写

状态：
IDLE
ASKMEM
WRITE_DIRTY
UNCACHE

- 读写命中
  P1：IDLE状态，将信号处理后传送给BRAM进行读出，TLB同时进行地址翻译
  P2：IDLE状态，根据读取结果判断命中成功，进行返回
- 读写不命中且不脏
  P1：IDLE状态，将信号处理后传送给BRAM进行读出，TLB同时进行地址翻译
  P2：IDLE状态，根据读取结果判断命中失败，不脏，开始向主存读
  P3：ASKMEM状态，找主存读，持续保持直到主存返回
  P4：IDLE状态，向cpu返回结果
- 读写不命中且脏
  P1：IDLE状态，将信号处理后传送给BRAM进行读出，TLB同时进行地址翻译
  P2：IDLE状态，根据读取结果判断命中失败，脏，开始向主存写
  P3：WRITE_DIRTY：持续保持向主存写的信号，直到写完成,开始向主存读
  P4：ASKMEM状态，找主存读，持续保持直到主存返回
  P4：IDLE状态，向cpu返回结果