// CODEDWITHINTRINSICS.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <xmmintrin.h>
void add(float *a, float *b, float*c) {
	__m128 t0, t1;
	t0 = _mm_load_ps(a);
	t1 = _mm_load_ps(b);
	t0 = _mm_add_ps(t0, t1);
	_mm_store_ps(c, t0);
}
int main()
{
	float a[12], b[12], c[12];
	for (int i = 0;i < 12;i++) {
		a[i] = i;
		b[i] = i;
		c[i] = i;
	}
	add(a, b, c);
    return 0;
}

