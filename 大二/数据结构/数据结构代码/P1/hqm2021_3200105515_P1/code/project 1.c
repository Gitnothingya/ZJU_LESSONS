/*这个程序用于测试本次项目所写的三种算法 
 *请依照提示输入，尽可能避免非法输入 
 */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

void init(int N,int A[]);//Initialize an array with size of N
int maxsubmatricsum_1(int N,int A[N][N]);//the function to be test ( O(N^6) version )
int maxsubmatricsum_2(int N,int A[N][N]);//the function to be test ( O(N^4) version )
int maxsubmatricsum_3(int N,int A[N][N]);//the function to be test ( O(N^3) version )

clock_t start,stop;
double duration;

//first version,this version is for testing or some special example you want to input yourself 
int main()
{
	int N;
	int i,j,k;
	int (*maxsubmatricsum) (int N,int A[N][N]);
	while(1){
		printf("请输入矩阵大小N,如果想退出程序，请输入任一负数: "); 
		scanf("%d",&N); //input the size of the matric 
		if(N<0)return 0;//if N<0,terminate the program
		int matric[N][N];
		printf("是否想自己输入数据(1-手动输入;0-自动生成)："); 
		scanf("%d",&i);
		if(i==1){
			printf("请输入矩阵数据：\n");
			for (i=0;i<N;i++){
				for(j=0;j<N;j++){
					scanf("%d",&matric[i][j]); //you could input the data you want
				}
			}
		}
		else if(i==0){
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
					printf("%3d ",matric[i][j]);
				}
				printf("\n");
			}
		}
		else {
			printf("错误输入，请从头开始\n");
			continue;
		}
		int ver;
		printf("输入想测试的算法版本，1-O(N^6),2-O(N^4),3-O(N^3)： ");
		scanf("%d",&ver);
		
		switch(ver)//determine the function
		{
			case 1:maxsubmatricsum=maxsubmatricsum_1;
				break;
			case 2:maxsubmatricsum=maxsubmatricsum_2;
				break;
			case 3:maxsubmatricsum=maxsubmatricsum_3;
				break;
			default:printf("错误输入，请从头开始\n");
				continue;
				break;
		}
		int K;
		printf("请输入迭代次数： ");
		scanf("%d",&K);
	
		int result;
		start=clock(); //the starting time
		for(k=0;k<K;k++){ //Increase program running time,you can change the number of iterations
			result=maxsubmatricsum(N,matric);
			}
		stop=clock(); //the ending time
		duration=((double)(stop-start))/CLK_TCK; //the time we have used
		printf("the max is %d.\nthe time of it is %lf s.\n",result,duration); //print the result
	} 
	return 0;
}


int maxsubmatricsum_1(int N,int A[N][N])
{
	int i,j,m,n,p,q;
	int Max=0;		//the maximum is 0 at first
	int temp;
	for(i=0;i<N;i++){ 
		for(j=0;j<N;j++){ //the i,j is used to determine the first number
			
			for(m=i;m<N;m++){
				for(n=j;n<N;n++){ //the m,n is used to determine the second number
					
					temp=0; //the sum of one submatric,at first ,it is 0.
					for(p=i;p<=m;p++){
						for(q=j;q<=n;q++){ //the p,q is used to determine the number to be add to the sum
							temp+=A[p][q];
						}
					} 
					if(temp>Max)Max=temp; // update the maximum
					
				} 
			}
			
		}
	}
	
	return Max;
}

int maxsubmatricsum_2(int N,int A[N][N])
{
	int i,j,m,n;
	int Max=0; //the maximum is 0 at first
	int temp;
	for(i=0;i<N;i++){
		for(j=0;j<N;j++){ //the i,j is used to determine the first number
			int ttemp[N]; //store the sum of elements which are in the same column
			init(N,ttemp);
			for(m=i;m<N;m++){
				temp=0;  //the sum of one submatric,when the second number is at a new row,it is 0.
				for(n=j;n<N;n++){ //the m,n is used to determine the second number
					ttemp[n]+=A[m][n];
					temp+=ttemp[n];

					if(temp>Max)Max=temp; // update the maximum
					
				}
			}
			
		}
	}
	
	
	return Max;
}

int maxsubmatricsum_3(int N,int A[N][N])//the function to be test ( O(N^3) version )
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
