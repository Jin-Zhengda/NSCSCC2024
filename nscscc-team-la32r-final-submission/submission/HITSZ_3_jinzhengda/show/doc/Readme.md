├── IP            		       用于初始化ram的coe文件
│　　├──CONFREG       	       初始化vga的coe文件
│　　└── lcdctrl
│　　　　　└── initial_code      用于初始化lcd的coe文件

└──  my_chiplab             

​			├── chip             SoC顶层
​			│　　└── soc_demo       SoC顶层代码实例
​			│　　　　　├── loongson    龙芯实验箱SoC顶层代码
​			│　　　　　├── Baixin     百芯开发板SoC顶层代码
​			│　　　　　└── sim       仿真SoC顶层代码
​			├── fpga             综合工程
​			│　　└── loongson        龙芯实验箱综合工程
​			├── IP              SoC IP
​			│　　├── AMBA        总线 IP
​			│　　├── APB_DEV        APB协议通信设备
​			│　　　　　├── URT        UART设备控制器
​			│　　　　　└── NAND     NAND设备控制器
​			│　　├── DMA          DMA逻辑，用于设备作为master访问内存
​			│　　├── SPI           SPI Flash设备控制器
​			│　　├── MAC           MAC设备控制器
​			│　　├── CONFREG       用于访问开发板上数码管、拨码开关、VGA等外设
​			│　　├── myCPU         自实现的处理器核逻辑
​			│　　└── xilinx_ip        Vivado平台所创建的IP
​			└── toolchains           chiplab运行所需工具
​	　　		　├── loongarch32r-linux-gnusf-*   gcc工具链
​	　　　		├── nemu                  nemu模拟器，用于在线实时比对
​	　　　		└── system_newlib                newlib C库，用于编译C程序