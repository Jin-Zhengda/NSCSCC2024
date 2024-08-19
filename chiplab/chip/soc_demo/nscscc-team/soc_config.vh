//功能测试与�?�能测试二�?�一
 //`define RUN_FUNC_TEST
`define RUN_PERF_TEST

//性能测试中，选择是否打开 AXI RAM 的固定延时机制，�?启宏后无固定延迟
`ifdef RUN_PERF_TEST
`define RUN_PERF_NO_DELAY
`endif