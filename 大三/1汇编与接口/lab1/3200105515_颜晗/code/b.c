/**
 * 函数参数传递
*/
// int global = 1;
// int global2;
// int* global3;
int f(int a){
    return a;
}
int calcu(int a,int b,int* mul)
{
    int res = f(a)+b+*mul;
    return res;
}
int main()
{
    static int si=1;
    static int ss = 0x8888;

    int local=2,local2=3,local4 = 4;
    int* local3 =&local;

    calcu(local,local2,local3);
    return 0;
}