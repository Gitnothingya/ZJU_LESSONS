#include <iostream>
using namespace std;

class Test {
public:
    Test(const char *name)
    {
        this->name = name;
        printf("%s: 执行了构造函数, 我的地址是 %p\n", name, this);
    }

    Test(const Test &obj)
    {
        this->name = obj.name;
        printf("%s: 执行了拷贝构造函数，我的地址是 %p，拷贝来自%s %p\n",
               name.c_str(), this, obj.name.c_str(), &obj);
    }

    ~Test()
    {
        printf("%s: 执行了析构函数, 我的地址是 %p\n", name.c_str(), this);
    }

public:
    string name;
};

Test fun()
{
    Test t("我是在fun函数中创建的");
    printf("in fun: %p\n", &t);
    return t;
}

void test1()
{
    // 这里t1对象就是fun函数里面创建的？
    cout << "fun start.." << endl;
    Test t1 = fun();
    cout << "fun end.." << endl;
    t1.name = "我是在test函数中被创建的";
    printf("我是在test函数中被创建的对象，我的地址是: %p\n", &t1);
}

int main()
{
    cout << "--------test1 start ...-----" << endl;
    test1();
    cout << "--------test1 end ...-----" << endl;
    return 0;
}
