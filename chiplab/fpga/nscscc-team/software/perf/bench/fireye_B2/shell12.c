int B2_n = 100;
int L[100] = {48, 47, 40, 40, 36, 31, 25, 25, 25, 24, 14, 13, 13, 10, 10, 10, 10, 10, 10, 8, 5, 5, 5, 4, 4, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 21, 21, 21, 21, 21, 23, 23, 23, 23, 26, 29, 29, 32, 32, 32, 32, 33, 33, 33, 33, 38, 38, 38, 38, 38, 38, 38, 39, 40, 40, 40, 42, 43, 48};
int R[100] = {48, 48, 53, 53, 53, 54, 55, 57, 59, 66, 66, 66, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 96, 96, 96, 96, 96, 96, 96, 96, 95, 95, 95, 95, 94, 94, 93, 93, 93, 92, 92, 89, 89, 83, 80, 79, 78, 77, 77, 76, 76, 71, 71, 71, 71, 70, 70, 69, 69, 69, 68, 57, 51, 48};

#define LOOP 2

// int B2_n = ...;
// int L[B2_n] = ...;
// int R[B2_n] = ...;

#include <stdio.h>
#include <time.h>
#include <machine.h>

#define KN 100

int log_2(int x) { int ans = 0; while(x >>= 1) ans++; return ans; }
int B2_max(int a, int b) { return a > b ? a : b; }
int B2_min(int a, int b) { return a < b ? a : b; }

int query(int d[][KN], int l, int r, int maxx) {
    int t = log_2(r - l + 1);
    if (maxx) return B2_max(d[t][l], d[t][r - (1 << t) + 1]);
    return B2_min(d[t][l], d[t][r - (1 << t) + 1]);
}

void init(int d[][KN], int a[], int len, int maxx) {
    for (int i = 0; i < len; i++) d[0][i] = a[i];
    int t = 1;
    for (int i = 1; t <= len; i++) {
        for (int j = 0; j + t < len; j++)
            if (maxx)d[i][j] = B2_max(d[i - 1][j], d[i - 1][j + t]);
            else d[i][j] = B2_min(d[i - 1][j], d[i - 1][j + t]);
        t <<= 1;
    }
}

int shell12_main() {
    int dl[20][KN], dr[20][KN];

    init(dl, L, B2_n, 1);
    init(dr, R, B2_n, 0);

    int ans;
    for (int var = 0; var < LOOP; var++) {
        ans = 1;
        for (int i = 1; i <= B2_n; i++) {
            int l = ans, r = B2_n - i + 1;
            while (l <= r) {
                int mid = l + r >> 1;
                if (query(dr, i - 1, i + mid - 2, 0) - query(dl, i - 1, i + mid - 2, 1) + 1 >= mid) {
                    ans = B2_max(ans, mid); l = mid + 1;
                } else r = mid - 1;
            }
        }
    }

    printf("%d\n", ans);
    return (ans == 64) ? 0 : 1;
}

void shell12(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("fireye B2 test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell12_main();
    }else{
        for(i=0;i<LOOPTIMES;i++)
            err += shell12_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("fireye B2 PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("fireye B2 ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("fireye B2: Total Count(SoC count) = 0x%x\n", total_count);
	printf("fireye B2: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}
