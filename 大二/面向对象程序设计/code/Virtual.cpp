#include <iostream>
using namespace std;

class A {
  int i;
  void f() {}
};

class B {
  int i;
  virtual void f() {}
};

int main() {
  cout << sizeof(A) <<endl;
  cout << sizeof(B) <<endl;
  return 0;
}
