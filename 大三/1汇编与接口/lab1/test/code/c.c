#include <stdlib.h>
int query(int array[100] ,int i);
int query_(int *array ,int i);
int query2(int array[10][10],int i,int j);
int query2_(int **array,int i,int j);

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

    int j;
    for(i = 0;i<10;i++){
        for(j = 0;j<10;j++){
            local5[i][j] = i;
            local6[i][j] = i;
            global2[i][j] = i;
        }
    }

    local= query(local4,1);
    local= query_(local3,1);
    local= query_(local4,1);

    local= query2(local5,1,5);
    local= query2_(local6,1,5);
    // local= query2_(local5,1,5);

    return 0;
}

int query(int array[100] ,int i)
{
    return array[i];
}
int query_(int *array ,int i)
{
    return array[i];
}
int query2(int array[10][10],int i,int j)
{
    return array[i][j];
}
int query2_(int **array,int i,int j)
{
    return array[i][j];
}

