# cache是什么？——位于CPU处理器和主存之间的桥梁，起加速存取作用

# 设计方案

### 整体策略
- 给Cache多少大小??????????????????????16KB???????????????????????
- 映射方式：二路组相联
- 替换方式：伪LRU替换法则
- DCache写策略：
  - 若在cache中——Write-Back策略：重写cache中数据并标记为脏，等到被替换的时候写入主存
  - 不在cache中——Write-Allocate策略：先从主存读取整个数据块进cache，再在cache中对目标数据重写，最后采用Write-Back策略
  - 使用WriteBuffer加速DCache写入主存的过程
- CacheAXI_Interface做总线交互仲裁?????????????????????????什么东西??????????????????????
- 动态取指结合分支预测充分爆发CPU的双发射性能。?????????????????什么东西?????????????????????????

### 地址编码
高速缓存的设计为***16KB***的二路组相联，块大小设为32个字节，即8个字(1个字=4字节)，每个字为一个bank，首先给出以下的32位**物理地址**编码规则。
- ***Tag位（物理地址高位）：20位		Index位（组地址）：8位		Offset位（块内偏移）：4位***
故共有2^8个组，即256个组(可考虑只用7位，得128个组)
offset只用高三位，共区分为8个bank
- ***Valid位（数据是否有效）：1位		Dirty位（脏标志）：1位***

每一组有两路，共用一个LRU位。
- LRU位（最近最少替换标志）：1位

##### 块的数据编码如下：

| Dirty | Valid |  Tag  | Bank0 | Bank1 | Bank2 | Bank3 | Bank4 | Bank5 | Bank6 | Bank7 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|   1   |   1   |  20   |  32   |  32   |  32   |  32   |  32   |  32   |  32   |  32   |

Cache size:
$2^{8}*2*2^{5}*2^{3} = 2 ^ {17} Bit = 2^{14}Byte=2^{4}KB= 16KB$

### 主存写策略
- 若数据已在Cache中，则将Cache中的数据进行修改，并标记为"脏"，等到Cache进行替换脏块时才将数据写入主存
- 否则，数据不在Cache中，则先从主存读取整块数据进Cache，进行修改，标记为脏，等待写回主存
即为Write-Back与Write-Allocate结合的策略


### Cache数据替换策略

当Cache未命中的时候，或者说需要从主存中读数据写入Cache的时候，采用的策略是伪LRU（伪近期最少使用法），对于2路组相联，对每一组（set）都设置了一位的LRU标志，为0表示way0最近没有被使用，为1同理。LRU位决定了替换该组中的块时被替换的那一个。注意，被替换的数据若是dirty的话，就必须写入内存。


### Cache_Ram的构造

为了存放相应的数据，对于每一路构造以下结构的Block Ram：

- Tag+Valid：21位*128组\*2路（实际为了对齐8位采用32位，第21位为Valid）
- Bank0~7：32位*128组\*2路

对于脏位和LRU则采用寄存器直接构建：(这样是不是能更快？？？？？？？？？？？？？？？？？？)

- Dirty：1位*128块\*2路
- LRU：1位*128块

关于地址，由Index指定块的深度（也就是组序号），由Offset指定块内偏移，下面具体明确与地址的对应关系：

- Tag+Valid,Dirty的ram地址:Index
- Tag+Valid,Dirty的ram选择使能:永远为真（两路全部取出）
- Bank的ram地址：Index
- Bank的具体使能：用B<sub>i</sub>W<sub>j</sub> 表示第i个bank，第j路，则有Offset[3:1]指明第i个bank，两路使能相同。
- Dirty的ram地址：Index。

> 对于TagV ram，其中写入的数据永远是物理地址，只要将写入数据段与物理地址相接就可以了。

> 在非流水Cache中，对于ram来说，不会发生同时写和读的情况，但是在流水Cache中则会发生。ram必须直接组合逻辑连接于输入的addr，以保证一周期反应，那么在非流水Cache中就需要进行输入addr的选择，以保证能写能读。在流水Cache中，则需要使用多端口的ram同时进行读写，同时注意在同时进行读写的时候，如果两端口地址相同，输出的读数据将直接使用写入的数据（这部分需要自行实现），这部分是IP核自身的collision问题，需要进行规避。（顺带提醒：simple-dual ram完全等价于只开放A的write和B的read的true-dual ram）


# 接口设计：
### Icache的接口
##### Cache模块与CPU流水线的交互接口

|name|位宽|I/O|含义|
|:---:|:---:|:---:|:---:|
|clk|1|IN|时钟信号|
|reset|1|IN|复位信号|
|cpu_icache_en|1|IN|表明请求有效（使能）|
|index|8|IN|地址的index域(addr[11:4])|
|tag|20|IN|经过虚实转换后的paddr形成的tag，逻辑电路故与index同拍|
|offset|4|IN|地址的offset域(addr[3:0])(只用高三位)|
|icache_free|1|OUT|icache是否空闲|
|icache_hit|1|OUT|icache是否命中|
|icache_cpu_data|32|OUT|向cpu返回读取的指令数据|
|icache_cpu_data_en|1|OUT|向cpu返回数据有效(使能)|

