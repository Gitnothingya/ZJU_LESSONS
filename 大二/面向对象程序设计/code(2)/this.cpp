#include <iostream>
using namespace std;

struct Stu {
  int i;
  void f();
};

void Stu::f()
{
  cout << "Inside Stu::f(), this=" << this <<endl;
}

int main()
{
  Stu stu;
  
  cout << "Inside main(),   &stu=" << &stu <<endl;
  
  stu.f(); 

  return 0;
}
