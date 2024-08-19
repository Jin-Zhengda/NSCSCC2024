/*
    Copyright 2008 Adobe Systems Incorporated
    Copyright 2018-2019 Chris Cox
    Distributed under the MIT License (see accompanying file LICENSE_1_0_0.txt
    or a copy at http://stlab.adobe.com/licenses.html )


Goal:  Test performance of various idioms for calculating the inner product of two sequences.

NOTE:  Inner products are common in mathematical and geometry processing applications,
        plus some audio and image processing.


Assumptions:
    1) The compiler will optimize inner product operations.

    2) The compiler may recognize ineffecient inner product idioms
        and substitute efficient methods when it can.
        NOTE: the best method is highly dependent on the data types and CPU architecture

    3) std::inner_product will be well optimized for all types and containers.


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
int inner_product_iter = 2;


// 8000 items, or between 8 and 64k of data
// this is intended to remain within the L2 cache of most common CPUs
const int inner_product_SIZE = 8000;


// initial value for filling our arrays, may be changed from the command line
int32_t init_value_8 = 3;
int32_t init_value_16 = 211;
int32_t init_value_32 = 1065;
//float init_value_f16 = 5.0;
//double init_value_f32 = 365.0;

/******************************************************************************/
/******************************************************************************/

void inner_product_fill8(int8_t * first, int8_t * last, int8_t value) {
    while (first != last) *first++ = (int8_t)(value);
}

void inner_product_fillu8(uint8_t * first, uint8_t * last, uint8_t value) {
    while (first != last) *first++ = (uint8_t)(value);
}

void inner_product_fill16(int16_t * first, int16_t * last, int16_t value) {
    while (first != last) *first++ = (int16_t)(value);
}

void inner_product_fillu16(uint16_t * first, uint16_t * last, uint16_t value) {
    while (first != last) *first++ = (uint16_t)(value);
}

void fill_32(int32_t * first, int32_t * last, int32_t value) {
    while (first != last) *first++ = (int32_t)(value);
}

void fill_u32(uint32_t * first, uint32_t * last, uint32_t value) {
    while (first != last) *first++ = (uint32_t)(value);
}

/*
void fill_f16(float * first, float * last, float value) {
    while (first != last) *first++ = (float)(value);
}

void fill_f32(double * first, double * last, double value) {
    while (first != last) *first++ = (double)(value);
}
*/

/******************************************************************************/
/******************************************************************************/
// a trivial for loop

