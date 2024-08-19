/*
    Copyright 2008-2009 Adobe Systems Incorporated
    Copyright 2018 Chris Cox
    Distributed under the MIT License (see accompanying file LICENSE_1_0_0.txt
    or a copy at http://stlab.adobe.com/licenses.html )


Goal: Test performance of various idioms and optimizations for lookup tables.


Assumptions:
    1) The compiler will optimize lookup table operations.
        Unrolling will usually be needed to hide read latencies.

    2) The compiler should recognize ineffecient lookup table idioms and substitute efficient methods.
        Many different CPU architecture issues will require reading and writing words for best performance.
            CPUs with...
                    cache write-back/write-combine delays.
                    store forwarding delays.
                    slow cache access relative to shifts/masks.
                    slow partial word (byte) access.
                    fast shift/mask operations.
        On some CPUs, a lookup can be handled with vector instructions.
        On some CPUs, special cache handling is needed (especially 2way caches).




TODO - lookup and interpolate (int16_t, int32_t, int64_t, float, double)
TODO - 2D and 3D LUTs, simple and interpolated

*/

/******************************************************************************/

#include <time.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <stdbool.h>
#include <machine.h>

/******************************************************************************/
/******************************************************************************/

clock_t start_time, end_time;

// this constant may need to be adjusted to give reasonable minimum times
// For best results, times should be about 1.0 seconds for the minimum test run
int base_iterations = 1;
int lookup_table_iter = 1;

// 4000 items, or about 2..4k of data
// this is intended to remain within the L1 cache of most common CPUs
#define SIZE_SMALL 20

// about 0.5..1M of data
// this is intended to be outside the L2 cache of most common CPUs
#define lookup_table_SIZE 1000

// initial value for filling our arrays, may be changed from the command line
int32_t lookup_table_init_value = 3;

/******************************************************************************/

// our global arrays of numbers

uint8_t inputData8[lookup_table_SIZE];
uint8_t resultData8[lookup_table_SIZE];

uint16_t inputData16[lookup_table_SIZE];
uint16_t resultData16[lookup_table_SIZE];

/******************************************************************************/
/******************************************************************************/


void fill_8(uint8_t * first, uint8_t * last, uint8_t value) {
    while (first != last) *first++ = (uint8_t)(value);
}

void fill_16(uint16_t * first, uint16_t * last, uint16_t value) {
    while (first != last) *first++ = (uint16_t)(value);
}

void fill_random_8(uint8_t * first, uint8_t * last) {
    srand((unsigned int)lookup_table_init_value + 123 );
    while (first != last) {
        *first++ = (uint8_t)rand();
    }
}

void fill_random_16(uint16_t * first, uint16_t * last) {
    srand((unsigned int)lookup_table_init_value + 123 );
    while (first != last) {
        *first++ = (uint16_t)rand() % 1000;
    }
}

int max(int a, int b){
    if(a > b)
        return a;
    else
        return b;
}

/******************************************************************************/
/******************************************************************************/



// baseline - a trivial loop

