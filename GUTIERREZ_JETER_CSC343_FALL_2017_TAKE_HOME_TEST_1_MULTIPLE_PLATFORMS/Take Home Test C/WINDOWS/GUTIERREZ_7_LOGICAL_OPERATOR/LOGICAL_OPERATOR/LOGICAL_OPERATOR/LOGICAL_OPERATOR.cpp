// LOGICAL_OPERATOR.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
int main() {
	int s0 = 9;
	int t1 = 0x3c00;
	int t2 = 0xdc0;
	int t3 = 0;

	t3 = s0 << 4;
	int t0 = 0;

	t0 = t1 & t2;

	t0 = t1 | t2;

	t0 = ~t1;
	return 0;
}