int test_inner_product_8( const int8_t* first, const int8_t* second, const size_t count, const char *label) {

    start_time = get_clock();

    int ret = 0;
    for(int i = 0; i < inner_product_iter; ++i) {

        int8_t sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        int8_t target = (int8_t)(init_value_8)*(int8_t)(init_value_8)*inner_product_SIZE;
        if ( abs( sum - target ) > (int8_t)(1.0e-6) ) {
            printf("test %s failed\n", label);
            ret += 1;
        }
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_inner_product_u8( const uint8_t* first, const uint8_t* second, const size_t count, const char *label) {

    start_time = get_clock();

    int ret = 0;
    for(int i = 0; i < inner_product_iter; ++i) {

        uint8_t sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        uint8_t target = (uint8_t)(init_value_8)*(uint8_t)(init_value_8)*inner_product_SIZE;
        if ( ( sum - target ) > (uint8_t)(1.0e-6) ) {
            printf("test %s failed\n", label);
            ret += 1;
        }
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_inner_product_16( const int16_t* first, const int16_t* second, const size_t count, const char *label) {

    start_time = get_clock();

    int ret = 0;
    for(int i = 0; i < inner_product_iter; ++i) {

        int16_t sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        int16_t target = (int16_t)(init_value_16)*(int16_t)(init_value_16)*inner_product_SIZE;
        if ( abs( sum - target ) > (int16_t)(1.0e-6) ) {
            printf("test %s failed\n", label);
            ret += 1;
        }
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_inner_product_u16( const uint16_t* first, const uint16_t* second, const size_t count, const char *label) {

    start_time = get_clock();

    int ret = 0;
    for(int i = 0; i < inner_product_iter; ++i) {

        uint16_t sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        uint16_t target = (uint16_t)(init_value_16)*(uint16_t)(init_value_16)*inner_product_SIZE;
        if ( ( sum - target ) > (uint16_t)(1.0e-6) ) {
            printf("test %s failed\n", label);
            ret += 1;
        }
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_inner_product_32( const int32_t* first, const int32_t* second, const size_t count, const char *label) {

    start_time = get_clock();

    int ret = 0;
    for(int i = 0; i < inner_product_iter; ++i) {

        int32_t sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        int32_t target = (int32_t)(init_value_32)*(int32_t)(init_value_32)*inner_product_SIZE;
        if ( abs( sum - target ) > (int32_t)(1.0e-6) ) {
            printf("test %s failed\n", label);
            ret += 1;
        }
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

int test_inner_product_u32( const uint32_t* first, const uint32_t* second, const size_t count, const char *label) {

    start_time = get_clock();

    int ret = 0;
    for(int i = 0; i < inner_product_iter; ++i) {

        uint32_t sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        uint32_t target = (uint32_t)(init_value_32)*(uint32_t)(init_value_32)*inner_product_SIZE;
        if ( ( sum - target ) > (uint32_t)(1.0e-6) ) {
            printf("test %s failed\n", label);
            ret += 1;
        }
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);

    return ret;
}

/*
void test_inner_product_f16( const float* first, const float* second, const size_t count, const char *label) {

    start_time = get_clock();

    for(int i = 0; i < inner_product_iter; ++i) {

        float sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        float target = (float)(init_value_f16)*(float)(init_value_f16)*inner_product_SIZE;
        if ( fabs( sum - target ) > (float)(1.0e-6) )
            printf("test %s failed\n", label);
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);
}

void test_inner_product_f32( const double* first, const double* second, const size_t count, const char *label) {

    for(int i = 0; i < inner_product_iter; ++i) {

        double sum = 0 ;
        for (size_t j = 0; j < count; ++j) {
            sum += first[j] * second[j];
        }
        
        //check_sum( sum, label );
        double target = (double)(init_value_f32)*(double)(init_value_f32)*inner_product_SIZE;
        if ( fabs( sum - target ) > (double)(1.0e-6) )
            printf("test %s failed\n", label);
    }
    
    // need the labels to remain valid until we print the summary
    end_time = get_clock();

    uint32_t time_cost = (end_time - start_time)/ (CLOCKS_PER_SEC);
    printf("\"%s, %u items\"  %d sec\n",
        label,
        count,
        time_cost);
}
*/

/******************************************************************************/
/******************************************************************************/

// NOTE - can't make generic template template argument without C++17
// I would like to have TestOneFunction to handle all the types and if's, but need to use different types with it inside
// see sum_sequence.cpp


int inner_product_TestOneType_8()
{
    int8_t data[inner_product_SIZE];
    int8_t dataB[inner_product_SIZE];

    inner_product_fill8(data, data+inner_product_SIZE, (int8_t)(init_value_8));
    inner_product_fill8(dataB, dataB+inner_product_SIZE, (int8_t)(init_value_8));
   
    return test_inner_product_8( data, dataB, inner_product_SIZE, "int_8 inner_product1 to int_8");
}

int inner_product_TestOneType_u8()
{
    uint8_t data[inner_product_SIZE];
    uint8_t dataB[inner_product_SIZE];

    inner_product_fillu8(data, data+inner_product_SIZE, (uint8_t)(init_value_8));
    inner_product_fillu8(dataB, dataB+inner_product_SIZE, (uint8_t)(init_value_8));
   
    return test_inner_product_u8( data, dataB, inner_product_SIZE, "uint_8 inner_product1 to uint_8");
}


int inner_product_TestOneType_16()
{
    int16_t data[inner_product_SIZE];
    int16_t dataB[inner_product_SIZE];

    inner_product_fill16(data, data+inner_product_SIZE, (int16_t)(init_value_16));
    inner_product_fill16(dataB, dataB+inner_product_SIZE, (int16_t)(init_value_16));
   
    return test_inner_product_16( data, dataB, inner_product_SIZE, "int_16 inner_product1 to int_16");
}

int inner_product_TestOneType_u16()
{
    uint16_t data[inner_product_SIZE];
    uint16_t dataB[inner_product_SIZE];

    inner_product_fillu16(data, data+inner_product_SIZE, (uint16_t)(init_value_16));
    inner_product_fillu16(dataB, dataB+inner_product_SIZE, (uint16_t)(init_value_16));
   
    return test_inner_product_u16( data, dataB, inner_product_SIZE, "uint_16 inner_product1 to uint_16");
}

int inner_product_TestOneType_32()
{
    int32_t data[inner_product_SIZE];
    int32_t dataB[inner_product_SIZE];

    fill_32(data, data+inner_product_SIZE, (int32_t)(init_value_32));
    fill_32(dataB, dataB+inner_product_SIZE, (int32_t)(init_value_32));
   
    return test_inner_product_32( data, dataB, inner_product_SIZE, "int_32 inner_product1 to int_32");
}

int inner_product_TestOneType_u32()
{
    uint32_t data[inner_product_SIZE];
    uint32_t dataB[inner_product_SIZE];

    fill_u32(data, data+inner_product_SIZE, (uint32_t)(init_value_32));
    fill_u32(dataB, dataB+inner_product_SIZE, (uint32_t)(init_value_32));
   
    return test_inner_product_u32( data, dataB, inner_product_SIZE, "uint_32 inner_product1 to uint_32");
}

/*
void TestOneType_f16()
{
    float data[inner_product_SIZE];
    float dataB[inner_product_SIZE];

    fill_f16(data, data+inner_product_SIZE, (float)(init_value_f16));
    fill_f16(dataB, dataB+inner_product_SIZE, (float)(init_value_f16));
   
    test_inner_product_f16( data, dataB, inner_product_SIZE, "float inner_product1 to float");
}

void TestOneType_f32()
{
    double data[inner_product_SIZE];
    double dataB[inner_product_SIZE];

    fill_f32(data, data+inner_product_SIZE, (double)(init_value_f32));
    fill_f32(dataB, dataB+inner_product_SIZE, (double)(init_value_f32));
   
    test_inner_product_f32( data, dataB, inner_product_SIZE, "double inner_product1 to double");
}
*/
/******************************************************************************/
/******************************************************************************/

int shell16_main() {

    // output command for documentation:
    int i;
    // for (i = 0; i < argc; ++i)
    //     printf("%s ", argv[i] );
    // printf("\n");
    int ret = 0;

    ret += inner_product_TestOneType_8();
    ret += inner_product_TestOneType_u8();
    ret += inner_product_TestOneType_16();
    ret += inner_product_TestOneType_u16();
    // inner_product_TestOneType_32();
    // inner_product_TestOneType_u32();

    //TestOneType_f16();
    //TestOneType_f32();

    return ret;
}

// the end
/******************************************************************************/
/******************************************************************************/


void shell16(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("inner product test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell16_main();
    }else{
        for(i=0;i<LOOPTIMES;i++)
            err += shell16_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("inner product PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("inner product ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("inner product: Total Count(SoC count) = 0x%x\n", total_count);
	printf("inner product: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}