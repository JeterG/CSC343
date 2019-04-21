
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdint.h>
//#include <iostream>
using namespace std;

//void DotProductUsingIndex(int Array1[],int Array2[], int size);
void DotProductUsingPointer(int *Array1,int *Array2, int size);
#define SIZE 10000000
static int FIRSTARRAY[SIZE];
static int SECONDARRAY[SIZE];
main(int argc, char **argv){
	uint64_t sum = 0;
for(int i=0;i<SIZE;i++){
	FIRSTARRAY[i]=7;
	SECONDARRAY[i]=5;
}
	for(int i = 0; i < 10; i++){
	timespec start, end;
	clock_gettime(CLOCK_MONOTONIC, &start);
//	DotProductUsingIndex(Array1,Array2, SIZE);
	DotProductUsingPointer(Array1,Array2, SIZE);
	clock_gettime(CLOCK_MONOTONIC,&end);
	sum += (end.tv_nsec - start.tv_nsec);
	}
	printf("size = %i, average is %f ms \n", SIZE,(double)(sum/10.0));
	return 0;
}
