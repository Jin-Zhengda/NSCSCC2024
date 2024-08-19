/*
    Copyright 2018 Chris Cox
    Distributed under the MIT License (see accompanying file LICENSE_1_0_0.txt
    or a copy at http://stlab.adobe.com/licenses.html )


Goal:  Examine performance optimizations related to loop induction variables.


Assumptions:
    1) The compiler will normalize all loop types and optimize all equally.
        (this is a necessary step before doing induction variable analysis)
        
    2) The compiler will remove unused induction variables.
        This could happen due to several optimizations.

    2) The compiler will recognize induction variables with linear relations (x = a*b + c)
        and optimize out redundant variables.

    3) The compiler will apply strength reduction to induction variable usage.

    4) The compiler will remove bounds checks by recognizing or adjusting loop limits.
        (can be an explict loop optimization, or part of range propagation)


*/

#include <time.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <machine.h>


/******************************************************************************/

clock_t start_time, end_time;

/******************************************************************************/

// this constant may need to be adjusted to give reasonable minimum times
// For best results, times should be about 1.0 seconds for the minimum test run
int loop_induction_iter = 3;


// 32000 items, or about 128k of data
// this is intended to remain within the L2 cache of most common CPUs
const int loop_induction_SIZE = 3200;


// initial value for filling our arrays, may be changed from the command line
int loop_induction_init_value = 3;

/******************************************************************************/

void fill_random(int32_t * first, int32_t * last) {
    while (first != last) {
        *first++ = (int32_t)rand();
    }
}

/******************************************************************************/
/******************************************************************************/


int test_copy(const int32_t *source, int32_t *dest, int count, const char *label) {
    int i;
    
    int ret = 0;
    fill_random( dest, dest+count );

    start_time = get_clock();

    for(i = 0; i < loop_induction_iter; ++i) {
        int i, j, k;
        for ( i=0, j=0, k=0; k < count; ++i, ++j, ++k ) {
            dest[i] = source[j];
        }
    }
    
    end_time = get_clock();
    
    if ( memcmp(dest, source, count*sizeof(int32_t)) != 0 ) {
        printf("test %s failed\n", label);
        ret = 1;
    }

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);

    printf("\"%s, %d items\"  %d sec\n",
        label,
        count,
        time_cost);
    
    return ret;
}

/******************************************************************************/
/******************************************************************************/

int shell18_main() {

    // output command for documentation:
    int i;
    // for (i = 0; i < argc; ++i)
    //     printf("%s ", argv[i] );
    // printf("\n");

    int32_t intSrc[ loop_induction_SIZE ];
    int32_t intDst[ loop_induction_SIZE ];
    
    
    srand( (unsigned int)loop_induction_init_value + 123);
    fill_random( intSrc, intSrc+loop_induction_SIZE );


    return test_copy( &intSrc[0], &intDst[0], loop_induction_SIZE, "int32_t for induction copy" );
}

// the end
/******************************************************************************/
/******************************************************************************/


void shell18(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("loop induction test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell18_main();
    }else{
        for(i=0;i<LOOPTIMES;i++)
            err += shell18_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("loop induction PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("loop induction ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("loop induction: Total Count(SoC count) = 0x%x\n", total_count);
	printf("loop induction: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}