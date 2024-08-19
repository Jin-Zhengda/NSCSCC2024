#ifndef STDLIB_H
#define STDLIB_H

#include <common.h>

#define NULL ((void *)0)

void *malloc(size_t size);
int rand(void);
void srand(unsigned int seed);

#endif
