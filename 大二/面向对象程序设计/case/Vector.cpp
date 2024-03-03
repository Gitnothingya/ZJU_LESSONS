#include "Vector.h"
#include <iostream>
using namespace std;

int main()
{
  Vector v(100);
  v[1] = 26;
  v[2] = v[1] *2;
  cout << v[2];
  
  return 0;
}
