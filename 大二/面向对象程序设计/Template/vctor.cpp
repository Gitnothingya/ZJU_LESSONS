#include <iostream>
using namespace std;

class A {
  int i;
public:
	A():i(10) { f(); }
	virtual void f() { i+=5; cout << "A::f() i=" <<i <<endl; }	
};

class B : public A {
  int i;
public:
	B():i(20) { f(); }
	void f() {
    cout << "inside B::f()" <<endl << "\t"; 
    A::f(); 
    i+=20; 
    cout << "\tB::f() i="<< i << endl;
    cout << "end of B::f()" <<endl; 
  }
};

int main()
{
  A* p = new B();
  p->f();
   
  return 0;
}
