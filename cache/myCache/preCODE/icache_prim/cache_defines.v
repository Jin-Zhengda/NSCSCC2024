//cache_define

//num define
`define BANK_NUM 8//每个路中bank的个数数

//size define
`define TAG_SIZE 20//tag的位数
`define INDEX_SIZE 8//index的位数
`define OFFSET_SIZE 4//offset的位数
`define TAG_LOCATION 31:12
`define INDEX_LOCATION 11:4
`define OFFSET_LOCATION 3:0

`define BANK_SIZE 32//每个bank的位数
`define TAGV_SIZE 32//tag+valid存储时的size
`define SETSIZE 256

//state define
`define IDLE         5'b00001
`define LOOKUP       5'b00010
`define JUDGEHIT     5'b00100
`define HITFAIL      5'b01000
`define REFRESHCACHE 5'b10000

//True-False define
`define HITSUCCESS 1'b1
`define HITFAIL 1'b0
`define VALID 1'b1