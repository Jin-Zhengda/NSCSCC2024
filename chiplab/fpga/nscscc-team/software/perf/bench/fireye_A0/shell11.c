int A0_n = 10000;
int A0_k = 20;
int data[20] = {207, 47, 368, 668, 655, 560, 8, 820, 11, 723, 396, 310, 268, 572, 45, 84, 229, 5, 92, 475};
#define LOOP 1


// int A0_k = ...;
// int A0_n = ...;
// int data[A0_k] = {...};

#include <stdio.h>
#include <time.h>
#include <machine.h>

#define KN 10000

int pos[KN] = {1};

int A0_max(int a, int b) { return a > b ? a : b; }

int shell11_main() {
    pos[0] = 0;

    int ans = 0;
    for(int i = 0; i < A0_k; i++) {
		int x = data[i];
		for(int j = x; j <= A0_n; j += x) pos[j] ^= 1;
		int tmp = 0;
		for(int j = 1; j <= A0_n; j++) tmp += pos[j];
		ans = A0_max(ans, tmp);
	}

    printf("%d\n", ans);
    return (ans == 3367) ? 0 : 1;
}

void shell11(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("fireye A0 test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell11_main();
    }else{
        for(i=0;i<LOOPTIMES_fireye_A0;i++)
            err += shell11_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("fireye A0 PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("fireye A0 ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("fireye A0: Total Count(SoC count) = 0x%x\n", total_count);
	printf("fireye A0: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}
