// USING_ARRAYS.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
int main() {
	static int h = 25;
	static int A[100];
	A[8] = 200;
	A[12] = h + A[8];
	return 0;
}
