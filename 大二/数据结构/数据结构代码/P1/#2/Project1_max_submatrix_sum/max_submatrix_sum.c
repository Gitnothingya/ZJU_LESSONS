#include <stdio.h>
#include <stdlib.h>
#include <time.h>

clock_t start,stop;     // record the ticks at the beginning and the end
double duration,once;   // record the total time and time of the functions 
int ticks;              // records the number of ticks
const int N=10;         // the size of the matrices

int MSS_N6(const int A[][N],int N)  // the O(N^6) Algorithm is the simplest one
{                                   // which computes every possible submatrix sum and find the maximum number.
    int ThisSum,MaxSum,x,y,i,j,m,n;

    MaxSum = 0;                                 // initialize the MaxSum
    for(x=0;x<N;x++){
        for(y=0;y<N;y++){                       // x and y are used to locate the beginning of the submatrix
            for(i=x;i<N;i++){
                for(j=y;j<N;j++){               // i and j are used to locate the end of the submatrix
                    ThisSum = 0;
                    for(m=x;m<=i;m++){          // m and n are used to locate every element of the submatrix
                        for(n=y;n<=j;n++){
                            ThisSum += A[m][n]; // compute the submatrix sum from (x,y) to (i,j)
                        }
                    }
                    if(ThisSum > MaxSum)
                        MaxSum = ThisSum;       //compare all the sums to find the max sum
                }
            }
        }
    }

    return MaxSum;
}


int MSS_N4(const int A[][N],int N)  // use the prefix sum to obtain a O(N^4) Algorithm
{                                   // T(N) = O(N^2) + O(N^4) = O(N^4)
    int MaxSum = 0;
    int ThisSum;

    int sub[N][N];                      // First save the submatrix sum from (0,0) to (i,j), which is called prefix sum.
    for(int i=0;i<N;i++){               // If i or j == 0, i-1 or j-1 are not available as array subscripts,
        for(int j=0;j<N;j++){           // so we should change the way to calculate the prefix sum.
            if(!i && !j)
                sub[i][j] = A[i][j];    // When i == 0 and j == 0, the prefix sum equals the first element A[0][0]
            else if(!i && j)
                sub[i][j] = sub[i][j-1] + A[i][j];
            else if(i && !j)
                sub[i][j] = sub[i-1][j] + A[i][j];
            else
                sub[i][j] = sub[i-1][j] + sub[i][j-1] - sub[i-1][j-1] + A[i][j];    
            
            // Use the including excluding principle to calculate prefix sums on usual occasions.
        }
    }

    for(int x=0;x<N;x++){
        for(int y=0;y<N;y++){                   // x and y are used to locate the beginning of the submatrix
            ThisSum = 0;
            for(int i=x;i<N;i++){               // i and j are used to locate the end of the submatrix
                for(int j=y;j<N;j++){
                    if(!x && !y)                // If x or y == 0, x-1 or y-1 are not available as array subscripts.
                        ThisSum = sub[i][j];    // When x == 0 and y == 0, the submatrix sum equals the prefix sum.
                    else if(!x && y)
                        ThisSum = sub[i][j] - sub[i][y-1];
                    else if(x && !y)
                        ThisSum = sub[i][j] - sub[x-1][j];
                    else
                        ThisSum = sub[i][j] - sub[x-1][j] - sub[i][y-1] + sub[x-1][y-1];
                                                // Use the including excluding principle to calculate submatrix sums with prefix sums.
                    if(ThisSum > MaxSum)
                        MaxSum = ThisSum;
                }
            }
        }
    }

    return MaxSum;
}