不懂：CPU暂停控制：stall_i

2024-4-11更新icache接口
`
    input               clk                     ,//时钟信号
    input               reset                   ,//复位信号
    //to from cpu
    input               cpu_icache_read_en      ,//请求有效(即表示有真实数据传来了)
    input               cpu_receive_data_ok     ,//cpu成功接收到信号
    input [`INSTRUCTION_ADDR_SIZE-1:0] virtual_addr,
    input [`INSTRUCTION_ADDR_SIZE-1:0] physical_addr,
    output              cpu_icache_addr_request_ok,//该次请求的地址传输OK，读：地址被接收；
    output              icache_cpu_return_data_en ,//该次请求的数据传输OK，读：数据返回;
    output reg[31:0]       icache_cpu_return_data    ,//读Cache的结果

    //to from axi
    output reg           icache_mem_read_request            ,//读请求有效信号,高电平有效。
    output wire           read_data_from_mem_ok              ,//成功从mem读到信号
    //output [ 2:0]       read_type              ,//读请求类型。3’b000——字节，3’b001——半字,3’b010——字，3’b100——Cache行。
    output reg[31:0]       icache_mem_read_addr               ,//读请求起始地址(最后两位为00)
    input               mem_ready_to_read              ,//读请求能否被axi接收的握手信号。高电平有效。
    input               mem_read_addr_ok              ,//mem成功读取addr
    input               mem_return_en            ,//返回数据有效的信号。高电平有效。
    //input               return_last             ,//返回数据是一次读请求对应的最后一个返回数据。(感觉是若返回整个cache行则需要)
    input  [`PACKED_DATA_SIZE-1:0]       mem_return_data             ,//读返回数据。
    //to perf_counter
    output              cache_hit_fail_output//未命中信号  