int test_lut1_u8(const uint8_t* input, uint8_t *result, const int count, const uint8_t* LUT, const char *label) {

    start_time = get_clock();

    for(int i = 0; i < lookup_table_iter; ++i) {
        for (int j = 0; j < count; ++j) {
            result[j] = LUT[ input[j] ];
        }
    }
    
    end_time = get_clock();

    int j;

    int ret = 0;
    for (j = 0; j < count; ++j) {
        if (result[j] != (uint8_t)(lookup_table_init_value)) {
            printf("test %s failed (got %u, expected %u)\n", label, (unsigned)(result[j]), (unsigned)(lookup_table_init_value));
            ret += 1;
            break;
        }
    }

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %d times\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_lut1_8(const int8_t* input, int8_t *result, const int count, const int8_t* LUT, const char *label) {

    start_time = get_clock();

    for(int i = 0; i < lookup_table_iter; ++i) {
        for (int j = 0; j < count; ++j) {
            result[j] = LUT[ input[j] ];
        }
    }
    
    end_time = get_clock();

    int j;

    int ret = 0;
    for (j = 0; j < count; ++j) {
        if (result[j] != (int8_t)(lookup_table_init_value)) {
            printf("test %s failed (got %u, expected %u)\n", label, (unsigned)(result[j]), (unsigned)(lookup_table_init_value));
            ret += 1;
            break;
        }
    }

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %d times\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_lut1_u16(const uint16_t* input, uint16_t *result, const int count, const uint16_t* LUT, const char *label) {

    start_time = get_clock();

    for(int i = 0; i < lookup_table_iter; ++i) {
        for (int j = 0; j < count; ++j) {
            result[j] = LUT[ input[j] ];
        }
    }
    
    end_time = get_clock();

    int j;

    int ret = 0;
    for (j = 0; j < count; ++j) {
        if (result[j] != (uint16_t)(lookup_table_init_value)) {
            printf("test %s failed (got %u, expected %u)\n", label, (unsigned)(result[j]), (unsigned)(lookup_table_init_value));
            ret += 1;
            break;
        }
    }

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %d times\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_lut1_16(const int16_t* input, int16_t *result, const int count, const int16_t* LUT, const char *label) {

    start_time = get_clock();

    for(int i = 0; i < lookup_table_iter; ++i) {
        for (int j = 0; j < count; ++j) {
            result[j] = LUT[ input[j] ];
        }
    }
    
    end_time = get_clock();

    int j;

    int ret = 0;
    for (j = 0; j < count; ++j) {
        if (result[j] != (int16_t)(lookup_table_init_value)) {
            printf("test %s failed (got %u, expected %u)\n", label, (unsigned)(result[j]), (unsigned)(lookup_table_init_value));
            ret += 1;
            break;
        }
    }

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %d times\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

/******************************************************************************/
/******************************************************************************/

int shell17_main() {

    // output command for documentation:
    int i;
    // for (i = 0; i < argc; ++i)
    //     printf("%s ", argv[i] );
    // printf("\n");

    uint8_t myLUT8[ 256 ];
    uint16_t myLUT16[ 8192 ];
    
    int ret = 0;

    fill_8(myLUT8, myLUT8+256, (uint8_t)(lookup_table_init_value));
    fill_16(myLUT16, myLUT16+8192, (uint16_t)(lookup_table_init_value));

    fill_random_8( inputData8, inputData8+lookup_table_SIZE );
    fill_random_16( inputData16, inputData16+lookup_table_SIZE );


// uint8_t
    lookup_table_iter = base_iterations;

    ret += test_lut1_u8( inputData8, inputData8, SIZE_SMALL, myLUT8, "uint8_t lookup table1 small inplace");
    ret += test_lut1_u8( inputData8, resultData8, SIZE_SMALL, myLUT8, "uint8_t lookup table1 small");

    lookup_table_iter = 1;//max( 1, (int)(((uint32_t)base_iterations * SIZE_SMALL) / lookup_table_SIZE) );
    
    ret += test_lut1_u8( inputData8, inputData8, lookup_table_SIZE, myLUT8, "uint8_t lookup table1 large inplace");
    ret += test_lut1_u8( inputData8, resultData8, lookup_table_SIZE, myLUT8, "uint8_t lookup table1 large");



// int8_t
    lookup_table_iter = base_iterations;

    ret += test_lut1_8( (int8_t*)inputData8, (int8_t*)inputData8, SIZE_SMALL, (int8_t*)(myLUT8+128), "int8_t lookup table1 small inplace");  
    ret += test_lut1_8( (int8_t*)inputData8, (int8_t*)resultData8, SIZE_SMALL, (int8_t*)(myLUT8+128), "int8_t lookup table1 small"); 

    lookup_table_iter = 1;//max( 1, (int)(((uint32_t)base_iterations * SIZE_SMALL) / lookup_table_SIZE) );
    
    ret += test_lut1_8( (int8_t*)inputData8, (int8_t*)inputData8, lookup_table_SIZE, (int8_t*)(myLUT8+128), "int8_t lookup table1 large inplace");
    ret += test_lut1_8( (int8_t*)inputData8, (int8_t*)resultData8, lookup_table_SIZE, (int8_t*)(myLUT8+128), "int8_t lookup table1 large");

    
// uint16_t
    lookup_table_iter = base_iterations;

    ret += test_lut1_u16( inputData16, inputData16, SIZE_SMALL, myLUT16, "uint16_t lookup table1 small inplace");
    ret += test_lut1_u16( inputData16, resultData16, SIZE_SMALL, myLUT16, "uint16_t lookup table1 small");

    lookup_table_iter = 1;//max( 1, (int)(((uint32_t)base_iterations * SIZE_SMALL) / lookup_table_SIZE) );
    
    ret += test_lut1_u16( inputData16, inputData16, lookup_table_SIZE, myLUT16, "uint16_t lookup table1 large inplace");
    ret += test_lut1_u16( inputData16, resultData16, lookup_table_SIZE, myLUT16, "uint16_t lookup table1 large");

// int16_t
    lookup_table_iter = base_iterations;

    ret += test_lut1_16( (int16_t*)inputData16, (int16_t*)inputData16, SIZE_SMALL, (int16_t*)(myLUT16+4096), "int16_t lookup table1 small inplace");
    ret += test_lut1_16( (int16_t*)inputData16, (int16_t*)resultData16, SIZE_SMALL, (int16_t*)(myLUT16+4096), "int16_t lookup table1 small");

    lookup_table_iter = 1;//max( 1, (int)(((uint32_t)base_iterations * SIZE_SMALL) / lookup_table_SIZE) );
    
    ret += test_lut1_16( (int16_t*)inputData16, (int16_t*)inputData16, lookup_table_SIZE, (int16_t*)(myLUT16+4096), "int16_t lookup table1 large inplace");
    ret += test_lut1_16( (int16_t*)inputData16, (int16_t*)resultData16, lookup_table_SIZE, (int16_t*)(myLUT16+4096), "int16_t lookup table1 large");

    return 0;
}

// the end
/******************************************************************************/
/******************************************************************************/


void shell17(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("lookup table test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell17_main();
    }else{
        for(i=0;i<LOOPTIMES;i++)
            err += shell17_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("lookup table PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("lookup table ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("lookup table: Total Count(SoC count) = 0x%x\n", total_count);
	printf("lookup table: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}