int MSS_N3(const int A[][N],int N)  // Bonus: a better algorithm
{                                   // T(N) = O(N^2) + O(N^3) = O(N^3)
    int MaxSum = 0;                 // compute the sums of columns and rows separately
    int ThisSum;
                                    // First, calculate the sums of columns.
    int subx[N][N];                 // The array subx[][] records the sum from A[0][j] to A[i][j].
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){       // If i == 0, i-1 is not available as array subscripts.
            if(i)
                subx[i][j] = A[i][j] + subx[i-1][j];
            else
                subx[i][j] = A[i][j];
        }
    }

    for(int i=0;i<N;i++){           // Compare all the ColumnSums in the ROW, using an algorithm similar to Algorithm 4 in the book.
        for(int j=i;j<N;j++){       // i and j locate the beginning and the end of ColumnSum.
            ThisSum = 0;            // reset ThisSum every loop
            for(int k=0;k<N;k++){   // k locates the horizontal ordinate of the matrix.
                int ColumnSum;      // ColumnSum records the sums from A[i][k] to A[j][k].
                if(i)
                    ColumnSum = subx[j][k] - subx[i-1][k];
                else
                    ColumnSum = subx[j][k]; // in case i == 0

                ThisSum += ColumnSum;   // When ThisSum < 0, reset ThisSum.(Similar to Algorithm 4 in Section 2.4.4)
                if(ThisSum > MaxSum)
                    MaxSum = ThisSum;
                else if(ThisSum < 0)
                    ThisSum = 0;
            }
        }
    }

    return MaxSum;
}


int main()
{
    srand(time(0));                     // make sure the numbers are true random
    int a[N][N];
    for(int i=0;i<N;i++){
        for(int j=0;j<N;j++){
            a[i][j] = rand()%19 - 9;    // the numbers are from -9 to 9 (a normal matrix)
            // a[i][j] = 0;             // a 0 matrix (results should be 0)
            // a[i][j] = rand()%8 - 10; // a negative matrix from -9 to -1 (results should be 0)
            printf("%3d",a[i][j]);
        }
        printf("\n");
    }
    printf("\n"); 
    // generate a random matrix of size N*N
    printf("N = %d\n",N);               // show the size of the matrix

    // The function may run too fast to be measured, 
    // so I repeat the function calls for K times.

    // test Algorithm 1,T(N)=O(N^6)
    start = clock();
    int maxsumN6 = MSS_N6(a,N);     // the max submatrix sum
    int K_N6 = 10000;               // repeat the function calls for K times
    for(int t=0;t<K_N6 - 1;t++){
        MSS_N6(a,N);
    }
    stop = clock();
    ticks = stop - start;           // the number of ticks
    duration = ((double)(stop - start))/CLK_TCK; // the total times of K calls
    once = duration/K_N6;           // the more accurate time for a single run
    printf("maxsumN6 = %d\tticks = %d\trepeat = %d \ttotal = %f secs\ttime = %f secs\n",maxsumN6,ticks,K_N6,duration,once);
    // print the result and the time


    // test Algorithm 2,T(N)=O(N^4)
    start = clock();                // details are the same as the former paragraph
    int maxsumN4 = MSS_N4(a,N);
    int K_N4 = 20000;                // K should be larger than Algorithm 1, since this one runs faster
    for(int t=0;t<K_N4;t++){
        MSS_N4(a,N);
    }
    stop = clock();
    ticks = stop - start;
    duration = ((double)(stop - start))/CLK_TCK;
    once = duration/K_N4;
    printf("maxsumN4 = %d\tticks = %d\trepeat = %d \ttotal = %f secs\ttime = %f secs\n",maxsumN4,ticks,K_N4,duration,once);


    // test Algorithm 3,T(N)=O(N^3)
    start = clock();                // details are the same as the former paragraph
    int maxsumN3 = MSS_N3(a,N);
    int K_N3 = 80000;                // K should be the largest, since this one runs faster than both Algorithm 1 and Algorithm 2
    for(int t=0;t<K_N3;t++){
        MSS_N3(a,N);
    }
    stop = clock();
    ticks = stop - start;
    duration = ((double)(stop - start))/CLK_TCK;
    once = duration/K_N3;
    printf("maxsumN3 = %d\tticks = %d\trepeat = %d \ttotal = %f secs\ttime = %f secs\n",maxsumN3,ticks,K_N3,duration,once);

    // compare the results to check if the Algorithms are right
    // compare the time to decide which one is faster 
}