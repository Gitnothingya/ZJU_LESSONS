//考试不会考
#include<iostream>
using namespace std;
class A
{
public:
    A(int ii=0):m_i(ii){}
    void display() const
    {
        cout<<m_i<<endl;
    }
private:
    int m_i;
    friend int main();
};
void CreateA(A* pa)
{
    pa=new A(1);
}
A* CreateA()
{
    A a(2);
    return &a;
}
void CreateAOnStack()
{
    A a(3);
}
int main()
{
    A a;
    A* pa=&a;
    pa->display();cout<<"1111"<<endl;
    CreateA(pa);
    pa->display();cout<<"2222"<<endl;

    A* a2=CreateA();
    cout<<a2->m_i<<endl;cout<<"3333"<<endl;
    CreateAOnStack();
    cout<<a2->m_i<<endl;cout<<"4444"<<endl;
}