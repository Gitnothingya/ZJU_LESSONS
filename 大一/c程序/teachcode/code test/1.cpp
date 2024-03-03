#include <iostream>
using namespace std;

class Test {
public:
    Test(const char *name)
    {
        this->name = name;
        printf("%s: ִ���˹��캯��, �ҵĵ�ַ�� %p\n", name, this);
    }

    Test(const Test &obj)
    {
        this->name = obj.name;
        printf("%s: ִ���˿������캯�����ҵĵ�ַ�� %p����������%s %p\n",
               name.c_str(), this, obj.name.c_str(), &obj);
    }

    ~Test()
    {
        printf("%s: ִ������������, �ҵĵ�ַ�� %p\n", name.c_str(), this);
    }

public:
    string name;
};

Test fun()
{
    Test t("������fun�����д�����");
    printf("in fun: %p\n", &t);
    return t;
}

void test1()
{
    // ����t1�������fun�������洴���ģ�
    cout << "fun start.." << endl;
    Test t1 = fun();
    cout << "fun end.." << endl;
    t1.name = "������test�����б�������";
    printf("������test�����б������Ķ����ҵĵ�ַ��: %p\n", &t1);
}

int main()
{
    cout << "--------test1 start ...-----" << endl;
    test1();
    cout << "--------test1 end ...-----" << endl;
    return 0;
}
