/* ========================================================================== */
/*                                                                            */
/*   Filename.c                                                               */
/*   (c) 2001 Author                                                          */
/*                                                                            */
/*   Description                                                              */
/*                                                                            */
/* ========================================================================== */
#include <iostream>
using namespace std;

void f(short i) { cout << "f(short)" <<endl; }
void f(double d) { cout << "f(double)" <<endl; }

int main()
{
  f('a');
  f(2);
  f(2L);
  f(3.2);

  return 0;
}
