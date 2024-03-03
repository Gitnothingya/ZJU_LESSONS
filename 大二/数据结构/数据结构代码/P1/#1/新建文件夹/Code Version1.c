///========================///
/// this is O(n^6) version///
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
int CalMat(int a[],int i,int j,int m,int n);//get the sum of (i,j) to (m,n) in a ,i<m,j<n
void Get_Max(int a[]);//get the MaxSum
int main(){
    scanf("%d",&N);
    int a[N*N];
    memset(a,0,sizeof(int)*N*N);
    int k; 
    for(k=0;k<N*N;k++){
        scanf("%d",&a[k]);
    }
    ////At this point, N*N matrix input is complete, (i,j) corresponds to a[(j-1)*N+i-1]

    start = clock();
    for (k=0;k<1;k++){  /// Repeat Call the Func by k times
        MaxSum = 0;//Reset the MaxSum
        Get_Max(a);
    }
    printf("The Max is %d\n",MaxSum);

    stop = clock();
    duration = ((double)(stop-start))/CLK_TCK;
    printf("The ticks is %d\n",stop-start);
    printf("The total time is %f\n",duration);
    printf("The duration time is %f",duration/10000);
    return 0;
}
int CalMat(int a[],int i,int j,int m,int n){
    int sum = 0;
    int y;
    for (y=j;y<=n;y++){
    	int x;
        for (x=i;x<=m;x++){
            sum = sum+a[(y-1)*N+x-1];
        }
    }
    return sum;
}
void Get_Max(int a[]){
	int i,j,m,n;
    for (i=1;i<=N;i++){
        for (j=1;j<=N;j++){
            for (m=i;m<=N;m++){
                for(n=i;n<=N;n++){
                    NowSum = CalMat(a,i,j,m,n);
                    if (NowSum>=MaxSum){MaxSum=NowSum;NowSum=0;}
                }
            }
        }
    }
}
