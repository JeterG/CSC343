// STATIC.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

//Using 2 Globally Static Variables and using 3 Static Variables
static int a = 1;
static int b = 2;
int main() {

	static int c = 3;
	static int d = 4;
	static int e = 5;
	a = b + c;
	d = a - e;
	return 0;
}
