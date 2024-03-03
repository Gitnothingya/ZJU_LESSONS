#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
using namespace std;

class AAA
{
    public:
     void test1()
    {
        printf("This is AAA: test1()\n");
        test2();
    }
    virtual void test2(){
        printf("This is AAA: test2()\n");
    }
};
class BBB : public AAA
{
    public:
    void test2(){
        printf("This is BBB: test2()\n");
    }
    
};
int main() {
    BBB *p = new BBB;
    p->test1();
	p->test2();
    return 0;
	fstream  f("d.txt");

    
}