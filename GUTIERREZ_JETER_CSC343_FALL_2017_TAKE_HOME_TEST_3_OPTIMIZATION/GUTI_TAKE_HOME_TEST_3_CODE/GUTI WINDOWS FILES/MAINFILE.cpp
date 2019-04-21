#include <tchar.h>
#include <windows.h>
#include <iostream>

void DotProductIndex(int[], int[], int n);

const int n = 10000000;
static int x[n];
static int y[n];

using namespace std;

int main()
{
	__int64 ctr1 = 0, ctr2 = 0, freq = 0;
	int acc = 0, i = 0;
	double time = 0.0;
	//int sum;
	int j;
	for (i = 0; i < 100; i++)
	{
		for (j = 0; j < n; j++) {
			x[j] = 2;
			y[j] = 3;
		}
		// Start timing the code.
		if (QueryPerformanceCounter((LARGE_INTEGER *)&ctr1) != 0)
		{
			// Code segment is being timed.
			DotProductIndex(x, y, n);

			// Finish timing the code.
			QueryPerformanceCounter((LARGE_INTEGER *)&ctr2);

			cout << "Start Value: {0}" << ctr1 << endl;
			cout << "End Value: {0}" << ctr2 << endl;

			QueryPerformanceFrequency((LARGE_INTEGER *)&freq);
			time += (((ctr2 - ctr1)*1.0 / freq));

			//old version code: Console::WriteLine(S"QueryPerformanceCounter minimum resolution: 1/{0} Seconds.", freq.ToString());
			cout << "QueryPerformanceCounter minimum resolution: 1/{0} Seconds." << freq << endl;
			cout << n << " Increment time: {0} seconds." << (ctr2 - ctr1) * 1.0 / freq << endl; // changed size to n


			cout << "End Value - Start Value = " << ctr2 - ctr1 << endl;

		}
		else
		{
			DWORD dwError = GetLastError();
			//old version code:  Console::WriteLine(S"Error value = {0}", dwError.ToString());
			cout << "Error value = {0}" << dwError << endl;
		}
	}
	time = time / 100;
	// Make the console window wait.
	cout << "Average time is: " << time << endl;
	system("PAUSE");

	return 0;
}
