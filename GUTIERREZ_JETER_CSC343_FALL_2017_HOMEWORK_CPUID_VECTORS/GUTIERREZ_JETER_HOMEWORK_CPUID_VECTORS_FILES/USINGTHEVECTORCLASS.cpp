// USINGTHEVECTORCLASS.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <fvec.h>
void add(float*a, float*b, float*c) {
	F32vec4 *av = (F32vec4 *)a;
	F32vec4 *bv = (F32vec4 *)b;
	F32vec4 *cv = (F32vec4 *)c;
	*cv = *av + *bv;
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

