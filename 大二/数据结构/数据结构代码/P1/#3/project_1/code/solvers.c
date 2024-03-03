#include "solvers.h"

void algorithm0(Ptr2Matrix matrix, Ptr2SubMatrix solution){
    int thisSum = 0;
    int MaxSum = 0;
    int n = matrix->size;
    int *a = matrix->Array;
    for(int x=0; x<n; x++){/*x represents the abscissa of the top-left corner of submatrix*/
        for(int y=0; y<n; y++){/*y represents the ordinate of the top-left corner of submatrix*/
            for(int l=1; l<=n-x; l++){/*l represents the length of the submatrix, which is its x-axis projection*/
                for(int h=1; h<=n-y; h++){/*h represents the height of the submatrix, which is its y-axis rojecting*/
                    /*get the sum of the submatrix determined by (x,y,l,h)*/
                    thisSum = 0;
                    for(int i=x; i<x+l; i++){/*represent the abscissa of an element*/
                        for(int j=y; j<y+h; j++){/*represent the ordinate of an element*/
                            thisSum += a[j*n+i];
                        }
                    }
                    if(thisSum>MaxSum){/*record the temporary submatrix with maximum sum*/
                        MaxSum = thisSum;
                        solution->h = h;
                        solution->l = l;
                        solution->x = x;
                        solution->y = y;
                    }
                }
            }
        }
    }
    solution->maxsum = MaxSum;
}

void algorithm1(Ptr2Matrix matrix, Ptr2SubMatrix solution){
    int thisSum = 0;
    int MaxSum = 0;
    int n = matrix->size;
    int *a = matrix->Array;
    int sum[n+1][n+1];/*used to record the sums which has been calculated*/

    for(int x=0; x<n; x++){/*x represents the abscissa of the top-left corner of submatrix*/
        for(int y=0; y<n; y++){/*y represents the ordinate of the top-left corner of submatrix*/
            /*initialize the sum array*/
            for(int i=0; i<n+1; i++){/*represent the abscissa of an element*/
                for(int j=0; j<n+1; j++){/*represent the ordinate of an element*/
                    sum[i][j] = 0;
                }
            }
            for(int i=x+1; i<n+1; i++){/*represent the abscissa of an element*/
                for(int j=y+1; j<n+1; j++){/*represent the ordinate of an element*/
                    sum[j][i] = a[(j-1)*n+i-1];
                }
            }
            for(int l=1; l<=n-x; l++){/*l represents the length of the submatrix, which is its x-axis projection*/
                for(int h=1; h<=n-y; h++){/*h represents the height of the submatrix, which is its y-axis rojecting*/
                    thisSum = sum[y+h][x+l]+sum[y+h-1][x+l]+sum[y+h][x+l-1]-sum[y+h-1][x+l-1];
                    sum[y+h][x+l] = thisSum;
                    if(thisSum>MaxSum){/*record the temporary submatrix with maximum sum*/
                        MaxSum = thisSum;
                        solution->h = h;
                        solution->l = l;
                        solution->x = x;
                        solution->y = y;
                    }
                }
            }
        }
    }
    solution->maxsum = MaxSum;
}

void algorithm2(Ptr2Matrix matrix, Ptr2SubMatrix solution){
    int thisSum = 0;
    int MaxSum = 0;
    int n = matrix->size;
    int *a = matrix->Array;
    int y = 0;
    int sum[n][n];/*record the sum of subsequence of a row*/
    for(int x=0; x<n; x++){
        for(int i=0; i<n; i++){/*initialize the sum array*/
            for(int j=0; j<n; j++){
                sum[i][j]=a[i*n+j];
            }
        }
        for(int j=0; j<n; j++){
            for(int i=x+1; i<n; i++){
                sum[j][i] += sum[j][i-1];
            }
        }
        for(int i=0; i<n; i++){
            thisSum = 0;
            y = 0;
            for(int j=0; j<n; j++){
                thisSum += sum[j][i];
                if(thisSum<0){
                    thisSum = 0;
                    y = j+1;
                }
                if(thisSum>MaxSum){
                    MaxSum = thisSum;
                    solution->x = x;
                    solution->y = y;
                    solution->h = j-y+1;
                    solution->l = i-x+1;
                }
            }
        }
    }
    solution->maxsum = MaxSum;
}