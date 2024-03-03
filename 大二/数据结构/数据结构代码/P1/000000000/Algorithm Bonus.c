//this file is the O(N^3) version

#include<stdio.h>
#include<stdlib.h>
#include<time.h>

void init(int N,int A[]);//Initialize an array with size of N
int maxsubmatricsum(int N,int A[N][N]);

int maxsubmatricsum(int N,int A[N][N])//the function to be test ( O(N^3) version )
{
	int i,j,k;
	int Max=0; //the maximum is 0 at first
	int temp;
	for(i=0;i<N;i++){ //the i is used to determine the first raw
		int ttemp[N];
		init(N,ttemp);
		
		for(j=i;j<N;j++){ //the j is used to determine the second raw
			temp=0;
			for(k=0;k<N;k++){ //the k is used to determine the column to be calculate
				ttemp[k]+=A[j][k];
				temp+=ttemp[k];
				if(temp>Max)Max=temp; // update the maximum
				else if(temp<0)temp=0; //if the sum of the front submatric is negative,reset the sum
			}
			
		}
		
	}
	
	return Max;
	
}
void init(int N,int A[])
{
	int i;
	for(i=0;i<N;i++){
		A[i]=0;
	}
}

clock_t start,stop;
double duration;

//first version,this version is for testing or some special example you want to input yourself 
int main()
{
	int N;
	scanf("%d",&N); //input the size of the matric 
	int matric[N][N];
	int i,j,k;
	for (i=0;i<N;i++){
		for(j=0;j<N;j++){
			scanf("%d",&matric[i][j]); //you could input the data you want
		}
	}
	
	int result;
	start=clock(); //the starting time
	for(k=0;k<100;k++){ //Increase program running time,you can change the number of iterations
		result=maxsubmatricsum(N,matric);
	}
	stop=clock(); //the ending time
	duration=((double)(stop-start))/CLK_TCK; //the time we have used
	printf("the max is %d.\nthe time of it is %lf s.",result,duration); //print the result
	
	return 0;
}

/*
//second version, this is for the final check.
int main()
{
	int N;
	scanf("%d",&N);
	int matric[N][N];
	int i,j,k;
	srand(clock());					//Reset the random number seed
	for(i=0;i<N;i++){
		for(j=0;j<N;j++){
			matric[i][j]=rand()%100;		//generate the random number
			if(rand()%2)matric[i][j]=-matric[i][j];
			//the random number can only be positive,
			//the symbol need also be random.
		}                                		   
	}
	
	for(i=0;i<N;i++){
		for(j=0;j<N;j++){
			printf("%3d ",matric[i][j]); //output the random matric
			//if you don't want to see it,you could delete these lines
		}
		printf("\n");
	}
	
	int result;
	start=clock();
	for(k=0;k<100;k++){ // Increase program running time,you can change the number of iterations
		result=maxsubmatricsum(N,matric);
	}
	stop=clock();
	duration=((double)(stop-start))/CLK_TCK;
	printf("the max is %d.\nthe time of it is %lf s.",result,duration); //print the result
	
	return 0;
}
*/
