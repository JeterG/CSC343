// IF_THEN_ELSE.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

#include <stdio.h>
int main() {
	int Local_Variable = 5;
	if (Local_Variable < 20) {
		printf("Local_Variable is less than 20\n");
	}
	else {
		printf("Local_Variable is not less than 20\n");
	}
	printf("Local_Variable's value is : %d\n", Local_Variable);
	return 0;
}
