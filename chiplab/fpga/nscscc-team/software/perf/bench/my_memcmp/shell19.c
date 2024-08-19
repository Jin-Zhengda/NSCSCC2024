/*
    Copyright 2008-2009 Adobe Systems Incorporated
    Copyright 2018 Chris Cox
    Distributed under the MIT License (see accompanying file LICENSE_1_0_0.txt
    or a copy at http://stlab.adobe.com/licenses.html )


Goal:  Test compiler optimizations related to memcmp and hand coded memcmp loops.


Assumptions:

    1) The compiler will recognize memcmp like loops and optimize appropriately.
        This could be subtitution of calls to memcmp,
         or it could be just optimizing the loop to get the best throughput.
        On modern systems, cache hinting is usually required for best throughput.

    2) The library function memcmp should be optimized for small, medium, and large buffers.
        ie: low overhead for smaller buffer, highly hinted for large buffers.

    3) The STL functions equal and mismatch should be optimized for small, medium, and large buffers.
        ie: low overhead for smaller buffers, highly hinted for large buffers.




NOTE - on some OSes, memcmp calls into the VM system to test for shared pages
        thus running faster than the DRAM bandwidth would allow on large arrays
        
        However, on those OSes, calling memcmp can hit mutexes and slow down
        significantly when called from threads.


NOTE - Linux memcmp returns 0, +-1 instead of the actual difference
NOTE - and sometimes Linux memcmp returns 0, +-256 instead of the actual difference


TODO - test performance of unaligned buffers
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

// this constant may need to be adjusted to give reasonable minimum times
// For best results, times should be about 1.0 seconds for the minimum test run
int memcmp_iter = 1;


// 64 Megabytes, intended to be larger than L2 cache on common CPUs
// needs to be divisible by 8
#define SIZE_4K  4096
#define SIZE_3M  8192 // cut down to 8K for acceptable run times

// initial value for filling our arrays, may be changed from the command line
uint8_t memcmp_init_value = 3;

/******************************************************************************/
/******************************************************************************/

void fill(uint8_t * first, uint8_t * last, uint8_t value) {
    while (first != last) *first++ = value;
}


int forloop_memcmp( const void *first, const void *second, size_t bytes ){
    const uint8_t *first_byte = (const uint8_t *)first;
    const uint8_t *second_byte = (const uint8_t *)second;
    int x;
        
    for (x = 0; x < bytes; ++x) {
        if (first_byte[x] != second_byte[x]) {
            return (first_byte[x] - second_byte[x]);
        }
    }
        
    return 0;
}


/******************************************************************************/
/******************************************************************************/


int test_memcmp(const uint8_t *first, const uint8_t *second, int count, bool expected_result) {
    int i;
    int bytes = count * sizeof(uint8_t);

    start_time = get_clock();

    int ret = 0;
    for(i = 0; i < memcmp_iter; ++i) {
        // sigh, Linux memcmp is wonky - some return 1, some return 256
        bool result = (forloop_memcmp( first, second, bytes ) != 0) ;
        
        // moving this test out of the loop causes unwanted overoptimization
        if ( result != expected_result ) {
            printf("test %s by %d failed (got %d instead of %d)\n", "for loop compare", count, (int)result, (int)expected_result );
            ret += 1;
        }
    }
    
    end_time = get_clock();
    return ret;
}

/******************************************************************************/

int test_memcmp_sizes(const uint8_t *first, const uint8_t *second, int max_count, bool result) {
    int i = max_count * sizeof(uint8_t);

    int ret = test_memcmp( first, second, max_count, result);

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
        
    printf("\"%s %d bytes\"  compare result: %s  %d sec\n",
            "for loop compare",
            i,
            result ? "false" : "true",
            time_cost);
    return ret;
}

/******************************************************************************/
/******************************************************************************/

// our global arrays of numbers to be operated upon

uint8_t data8u[SIZE_3M/sizeof(uint8_t)];
int alignment_pad = 1024;
uint8_t data8u_dest[SIZE_3M/sizeof(uint8_t) + 1024]; // leave some room for alignment testing

/******************************************************************************/
/******************************************************************************/


int shell19_main() {
    
    // output command for documentation:
    int i;

    int ret = 0;
    fill( data8u, data8u+(SIZE_3M/sizeof(uint8_t)), (uint8_t)(memcmp_init_value) );
    fill( data8u_dest, data8u_dest+(SIZE_3M/sizeof(uint8_t) + alignment_pad), (uint8_t)(memcmp_init_value) );
    ret += test_memcmp_sizes( data8u, data8u_dest, SIZE_3M/sizeof(uint8_t), false); 
    data8u[(SIZE_3M/sizeof(uint8_t))-1] += 1;    // last byte in the array 
    ret += test_memcmp_sizes( data8u, data8u_dest, SIZE_3M/sizeof(uint8_t), true);
/*
    test_memcmp_sizes( data8u, data8u_dest, SIZE_1M/sizeof(uint8_t), false);
    data8u[(SIZE_1M/sizeof(uint8_t))-1] += 1;    // last byte in the array
    test_memcmp_sizes( data8u, data8u_dest, SIZE_1M/sizeof(uint8_t), true);

    test_memcmp_sizes( data8u, data8u_dest, SIZE_4K/sizeof(uint8_t), false);
    data8u[(SIZE_4K/sizeof(uint8_t))-1] += 1;    // last byte in the array
    test_memcmp_sizes( data8u, data8u_dest, SIZE_4K/sizeof(uint8_t), true);
*/

    return ret;
}

// the end
/******************************************************************************/
/******************************************************************************/


void shell19(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("memcmp test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell19_main();
    }else{
        for(i=0;i<LOOPTIMES;i++)
            err += shell19_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("memcmp PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("memcmp ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("memcmp: Total Count(SoC count) = 0x%x\n", total_count);
	printf("memcmp: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}