`
##### Cache模块与AXI总线的交互接口
|name|位宽|I/O|含义|
|:---:|:---:|:---:|:---:|
|icache_mem_read_en|1|OUT|cache需要读数据的使能信号|
|icache_mem_read_addr|32|OUT|cache需要读的数据的地址(给物理地址吧)|
|mem_icache_return_en|1|IN|总线向cache返回所读取数据的使能信号|
|mem_icache_return_data|32*8|IN|总线向cache返回的所读取数据|



想法：是不是可以同时处理两条读cache命令，流水线并行？？？？？？？？？？？？？？？？？


# icache读写规则
### 主存读命令：命中Cache

- 首先，将用TLB换算出来的物理地址拿出。
- 经过地址寻址，交付给cache_ram取出对应的数据。
- 进行对比确定是否命中，命中则返回。

### 主存读命令：未命中Cache

- 相应地址使能等交付给总线，之后开始等待。
- 数据返回后送出，同时将数据送给ram进行写回。


# 第一代cache——状态机实现
### icache状态机
##### 状态定义：
- IDLE:等待状态，接收到使能则下一阶段进入LookUp状态
- LookUp:接受地址，进行信息转换(***目前直接用了物理地址，可能需要在这个状态先进行虚拟地址转换***)，下一阶段进入JudgeHit
- JudgeHit:判断是否命中。若命中则输出数据，进入IDLE;否则未命中，进入HitFail。
- HitFail:向总线发出读数据请求，然后进入RefreshCache
- RefreshCache:当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。


#### 第二次尝试——icache
##### 主要改进：
重新对icache的状态进行定义。主要增加了**ok反馈信号**，即模块间通信时，每次的信号成功接收都会返回ok信号，根据这个信号可以将en使能信号重新变回低电平，从而方便进行下一个信号发出时，en重新变为高电平，实现信号的连续传输。
##### 状态定义：
- ICacheIDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中，若命中则进入下一状态ReturnInstruction;否则进入下一状态AskMem
- ICacheReturnInstruction:向cpu输出数据，下一状态进入IDLE
- ICacheAskMem:向mem查找数据，然后进入RefreshCache
- RefreshICache:当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。

### dcache状态机
##### 状态定义：
- DCache_IDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中。根据是否命中，读还是写决定进入下一个状态(命中读——ReadDCache;命中写——WriteDCache;未命中读或写——AskMem)若dcache未命中但writebuffer命中，则下一状态返回IDLE;
- ReadDCache:向cpu输出数据，下一状态进入IDLE;
- WriteDCache:改写DCache中的数据，下一状态进入IDLE;
- DCacheAskMem:向mem查找数据，处理LRU_pick所指向的数据，若为脏则传给WriteBuffer，若writebuffer还在阻塞则进行阻塞,然后进入RefreshDCache;
- RefreshDCache:等到总线数据返回时，根据命令要求，若读则返回对应数据；若写则改写数据。然后进入IDLE;

##### 难点分析：
1. 相比于icache,dcache新增了写的功能，工作量起码翻倍。
2. 写操作引起的"脏"导致dcache中LRU_pick指向的数据不能单纯地直接被替换掉，而是要将它保存入mem，再更新成新的一路。为了使写回mem的这个操作不引起阻塞，设计模块Write_Buffer，可存储最多8个写mem命令，每当dcache的脏数据需要写回mem时，将信号传递给WriteBuffer即可进入下一状态(注意若WriteBuffer已满则需阻塞)
3. WriteBuffer的实现：WriteBuffer也可以hit!!!当cpu需要读/写的数据在WriteBuffer中时，可直接对WriteBuffer进行读/写操作。有关dcache的结构设计为：cpu-dcache-writebuffer-mem。cpu命令信息同步传给writebuffer，当writebuffer hit时，dcache直接回到IDLE状态，命令由writebuffer负责执行即可。**还要注意考虑是否在writebuffer写回mem的时刻数据被命中，导致错误！！！**

##### 接口定义：
```
    input wire clk,
    input wire reset,
    //cpu
    input wire [`ADDR_SIZE-1:0] cpu_dcache_virtual_addr,//cpu传的虚拟地址
    input wire [`ADDR_SIZE-1:0] cpu_dcache_physical_addr,//cpu传的物理地址
    output wire cpu_command_dcache_ok,//cpu向dcache的命令成功接收

    //cpu读数据
    input wire cpu_read_dcache_en,//cpu读数据命令使能信号
    input wire cpu_receive_dcache_data_ok,//cpu成功接收dcache的数据
    output wire dcache_cpu_return_data_en,//dcache正在向cpu返回数据
    output reg [`DATA_SIZE-1:0] dcache_cpu_return_data,//dcache向cpu返回的数据
    //cpu写数据
    input wire cpu_write_dcache_en,//cpu写数据命令使能信号
    input wire [`DATA_SIZE-1:0] cpu_write_dcache_data,//cpu需要写的数据
    output wire cpu_write_dcache_ok,//dcache写入完成

    //axi读数据
    output wire dcache_read_mem_en,//dcache读数据命令信号
    output wire [`ADDR_SIZE-1:0] dcache_read_mem_addr,//dcache读数据的地址(物理地址)
    output wire dcache_receive_mem_data_ok,//dcache成功接收来自mem的data
    input wire mem_ready_for_dcache_read,//mem空闲可读
    input wire mem_dcache_return_data_en,//mem正在向dcache返回数据
    input wire [`PACKED_DATA_SIZE-1:0] mem_dcache_return_data,//mem向cache返回的数据
    input wire mem_receive_dcache_read_ok,//mem成功接收dcache的读取命令
    //通过write_buffer向mem写数据
    output wire dcache_write_buffer_en,//dcache写数据命令信号
    output wire [`ADDR_SIZE-1:0]dcache_write_buffer_physical_addr,//dcache向mem写数据的物理地址
    output wire [`ADDR_SIZE-1:0]dcache_write_buffer_virtual_addr,//dcache向mem写数据的虚拟地址
    output wire [`PACKED_DATA_SIZE-1:0]dcache_write_buffer_data,//dcache向mem写的数据
    input wire buffer_ready_for_dcache_write,//buffer可接收写命令
    input wire buffer_receive_dcache_write_ok,//buffer成功接收写命令
    //writebuffer命中情况
    input wire buffer_hit_success,//write_buffer成功命中
    
    //其他信号
    output wire dcache_hit_success,//dcache成功命中
    output wire dcache_hit_fail,//dcache未命中
    output reg dcache_hit_result//dcache的命中结果
```

# 第二代cache——SystemVerilog实现，确定好了接口，目标成功对接
### icache
##### 状态定义
- ICacheIDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中，若命中则向CPU返回数据，下一状态为ICacheIDLE;否则进入下一状态ICacheAskMem
- ICacheAskMem:向mem查找数据，然后进入ICacheRefresh
- ICacheRefresh:当总线将数据传回时，向cpu输出数据，并更新cache中的数据，然后进入IDLE。

ICacheIDLE:当front传来信号，记录信号信息，当个周期内用记录的信息判断是否hit。若hit则下一个进入ICacheIDLE，同时考虑在下一个时钟周期向cpu返回信号。







### dcache
##### 状态定义
- DCacheIDLE:空闲等待状态，接收到使能则保存命令信息，判断是否命中。若命中则执行对应任务，下一状态进入DCacheIDLE。若未命中则进入下一状态DCacheAskMem
- DCacheAskMem:向mem查找数据，然后进入DCacheRefresh
- DCacheRefresh:等待直到总线将数据传回，执行对应的读写，向cpu返回信号，下一状态进入DCacheIDLE
  

















ICache信号到底怎么给？

第一个时钟上升沿：front给使能和地址

第一个时钟周期：接收信号，记录信号，给addr_ok

第二个时钟上升沿：从ram读到数据

第二个时钟周期：判断命中与否，若命中则返回数据