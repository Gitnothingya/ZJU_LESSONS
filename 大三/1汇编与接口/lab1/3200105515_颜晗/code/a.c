/**
 * 探究全局变量，局部变量，静态变量的存储与简单赋值初始化。
*/
int global = 1;
int global2;
int* global3;

int main()
{
    static int si=1;
    static int ss = 0x8888;

    int local=2,local2=3;
    int* local3,s,d,f,g,h;
    char sl[8] = "123456";
    

    local = si;
    local = ss;
    // local3 = local;

    return 0;
}