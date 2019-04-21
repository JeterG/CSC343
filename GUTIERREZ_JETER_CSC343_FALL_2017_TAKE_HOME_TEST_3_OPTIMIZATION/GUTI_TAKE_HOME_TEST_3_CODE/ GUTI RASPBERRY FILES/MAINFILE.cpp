
#include <stdio.h>
#include <time.h>
#include <stdlib.h>
#include <stdint.h>
//#include <iostream>
using namespace std;


/*You must uncomment either index function or pointer function
 in order to calculate the timing */
//void DotProductUsingIndex(int Array1[],int Array2[], int size);
void DotProductUsingPointer(int *Array1,int *Array2, int size);



//Change your size here, so you would have to change it anyway in the code 
//Size = 10, 100, 1000, 10000, 100000, 1000000, 10000000
#define SIZE 10



static int Array1[SIZE];
static int Array2[SIZE];
main(int argc, char **argv){
        uint64_t sum = 0.0;
for (int i=0;i<SIZE;i++){Array1[i]=10;Array2[i]=15;}
	for(int i = 0; i < 10; i++){
	timespec start, end;
	clock_gettime(CLOCK_MONOTONIC, &start);

	//Here as well, you need to uncomment one or the other
//	DotProductUsingIndex(Array1,Array2, SIZE);
	DotProductUsingPointer(Array1,Array2, SIZE);


	clock_gettime(CLOCK_MONOTONIC,&end);
	sum += (end.tv_nsec - start.tv_nsec);

	}
	printf("size = %i, average is %f ms \n", SIZE,(double)(sum/10.0));
	return 0;
}
