// lab3         : n1~n20  NOP_INSERT 1 TEST1 1 TEST2 0 TEST3 0 TEST4 0 TEST5 0 TEST6 0 TEST7 0 TEST8 0 TEST9 0
// lab4~5       : n1~n20  NOP_INSERT 0 TEST1 1 TEST2 0 TEST3 0 TEST4 0 TEST5 0 TEST6 0 TEST7 0 TEST8 0 TEST9 0
// lab6         : n1~n36  NOP_INSERT 0 TEST1 1 TEST2 1 TEST3 0 TEST4 0 TEST5 0 TEST6 0 TEST7 0 TEST8 0 TEST9 0
// lab7         : n1~n46  NOP_INSERT 0 TEST1 1 TEST2 1 TEST3 1 TEST4 0 TEST5 0 TEST6 0 TEST7 0 TEST8 0 TEST9 0
// lab8         : n1~n47  NOP_INSERT 0 TEST1 1 TEST2 1 TEST3 1 TEST4 1 TEST5 0 TEST6 0 TEST7 0 TEST8 0 TEST9 0
// lab9, 11~12  : n1~n58  NOP_INSERT 0 TEST1 1 TEST2 1 TEST3 1 TEST4 1 TEST5 1 TEST6 0 TEST7 0 TEST8 0 TEST9 0
// lab14        : n1~n70  NOP_INSERT 0 TEST1 1 TEST2 1 TEST3 1 TEST4 1 TEST5 1 TEST6 1 TEST7 0 TEST8 0 TEST9 0
// lab15, 17~18 : n1~n72  NOP_INSERT 0 TEST1 1 TEST2 1 TEST3 1 TEST4 1 TEST5 1 TEST6 1 TEST7 1 TEST8 0 TEST9 0 
// lab19        : n1~n79  NOP_INSERT 0 TEST1 1 TEST2 1 TEST3 1 TEST4 1 TEST5 1 TEST6 1 TEST7 1 TEST8 1 TEST9 0

//NOP_INSERT: Insert 4 nop insts between every alu operation.
//            Only for Lab3
//==================================================================
#ifndef nscscc
    #define SHORT_TEST1 0
    #define NOP_INSERT 0
    #define TEST1 1
    #define TEST2 1
    #define TEST3 1
    #define TEST4 1
    #define TEST5 1
    #define TEST6 1
    #define TEST7 1
    #define TEST8 1
    #define TEST9 0

    #define RUN_SIMU   1
#else
    #define SHORT_TEST1 0
    #define NOP_INSERT 0
    #define TEST1 1
    #define TEST2 1
    #define TEST3 1
    #define TEST4 1
    #define TEST5 1
    #define TEST6 0
    #define TEST7 0
    #define TEST8 0
    #define TEST9 0

    #define RUN_SIMU   0
#endif
