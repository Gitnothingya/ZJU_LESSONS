#include <stdio.h>
int global = 1;
int global2;
int* global3;

int funt_ret(int funti,int i,int p,int g,int r,int b)
{
    return funti+1;
}
void funt_point(int* funti)
{
    (*funti)++;
}

int main()
{
    static int si=1;
    static int ss = 0x8888;
    int local=2;
    local = 6;

    local = funt_ret(local,local,local,local,local,local);
    printf("%d\n",local);

    funt_point(&local);
    printf("%d\n",local);

    return 0;
}