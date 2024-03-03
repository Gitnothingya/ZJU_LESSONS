#include <stdlib.h>
int query(int array[100] ,int i);
int query2(int array[10][10],int i,int j);

int global[100] = {9,8};
int global2[10][10];
int main()
{
    int local=2,local2=3,local4[100]={1,2},local5[10][10];
    int* local3 =(int*)malloc(sizeof(int)*100);
    int **local6=(int**)malloc(sizeof(int*)*10);
    for(local = 0;local<10;local++){
        local6[local] = (int*)malloc(sizeof(int)*10);
    }

    int i;
    for(i=0;i<100;i++){
        local4[i]=i;
        local3[i]=i;
        global[i]=i;
    }
    local3[50] = 6;

    int j;
    for(i = 0;i<10;i++){
        for(j = 0;j<10;j++){
            local5[i][j] = i;
            local6[i][j] = i;
            global2[i][j] = i;
        }
    }
    return 0;
}

int query(int array[100] ,int i)
{
    return array[i];
}
int query2(int array[10][10],int i,int j)
{
    return array[i][j];
}

