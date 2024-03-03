///========================///
/// this is O(n^4) version///
///=======================///

#include <stdio.h>
#include <math.h>
#include <time.h>
#include <string.h>
clock_t start,stop;
double duration;

int MaxSum = 0;
int NowSum = 0;
int N;
int CalMat(int a[],int i,int j,int m,int n);//get the sum of (i,j) to (m,n) in a,i<m,j<n
void Get_Max(int a[]);//get the MaxSum
int main(){
    scanf("%d",&N);
    int a[N*N];
    memset(a,0,sizeof(int)*N*N);
    for(int k=0;k<N*N;k++){
        scanf("%d",&a[k]);
    }
   ////At this point, N*N matrix input is complete, (i,j) corresponds to a[(j-1)*N+i-1]
    start = clock();
    for (int k=0;k<1;k++){  /// Repeat Call the Func by k times
        MaxSum = 0;//Reset
        Get_Max(a);
    }
    printf("The Max is %d\n",MaxSum);

    stop = clock();
    duration = ((double)(stop-start))/CLK_TCK;
    printf("The ticks is %d\n",stop-start);
    printf("The total time is %f\n",duration);
    printf("The duration time is %f",duration/1);
}

void Get_Max(int a[]){
    int b[N]; 
    int Max = 0;
    for(int i=1;i<=N;i++){
        memset(b,0,sizeof(int)*N);
        for (int j=i;j<=N;j++){
            int sum = 0;//for every i,j ,we calculate the sum of a[i,k] to a[j,k] and store it in b[k]
            for  (int k=1;k<=N;k++){
                b[k-1]=b[k-1]+a[(k-1)*N+j-1];
                sum = sum + b[k-1];
                if (sum<0){sum = 0;}//if the sum<0,that means the 0 is bigger
                if (sum>Max){Max=sum;}//else the Max is sum
            }
        }
    }
    if(Max>MaxSum){MaxSum = Max;}
}
