#include <stdio.h>

int main()
{
    int local=1;
    int tmp;
    // funt(global,local);

    // change_point(&local);

    // local = change_ret(local);

    tmp = local++;
    tmp = ++local;
    tmp = local +1;

    local = local++;
    local = ++local;
    // global = local;
    local +=1;
    local *=6;

    return local;
}