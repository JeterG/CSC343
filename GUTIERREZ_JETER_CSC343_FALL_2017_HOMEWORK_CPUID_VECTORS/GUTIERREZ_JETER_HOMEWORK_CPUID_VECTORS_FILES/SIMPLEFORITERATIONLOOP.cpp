// SIMPLEFORITERATIONLOOP.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
void add(float *a, float *b, float *c)
{
	int i;
	for (i = 0;i < 4;i++) {
		c[i] = a[i] + b[i];
	}
}

int main()
{
	float a[12];
	for (int i = 0;i < 12;i++) {
		a[i] = i;
	}
	float b[12];
	for (int i = 0;i < 12;i++) {
		b[i] = i;
	}
	float c[12];
	for (int i = 0;i < 12;i++) {
		c[i] = i;
	}
	add(a, b, c);
    return 0;
}

