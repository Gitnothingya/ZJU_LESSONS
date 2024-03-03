/*This program is used to generate the random matrics to test
 *just need to input a integer N,then it will print a random N*N matric
 *if you want to generate some special matric,just change some lines of the program
 */
#include<stdio.h>
#include<time.h>
#include<stdlib.h>
int main()
{
	int i,j;
	int N;
	scanf("%d",&N);
	int A[N][N];
	srand(clock());					//Reset the random number seed
	for(i=0;i<N;i++){
		for(j=0;j<N;j++){
			A[i][j]=rand()%100;		//generate the random number
			if(rand()%2)A[i][j]=-A[i][j];//the random number can only be positive,the symbol
		}                                //need also be random.
	}
	for(i=0;i<N;i++){
		for(j=0;j<N;j++){
			printf("%3d ",A[i][j]);
		}
		printf("\n");
	}
}






