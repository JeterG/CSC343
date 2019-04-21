void DotProductUsingPointer(int* Array1, int* Array2, int size){
	int i;
	int result = 0;
	for( i=0; i < size ; i+=1){
		result += (( *(Array1 + i)) * (*(Array2 + i))); 
	}
}
