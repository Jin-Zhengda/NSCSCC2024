int I2_m = 19, I2_n = 32;
char s[32][21] = {" ###################", " #.................#", " #.###############.#", " #.###############.#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.##..............#", " #.###############.#", " #.###############.#", " #.................#", " ###################"};
int vis[32][19] = {1};

#define LOOP 10

// int I2_m = ..., I2_n = ...;
// char s[I2_n][I2_m + 2] = ...;
// int vis[I2_n][I2_m];

#include <stdio.h>
#include <string.h>
#include <time.h>
#include <machine.h>

int dd[8][2] = {{-1, 0}, {-1, -1}, {-1, 1}, {0, 1}, {0, -1}, {1, 0}, {1, -1}, {1, 1}};
int abc[3][15] = {{1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1},
    {1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1},
    {1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1}
};
int add1[20], add2[20];

int check(int x, int y, int I2_n, int I2_m, char cur) {
    for (int i = x; i < x + I2_n; i++)
        for (int j = y; j < y + I2_m; j++)
            if (s[i][j] != cur || vis[i][j])return 1;
    return 0;
}

int find(int stx, int sty, int x, int y, int cur) {
    add1[0] = 0, add1[1] = x, add1[2] = x + y;
    for (int i = 3; i < 15; i++)add1[i] = add1[i % 3];
    add2[0] = 0, add2[3] = x, add2[6] = x + y, add2[9] = 2 * x + y, add2[12] = 2 * x + 2 * y;
    for (int i = 0; i < 5; i++)
        for (int j = 1; j < 3; j++)add2[3 * i + j] = add2[3 * i + j - 1];

    for (int i = 0; i < 15; i++) {
        int addn = 0, addm = 0;
        if (i / 3 % 2 == 0)addn = x; else addn = y;
        if (i % 3 % 2 == 0)addm = x; else addm = y;

        char findchar = '.';
        if (abc[cur][i])findchar = '#';
        if (check(stx + add2[i], sty + add1[i], addn, addm, findchar)) {
            return 0;
        }
    }
    return 1;
}

int shell15_main() {

    int ansa = 0, ansb = 0, ansc = 0;

    for (int l = 0; l < LOOP; l++) {

        ansa = ansb = ansc = 0;
        memset(vis, 0, sizeof(vis));

        for (int i = 2; i <= I2_n - 1; i++)
            for (int j = 2; j <= I2_m - 1; j++)
                if (s[i][j] == '#') {
                    int gg = 0;
                    for (int k = 0; k < 8; k++)
                        if (s[i + dd[k][0]][j + dd[k][1]] == '#') {
                            gg++;
                            break;
                        }
                    if (!gg)s[i][j] = '.';
                }

        for (int i = 2; i <= I2_n - 1; i++)
            for (int j = 2; j <= I2_m - 2; j++)
                if (s[i][j] == '.' && s[i][j + 1] == '#' && !vis[i][j]) {
                    int a = 1, b = 1;
                    for (int k = j + 2; k <= I2_m - 2; k++)
                        if (s[i][k] == '#')a++;
                        else break;
                    for (int k = i + 1; k <= I2_n - 2; k++)
                        if (s[k][j + 1] == '#')b++;
                        else break;

                    int x = 2 * a - b, y = 2 * b - 3 * a;
                    if (x <= 0 || y <= 0)continue;

                    int gg = 0;
                    for (int k = j; k <= j + a + 1; k++)
                        if (s[i - 1][k] == '#' || s[i + b][k] == '#') {
                            gg++;
                            break;
                        }
                    if (gg)continue;
                    for (int k = i; k <= i + b - 1; k++)
                        if (s[k][j] == '#' || s[k][j + a + 1] == '#') {
                            gg++;
                            break;
                        }
                    if (gg)continue;

                    int cur = 0;
                    if (s[i][j + x + 1] == '#' && s[i + x + y][j + x + 1] == '#' && s[i + 2 * (x + y)][j + x + 1] == '.')cur = 1;
                    if (s[i][j + x + 1] == '#' && s[i + x + y][j + x + 1] == '#' && s[i + 2 * (x + y)][j + x + 1] == '#')cur = 2;
                    if (s[i][j + x + 1] == '#' && s[i + x + y][j + x + 1] == '.' && s[i + 2 * (x + y)][j + x + 1] == '#')cur = 3;

                    if (!cur)continue;

                    if (find(i, j + 1, x, y, cur - 1)) {
                        for (int visx = i - 1; visx <= i + b; visx++)
                            for (int visy = j; visy <= j + a + 1; visy++)
                                vis[visx][visy]++;
                        if (cur == 1)ansa++;
                        else if (cur == 2)ansb++;
                        else ansc++;
                    }

                }
    }

    printf("%d %d %d\n", ansa, ansb, ansc);
    return (ansa == 0 && ansb == 0 && ansc == 1) ? 0 : 1;
}

void shell15(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("fireye I2 test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell15_main();
    }else{
        for(i=0;i<LOOPTIMES;i++)
            err += shell15_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("fireye I2 PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("fireye I2 ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("fireye I2: Total Count(SoC count) = 0x%x\n", total_count);
	printf("fireye I2: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}


