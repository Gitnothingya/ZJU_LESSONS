#include<iostream>
using namespace std;
class A
{
public:
    static void f(double){cout<<"f(double)"<<endl;}
    void f(int){cout<<"f(int)"<<endl;}
};
int main()
{
    const A a;
    a.f(1);
    a.f((int)3);
    // A::f(3.0);
}