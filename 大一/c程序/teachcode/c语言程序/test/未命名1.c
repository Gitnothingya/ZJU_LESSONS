#include<stdio.h>
#include<math.h>
int isprime (int n);

int main()
{
    int N;
    scanf("%d",&N);
    int i,front=3,n=0;
    for(i=5;i<=N;i++){
        if(isprime(i)){
            if(i-front==2)n++;
            front=i;
        }
    }
    printf("%d",n);
}


int isprime(int n)
{
    int i;
    if(n<4)return 1;
    for(i=2;i<=sqrt(n);i++)
    {
        if(n%i==0)return 0;
    }
    return 1;
}
