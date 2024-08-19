int C0_n = 2, A = 50, C0_m = 2, B = 50;
char C0_data0[50][3] = {"of", "to", "in", "is", "it", "on", "be", "as", "at", "by", "he", "or", "an", "we", "up", "so", "if", "do", "no", "me", "my", "go", "er", "us", "am", "oh", "de", "mm", "et", "al", "la", "ah", "ha", "eh", "ad", "ya", "en", "re", "ye", "ex", "yo", "ma", "na", "ta", "ed", "sh", "ho", "um", "em", "un"};
char C0_data1[50][3] = {"lo", "wo", "hi", "li", "ti", "ne", "ba", "pa", "si", "id", "mi", "mo", "fe", "el", "ox", "ab", "ar", "es", "ow", "pe", "bo", "oi", "op", "fa", "uh", "bi", "pi", "mu", "hm", "ay", "xi", "ki", "nu", "os", "aa", "ai", "ag", "ae", "ut", "aw", "oy", "ka", "ax", "od", "qi", "om", "jo", "za", "ef", "oe"};

#define LOOP 2

// int C0_n = ..., A = ..., C0_m = ..., B = ...;
// char C0_data0[A][C0_n + 1] = ...;
// char C0_data1[B][C0_m + 1] = ...;

// #define LOOP ...

#include <stdio.h>
#include <time.h>
#include <machine.h>

#define N 100

int mpN[6][6], mpM[6][6];
int ans;

struct Trie {
    int ch[N][26];
    int tot;
} t[2] = {{{1}, 0}, {{1}, 0}};

void insert(struct Trie *t, char *s) {
    int x = 0;
    for (int i = 0; s[i] != '\0'; i++) {
        if (!t->ch[x][s[i] - 'a'])
            t->ch[x][s[i] - 'a'] = ++t->tot;
        x = t->ch[x][s[i] - 'a'];
    }
}

void dfs(int x, int y) {
    if (x == C0_n + 1) {
        ++ans;
        return;
    }
    for (int i = 0; i < 26; i++) {
        int lastN = mpN[x - 1][y], lastM = mpM[x][y - 1];
        int nx = t[0].ch[lastN][i], ny = t[1].ch[lastM][i];
        if (!(nx && ny)) continue;
        mpN[x][y] = nx;
        mpM[x][y] = ny;

        nx = x, ny = y + 1;
        if (ny > C0_m) ++nx, ny = 1;
        dfs(nx, ny);
    }
}

void run() {
    for (int i = 0; i < A; i++) {
        insert(&t[0], C0_data0[i]);
    }
    for (int i = 0; i < B; i++) {
        insert(&t[1], C0_data1[i]);
    }
    for (int i = 0; i < LOOP; i++) {
        ans = 0;
        dfs(1, 1);
    }
}

int shell13_main() {
    t[0].ch[0][0] = 0;
    t[1].ch[0][0] = 0;

    run();
    printf("%d\n", ans);

    return (ans == 62) ? 0 : 1;
}

void shell13(void)
{
    unsigned long start_count = 0;
    unsigned long stop_count = 0;
    unsigned long total_count = 0;

    unsigned long start_count_my = 0;
    unsigned long stop_count_my  = 0;
    unsigned long total_count_my = 0;

    int err, i;

    err = 0;
    printf("fireye C0 test begin.\n");
    start_count = get_count();
    start_count_my = get_count_my();
    if(SIMU_FLAG){
        err = shell13_main();
    }else{
        for(i=0;i<LOOPTIMES_fireye_C0;i++)
            err += shell13_main();
    }
    stop_count_my  = get_count_my();
    stop_count     = get_count();
    total_count    = stop_count - start_count;
    total_count_my = stop_count_my - start_count_my;

	if(err == 0){
        printf("fireye C0 PASS!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 1;  
		*((int *)LED_ADDR)     = 0xffff;  
	}else{
        printf("fireye C0 ERROE!!!\n");
		*((int *)LED_RG1_ADDR) = 1;  
		*((int *)LED_RG0_ADDR) = 2;  
		*((int *)LED_ADDR)     = 0;
	}

    SOC_NUM = total_count_my;  
    *((volatile unsigned *)CONFREG_CR0) = total_count_my;  
    *((volatile unsigned *)CONFREG_CR1) = total_count;  
	printf("fireye C0: Total Count(SoC count) = 0x%x\n", total_count);
	printf("fireye C0: Total Count(CPU count) = 0x%x\n", total_count_my);

    return;
}