#include <iostream>
using namespace std;

class A {
public:
	int i;
};

int operator+(const A& a,int b) {return a.i-b;}

int main()
{
  int i=5,j=4;
A a;
a.i = 10;
  cout << a+j;
  
  return 0;  
}
