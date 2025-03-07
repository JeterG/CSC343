// SIMDEXTENSIONS.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
void add(float *a, float*b, float*c) {
	__asm {
		mov eax,a
		mov edx,b
		mov ecx,c
		movaps xmm0, XMMWORD PTR[eax]
		addps xmm0, XMMWORD PTR [edx]
		movaps XMMWORD PTR [ecx], xmm0
	}
}

int main()
{
	float a[12];
	for (int i = 0;i < 12;i++) {
		a[i] = i+1;
	}
	float b[12];
	for (int i = 0;i < 12;i++) {
		b[i] = i+1;
	}
	float c[12];
	for (int i = 0;i < 12;i++) {
		c[i] = i+1;
	}
	add(a, b, c);
    return 0;
}

