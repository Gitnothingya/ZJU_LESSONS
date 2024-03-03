// use_new.cpp _ using the new operator
#include <iostream>
using namespace std;
int main()
{
	int i =0;
    int * pt = new int;         // allocate space for an int
    *pt = 1001;                 // store a value there

    cout << "int ";
	for ( int i=0; i<10; i++)
		;
    cout << "value = " << *pt << ": location = " << pt << "\n";

    double * pd = new double;   // allocate space for a double
    *pd = 10000001.0;           // store a double there

    cout << "double ";
    cout << "value = " << *pd << ": location = " << pd << "\n";
	cout << "location for int:" << &i <<endl;
    cout << "size of pt = " << sizeof pt;
    cout << ": size of *pt = " << sizeof *pt << "\n";
    cout << "size of pd = " << sizeof pd;
    cout << ": size of *pd = " << sizeof *pd << "\n";
    
    delete pd;
    delete pt;
    
    return 0;
}

